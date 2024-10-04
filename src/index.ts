import { wow } from 'blizzard.js';
import fs from 'node:fs';
import readline from 'node:readline';
import path from 'node:path';

const getAuctions = false;
const realms: Map<number, string> = getRealms();
const items: Map<number, RecipeItem> = new Map<number, RecipeItem>();
const itemIds: Set<number> = new Set<number>();
const cheapestauctions: Map<number, Auction> = new Map<number, Auction>();

interface RecipeItem {
    profession: string;
    recipeId: number;
    spellId: number;
    name: string;
}

interface Realm {
    id: number;
    name: string;
}

interface AuctionJson {
    _links: {
        self: {
            href: string;
        };
    };
    connected_realm: {
        href: string;
    };
    auctions: Auction[];
}

interface Auction {
    id: number;
    realm: number;
    item: {
        id: number;
        context: number;
    };
    bid: number;
    buyout: number;
    quantity: number;
    time_left: string;
}

function getRealms(): Map<number, string> {
    const map = new Map<number, string>();
    const j = JSON.parse(
        fs.readFileSync('./config/realms-top.json', 'utf8')
    ) as Realm[];
    for (const i of j) {
        map.set(i.id, i.name);
    }
    return map;
}

async function ParseAtlasLoot() {
    const reciperegex = /i\((\d+), (\d+)\);\s*--\s*(.*)/;

    for (const file of fs.readdirSync(
        'E:/Play/wow-recipes/Addons/AllTheThings-Git/.contrib/Parser/DATAS/00 - Profession DB/'
    )) {
        if (!file.endsWith('.lua')) continue;

        const profession = file.replace('.lua', '');
        const filepath = path.join(
            'E:/Play/wow-recipes/Addons/AllTheThings-Git/.contrib/Parser/DATAS/00 - Profession DB/',
            file
        );
        const fileStream = fs.createReadStream(filepath);
        const rl = readline.createInterface({
            input: fileStream,
            crlfDelay: Infinity,
        });
        for await (const line of rl) {
            const match = reciperegex.exec(line);
            if (match) {
                const recipeId = parseInt(match[1]);
                const spellId = parseInt(match[2]);
                const name = match[3];

                itemIds.add(recipeId);
                items.set(recipeId, {
                    profession,
                    recipeId,
                    spellId,
                    name,
                });
            }
        }

        console.log(file);
    }
}

function getTableRow(item: RecipeItem, auction?: Auction) {
    let s = '<tr>';
    s += `<td>${item.profession}</td>`;
    s += `<td>${item.recipeId.toString()}</td>`;
    s += `<td>${item.name}</td>`;
    s += `<td align='right'>${getGoldString(auction)}</td>`;
    s += `<td>${auction?.buyout.toString() ?? ''}</td>`;
    s += '</tr>\r\n';
    return s;
}

function getGoldString(auction?: Auction) {
    if (!auction) {
        return '';
    }
    const copper = (auction.buyout % 100).toString().padStart(2, '0');
    const silver = (Math.floor(auction.buyout / 100) % 100)
        .toString()
        .padStart(2, '0');
    const gold = Math.floor(auction.buyout / 10000).toString();

    return `${gold}g${silver}s${copper}c`;
}

console.log('Parsing all ALLTheThings files...');
await ParseAtlasLoot();
console.log('Parsed!');

if (getAuctions) {
    const wowClient = await wow.createInstance({
        key: process.env.WOW_API_KEY!,
        secret: process.env.WOW_SECRET_KEY!,
        origin: 'us', // optional
        locale: 'en_US', // optional
        token: '', // optional
    });
    for (const id of realms.keys()) {
        console.log(`${id.toString()}: '${realms.get(id) ?? ''}'`);
        try {
            const y = await wowClient.auctionHouse({ id: id });
            fs.writeFileSync(
                `./auctions/${id.toString()}.json`,
                JSON.stringify(y.data, null, 4)
            );
        } catch {
            console.log(`Error getting auctions for realm ${id.toString()}`);
        }
    }
}

for (const id of realms.keys()) {
    console.log(`Checking realm: ${realms.get(id) ?? 'Unknown'}`);
    if (!fs.existsSync(`./auctions/${id.toString()}.json`)) continue;

    const d = JSON.parse(
        fs.readFileSync(`./auctions/${id.toString()}.json`, {
            encoding: 'utf-8',
        })
    ) as AuctionJson;
    const foundauctions = d.auctions.filter((auction) =>
        itemIds.has(auction.item.id)
    );
    console.log(`Found ${foundauctions.length.toString()} matching auctions.`);
    for (const auction of foundauctions) {
        auction.realm = id;

        if (!cheapestauctions.has(auction.item.id)) {
            cheapestauctions.set(auction.item.id, auction);
        }

        if (
            (cheapestauctions.get(auction.item.id)?.buyout ??
                Number.MAX_SAFE_INTEGER) > auction.buyout
        ) {
            cheapestauctions.set(auction.item.id, auction);
        }
    }
}

fs.writeFileSync(
    './auctions.html',
    '<html><head></head><body><table><thead><tr></tr></thead><tbody>'
);

for (const [a, b] of items.entries()) {
    fs.appendFileSync(
        './auctions.html',
        getTableRow(b, cheapestauctions.get(a))
    );
}

fs.appendFileSync('./auctions.html', '</tbody></table></body></html>');

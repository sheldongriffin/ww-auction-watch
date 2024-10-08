-------------------------------------------------------------------------------
-- Module namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local addon = private.addon
if not addon then
	return
end

local constants = addon.constants
local module = addon:GetModule(private.module_name)

-------------------------------------------------------------------------------
-- Filter flags. Acquire types, and Reputation levels.
-------------------------------------------------------------------------------
local A = constants.ACQUIRE_TYPE_IDS
local F = constants.FILTER_IDS
local Q = constants.ITEM_QUALITIES
local V = constants.GAME_VERSIONS
local Z = constants.ZONE_NAMES

local FAC = constants.FACTION_IDS
local REP = constants.REP_LEVELS

module.Recipes = {}

--------------------------------------------------------------------------------------------------------------------
-- Initialize!
--------------------------------------------------------------------------------------------------------------------
function module:InitializeRecipes()
	local function AddRecipe(spellID, expansionID, quality)
		return addon:AddRecipe(module, {
			_acquireTypeData = {},
			_bitflags = {},
			_expansionID = expansionID,
			_localizedName = _G.GetSpellInfo(spellID),
			_qualityID = quality,
			_spellID = spellID,
		})
	end

	local recipe

	-- ----------------------------------------------------------------------------
	-- Classic.
	-- ----------------------------------------------------------------------------
	-- Minor Health -- 7418
	recipe = AddRecipe(7418, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 25, 30, 35)
	recipe:SetCraftedItem(38679, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Minor Health -- 7420
	recipe = AddRecipe(7420, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 70, 90, 110)
	recipe:SetCraftedItem(38766, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 47384, 47396, 47400, 47418, 47419, 47421, 47431, 48619, 49885, 53410, 57620, 65043, 85914, 86027, 93531, 98017)

	-- Runed Copper Rod -- 7421
	recipe = AddRecipe(7421, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 5, 7, 10)
	recipe:SetCraftedItem(6218, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_ROD")
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Minor Absorption -- 7426
	recipe = AddRecipe(7426, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 90, 110, 130)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 47384, 47396, 47400, 47418, 47419, 47421, 47431, 48619, 49885, 53410, 57620, 65043, 85914, 86027, 93531, 98017)

	-- Minor Dodge -- 7428
	recipe = AddRecipe(7428, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 80, 100, 120)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.TANK)
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Minor Mana -- 7443
	recipe = AddRecipe(7443, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(20, 20, 80, 100, 120)
	recipe:SetRecipeItem(6342, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Minor Stamina -- 7457
	recipe = AddRecipe(7457, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 47384, 47396, 47400, 47418, 47419, 47421, 47431, 48619, 49885, 53410, 57620, 65043, 85914, 86027, 93531, 98017)

	-- Minor Impact -- 7745
	recipe = AddRecipe(7745, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 130, 150, 170)
	recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 49885, 53410, 98017)

	-- Lesser Health -- 7748
	recipe = AddRecipe(7748, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(60, 60, 105, 125, 145)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 47384, 47396, 47400, 47418, 47419, 47421, 47431, 48619, 49885, 53410, 57620, 65043, 85914, 86027, 93531, 98017)

	-- Minor Versatility -- 7766
	recipe = AddRecipe(7766, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 105, 125, 145)
	recipe:SetRecipeItem(6344, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Minor Protection -- 7771
	recipe = AddRecipe(7771, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(70, 70, 110, 130, 150)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.TANK)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 47384, 47396, 47400, 47418, 47419, 47421, 47431, 48619, 49885, 53410, 57620, 65043, 85914, 86027, 93531, 98017)

	-- Lesser Mana -- 7776
	recipe = AddRecipe(7776, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(80, 80, 115, 135, 155)
	recipe:SetRecipeItem(6346, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddVendor(5757)
	recipe:AddLimitedVendor(3346, 1)

	-- Minor Agility -- 7779
	recipe = AddRecipe(7779, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(80, 80, 115, 135, 155)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 49885, 53410, 98017)

	-- Minor Strength -- 7782
	recipe = AddRecipe(7782, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(80, 80, 115, 135, 155)
	recipe:SetRecipeItem(6347, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.DPS)
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Minor Beastslayer -- 7786
	recipe = AddRecipe(7786, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(90, 90, 120, 140, 160)
	recipe:SetRecipeItem(6348, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Minor Striking -- 7788
	recipe = AddRecipe(7788, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(90, 90, 120, 140, 160)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 49885, 53410, 98017)

	-- Lesser Intellect -- 7793
	recipe = AddRecipe(7793, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 160, 165, 170)
	recipe:SetRecipeItem(6349, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
	recipe:AddLimitedVendor(3012, 1, 3346, 1, 5158, 1, 5758, 1)

	-- Health -- 7857
	recipe = AddRecipe(7857, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(120, 120, 145, 165, 185)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 49885, 53410, 98017)

	-- Lesser Versatility -- 7859
	recipe = AddRecipe(7859, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(130, 130, 140, 145, 150)
	recipe:SetRecipeItem(6375, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Minor Stamina -- 7863
	recipe = AddRecipe(7863, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 150, 170, 190)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 49885, 53410, 98017)

	-- Minor Agility -- 7867
	recipe = AddRecipe(7867, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(80, 80, 90, 95, 100)
	recipe:SetRecipeItem(6377, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddLimitedVendor(3012, 1, 3537, 1)

	-- Minor Stamina -- 13378
	recipe = AddRecipe(13378, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(105, 105, 115, 120, 125)
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 49885, 53410, 98017)

	-- Lesser Versatility -- 13380
	recipe = AddRecipe(13380, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(130, 130, 140, 145, 150)
	recipe:SetRecipeItem(11038, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Minor Agility -- 13419
	recipe = AddRecipe(13419, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(80, 80, 90, 95, 100)
	recipe:SetRecipeItem(11039, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.DPS)
	recipe:AddVendor(3954, 12043)
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Lesser Protection -- 13421
	recipe = AddRecipe(13421, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(115, 115, 140, 160, 180)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.TANK)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 49885, 53410, 98017)

	-- Lesser Protection -- 13464
	recipe = AddRecipe(13464, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(115, 115, 140, 160, 180)
	recipe:SetRecipeItem(11081, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddFilters(F.TANK)
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Lesser Versatility -- 13485
	recipe = AddRecipe(13485, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(130, 130, 155, 175, 195)
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 49885, 53410, 98017)

	-- Lesser Stamina -- 13501
	recipe = AddRecipe(13501, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(130, 130, 140, 145, 150)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 49885, 53410, 98017)

	-- Lesser Striking -- 13503
	recipe = AddRecipe(13503, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(140, 140, 165, 185, 205)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 49885, 53410, 98017)

	-- Lesser Impact -- 13529
	recipe = AddRecipe(13529, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(145, 145, 170, 190, 210)
	recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 49885, 53410, 98017)

	-- Lesser Strength -- 13536
	recipe = AddRecipe(13536, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(140, 140, 165, 185, 205)
	recipe:SetRecipeItem(11101, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.DPS)
	recipe:AddVendor(3954, 12043)

	-- Lesser Absorption -- 13538
	recipe = AddRecipe(13538, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(140, 140, 165, 185, 205)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 49885, 53410, 98017)

	-- Mana -- 13607
	recipe = AddRecipe(13607, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(145, 145, 170, 190, 210)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 49885, 53410, 98017)

	-- Mining -- 13612
	recipe = AddRecipe(13612, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(145, 145, 170, 190, 210)
	recipe:SetRecipeItem(11150, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddVendor(3180)

	-- Herbalism -- 13617
	recipe = AddRecipe(13617, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(145, 145, 170, 190, 210)
	recipe:SetRecipeItem(78343, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddWorldDrop(Z.ASHENVALE)

	-- Fishing -- 13620
	recipe = AddRecipe(13620, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(145, 145, 170, 190, 210)
	recipe:SetRecipeItem(11152, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddMobDrop(2374, 2375, 2376, 2377, 14276)

	-- Lesser Intellect -- 13622
	recipe = AddRecipe(13622, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 175, 195, 215)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 49885, 53410, 98017)

	-- Minor Stats -- 13626
	recipe = AddRecipe(13626, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 175, 195, 215)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 49885, 53410, 98017)

	-- Lesser Stamina -- 13631
	recipe = AddRecipe(13631, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(155, 155, 165, 170, 175)
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Defense -- 13635
	recipe = AddRecipe(13635, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(155, 155, 175, 195, 215)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.TANK)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Lesser Agility -- 13637
	recipe = AddRecipe(13637, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(160, 160, 180, 200, 220)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Greater Health -- 13640
	recipe = AddRecipe(13640, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(160, 160, 180, 200, 220)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Versatility -- 13642
	recipe = AddRecipe(13642, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(165, 165, 175, 180, 185)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Lesser Stamina -- 13644
	recipe = AddRecipe(13644, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(170, 170, 190, 210, 230)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Lesser Dodge -- 13646
	recipe = AddRecipe(13646, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(170, 170, 180, 185, 190)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.TANK)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 53410)

	-- Stamina -- 13648
	recipe = AddRecipe(13648, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(170, 170, 180, 185, 190)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Lesser Beastslayer -- 13653
	recipe = AddRecipe(13653, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 195, 215, 235)
	recipe:SetRecipeItem(11164, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Lesser Elemental Slayer -- 13655
	recipe = AddRecipe(13655, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 195, 215, 235)
	recipe:SetRecipeItem(11165, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Versatility -- 13659
	recipe = AddRecipe(13659, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(180, 180, 200, 220, 240)
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Strength -- 13661
	recipe = AddRecipe(13661, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(180, 180, 190, 195, 200)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Greater Mana -- 13663
	recipe = AddRecipe(13663, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(185, 185, 205, 225, 245)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Lesser Versatility -- 13687
	recipe = AddRecipe(13687, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(130, 130, 140, 145, 150)
	recipe:SetRecipeItem(11167, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Lesser Parry -- 13689
	recipe = AddRecipe(13689, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(195, 195, 215, 235, 255)
	recipe:SetRecipeItem(11168, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddFilters(F.TANK)
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Striking -- 13693
	recipe = AddRecipe(13693, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(195, 195, 215, 235, 255)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Impact -- 13695
	recipe = AddRecipe(13695, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(200, 200, 220, 240, 260)
	recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Skinning -- 13698
	recipe = AddRecipe(13698, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(200, 200, 220, 240, 260)
	recipe:SetRecipeItem(11166, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddMobDrop(2556, 2557, 2558)

	-- Lesser Stats -- 13700
	recipe = AddRecipe(13700, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(200, 200, 220, 240, 260)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Greater Defense -- 13746
	recipe = AddRecipe(13746, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(205, 205, 225, 245, 265)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.TANK)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Agility -- 13815
	recipe = AddRecipe(13815, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(210, 210, 220, 225, 230)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Stamina -- 13817
	recipe = AddRecipe(13817, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(460, 460, 470, 475, 480)
	recipe:SetRecipeItem(11202, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Intellect -- 13822
	recipe = AddRecipe(13822, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(210, 210, 220, 225, 230)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Stamina -- 13836
	recipe = AddRecipe(13836, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(215, 215, 225, 230, 235)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Advanced Mining -- 13841
	recipe = AddRecipe(13841, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(215, 215, 235, 255, 275)
	recipe:SetRecipeItem(11203, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:Retire()

	-- Greater Versatility -- 13846
	recipe = AddRecipe(13846, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(410, 410, 420, 425, 430)
	recipe:SetRecipeItem(11204, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Superior Health -- 13858
	recipe = AddRecipe(13858, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(220, 220, 240, 260, 280)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Advanced Herbalism -- 13868
	recipe = AddRecipe(13868, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(225, 225, 245, 265, 285)
	recipe:SetRecipeItem(11205, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:Retire()

	-- Lesser Agility -- 13882
	recipe = AddRecipe(13882, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(160, 160, 170, 175, 180)
	recipe:SetRecipeItem(71714, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.DPS)
	recipe:AddWorldDrop(Z.TANARIS)

	-- Strength -- 13887
	recipe = AddRecipe(13887, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 245, 265, 285)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Minor Speed -- 13890
	recipe = AddRecipe(13890, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 245, 265, 285)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Fiery Weapon -- 13898
	recipe = AddRecipe(13898, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(265, 265, 285, 305, 325)
	recipe:SetRecipeItem(11207, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.INSTANCE)
	recipe:AddMobDrop(9024)

	-- Greater Versatility -- 13905
	recipe = AddRecipe(13905, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(230, 230, 240, 245, 250)
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Demonslaying -- 13915
	recipe = AddRecipe(13915, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(230, 230, 250, 270, 290)
	recipe:SetRecipeItem(11208, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Superior Mana -- 13917
	recipe = AddRecipe(13917, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(230, 230, 250, 270, 290)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Dodge -- 13931
	recipe = AddRecipe(13931, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(235, 235, 255, 275, 295)
	recipe:SetRecipeItem(11223, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.TANK)
	recipe:AddLimitedVendor(989, 1)

	-- Agility -- 13935
	recipe = AddRecipe(13935, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(235, 235, 255, 275, 295)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Greater Impact -- 13937
	recipe = AddRecipe(13937, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(240, 240, 260, 280, 300)
	recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Greater Strength -- 13939
	recipe = AddRecipe(13939, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(240, 240, 250, 255, 260)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Stats -- 13941
	recipe = AddRecipe(13941, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(245, 245, 255, 260, 265)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Greater Striking -- 13943
	recipe = AddRecipe(13943, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(245, 245, 265, 285, 305)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Greater Stamina -- 13945
	recipe = AddRecipe(13945, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(245, 245, 265, 285, 305)
	recipe:SetRecipeItem(11225, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Riding Skill -- 13947
	recipe = AddRecipe(13947, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(250, 250, 270, 290, 310)
	recipe:SetRecipeItem(11226, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Minor Haste -- 13948
	recipe = AddRecipe(13948, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(250, 250, 270, 290, 310)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Lesser Magic Wand -- 14293
	recipe = AddRecipe(14293, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 75, 95, 115)
	recipe:SetCraftedItem(11287, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 47384, 47396, 47400, 47418, 47419, 47421, 47431, 48619, 49885, 53410, 57620, 65043, 85914, 86027, 93531, 98017)

	-- Greater Magic Wand -- 14807
	recipe = AddRecipe(14807, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(70, 70, 110, 130, 150)
	recipe:SetCraftedItem(11288, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 47384, 47396, 47400, 47418, 47419, 47421, 47431, 48619, 49885, 53410, 57620, 65043, 85914, 86027, 93531, 98017)

	-- Lesser Mystic Wand -- 14809
	recipe = AddRecipe(14809, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(155, 155, 175, 195, 215)
	recipe:SetCraftedItem(11289, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Greater Mystic Wand -- 14810
	recipe = AddRecipe(14810, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 195, 215, 235)
	recipe:SetCraftedItem(11290, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Smoking Heart of the Mountain -- 15596
	recipe = AddRecipe(15596, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(265, 265, 285, 305, 325)
	recipe:SetRecipeItem(45050, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(45050, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER, F.INSTANCE)
	recipe:AddMobDrop(9025)

	-- Enchanted Thorium Bar -- 17180
	recipe = AddRecipe(17180, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(250, 250, 250, 255, 260)
	recipe:SetCraftedItem(12655, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Enchanted Leather -- 17181
	recipe = AddRecipe(17181, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(250, 250, 250, 255, 260)
	recipe:SetCraftedItem(12810, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Greater Intellect -- 20008
	recipe = AddRecipe(20008, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(255, 255, 265, 270, 275)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Superior Versatility -- 20009
	recipe = AddRecipe(20009, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(270, 270, 290, 310, 330)
	recipe:SetRecipeItem(16218, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Superior Strength -- 20010
	recipe = AddRecipe(20010, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(295, 295, 310, 325, 340)
	recipe:SetRecipeItem(16246, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.DPS)
	recipe:AddMobDrop(7372)

	-- Superior Stamina -- 20011
	recipe = AddRecipe(20011, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(550, 550, 560, 565, 570)
	recipe:SetRecipeItem(16251, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Greater Agility -- 20012
	recipe = AddRecipe(20012, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(270, 270, 280, 285, 290)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Greater Strength -- 20013
	recipe = AddRecipe(20013, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(295, 295, 310, 325, 340)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Superior Defense -- 20015
	recipe = AddRecipe(20015, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(285, 285, 300, 317, 335)
	recipe:SetRecipeItem(16224, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.TANK)
	recipe:AddLimitedVendor(12022, 1)

	-- Vitality -- 20016
	recipe = AddRecipe(20016, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(280, 280, 300, 320, 340)
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Greater Stamina -- 20017
	recipe = AddRecipe(20017, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(265, 265, 285, 305, 325)
	recipe:SetRecipeItem(16217, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddVendor(4561)

	-- Greater Stamina -- 20020
	recipe = AddRecipe(20020, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(260, 260, 280, 300, 320)
	recipe:SetRecipeItem(16215, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Greater Agility -- 20023
	recipe = AddRecipe(20023, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(295, 295, 305, 310, 315)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Versatility -- 20024
	recipe = AddRecipe(20024, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(180, 180, 190, 195, 200)
	recipe:SetRecipeItem(16220, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Greater Stats -- 20025
	recipe = AddRecipe(20025, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(400, 400, 410, 415, 420)
	recipe:SetRecipeItem(16253, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddWorldDrop(Z.OUTLAND)

	-- Major Health -- 20026
	recipe = AddRecipe(20026, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(275, 275, 295, 315, 335)
	recipe:SetRecipeItem(16221, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddVendor(11189)

	-- Major Mana -- 20028
	recipe = AddRecipe(20028, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(290, 290, 305, 322, 340)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Icy Chill -- 20029
	recipe = AddRecipe(20029, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(285, 285, 300, 317, 335)
	recipe:SetRecipeItem(16223, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddMobDrop(7524)

	-- Superior Impact -- 20030
	recipe = AddRecipe(20030, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(295, 295, 310, 325, 340)
	recipe:SetRecipeItem(16247, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
	recipe:AddMobDrop(10317)

	-- Superior Striking -- 20031
	recipe = AddRecipe(20031, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(300, 300, 310, 325, 340)
	recipe:SetRecipeItem(16250, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddMobDrop(9216)

	-- Lifestealing -- 20032
	recipe = AddRecipe(20032, V.ORIG, Q.RARE)
	recipe:SetSkillLevels(300, 300, 310, 325, 340)
	recipe:SetRecipeItem(16254, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:Retire()

	-- Unholy Weapon -- 20033
	recipe = AddRecipe(20033, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(295, 295, 310, 325, 340)
	recipe:SetRecipeItem(16248, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddMobDrop(10398, 16810)

	-- Crusader -- 20034
	recipe = AddRecipe(20034, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(300, 300, 310, 325, 340)
	recipe:SetRecipeItem(16252, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.DPS)
	recipe:AddMobDrop(9451)

	-- Major Versatility -- 20035
	recipe = AddRecipe(20035, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(420, 420, 430, 435, 440)
	recipe:SetRecipeItem(16255, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddMobDrop(10469)

	-- Major Intellect -- 20036
	recipe = AddRecipe(20036, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(575, 575, 585, 590, 595)
	recipe:SetRecipeItem(16249, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddMobDrop(10422)

	-- Winter's Might -- 21931
	recipe = AddRecipe(21931, V.ORIG, Q.UNCOMMON)
	recipe:SetSkillLevels(190, 190, 210, 230, 250)
	recipe:SetRecipeItem(17725, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldEvent("WINTER_VEIL")
	recipe:AddCustom("PRESENTS")

	-- Spellpower -- 22749
	recipe = AddRecipe(22749, V.ORIG, Q.RARE)
	recipe:SetSkillLevels(385, 385, 395, 400, 405)
	recipe:SetRecipeItem(18259, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.MOLTEN_CORE)

	-- Healing Power -- 22750
	recipe = AddRecipe(22750, V.ORIG, Q.RARE)
	recipe:SetSkillLevels(300, 300, 310, 325, 340)
	recipe:SetRecipeItem(18260, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.MOLTEN_CORE)

	-- Strength -- 23799
	recipe = AddRecipe(23799, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 235, 240, 245)
	recipe:SetRecipeItem(19444, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.DPS)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.FRIENDLY, 12944)

	-- Agility -- 23800
	recipe = AddRecipe(23800, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(235, 235, 245, 250, 255)
	recipe:SetRecipeItem(19445, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.DPS)
	recipe:AddRepVendor(FAC.TIMBERMAW_HOLD, REP.HONORED, 11557)

	-- Argent Versatility -- 23801
	recipe = AddRecipe(23801, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(290, 290, 305, 322, 340)
	recipe:SetRecipeItem(19446, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddRepVendor(FAC.ARGENT_DAWN, REP.HONORED, 10856, 10857, 11536)

	-- Healing Power -- 23802
	recipe = AddRecipe(23802, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 310, 325, 340)
	recipe:SetRecipeItem(19447, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddRepVendor(FAC.ARGENT_DAWN, REP.REVERED, 10856, 10857, 11536)

	-- Mighty Versatility -- 23803
	recipe = AddRecipe(23803, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(525, 525, 535, 540, 545)
	recipe:SetRecipeItem(19448, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.HONORED, 12944)

	-- Mighty Intellect -- 23804
	recipe = AddRecipe(23804, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 310, 325, 340)
	recipe:SetRecipeItem(19449, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.REVERED, 12944)

	-- Threat -- 25072
	recipe = AddRecipe(25072, V.ORIG, Q.RARE)
	recipe:SetSkillLevels(300, 300, 310, 325, 340)
	recipe:SetRecipeItem(20726, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.RAID, F.TANK)
	recipe:AddMobDrop(15275)
	recipe:AddRepVendor(FAC.THE_SHATAR, REP.EXALTED, 21432)

	-- Shadow Power -- 25073
	recipe = AddRecipe(25073, V.ORIG, Q.RARE)
	recipe:SetSkillLevels(300, 300, 310, 325, 340)
	recipe:SetRecipeItem(20727, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.AHNQIRAJ)

	-- Frost Power -- 25074
	recipe = AddRecipe(25074, V.ORIG, Q.RARE)
	recipe:SetSkillLevels(300, 300, 310, 325, 340)
	recipe:SetRecipeItem(20728, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.AHNQIRAJ)

	-- Fire Power -- 25078
	recipe = AddRecipe(25078, V.ORIG, Q.RARE)
	recipe:SetSkillLevels(300, 300, 310, 325, 340)
	recipe:SetRecipeItem(20729, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.AHNQIRAJ)

	-- Healing Power -- 25079
	recipe = AddRecipe(25079, V.ORIG, Q.RARE)
	recipe:SetSkillLevels(300, 300, 310, 325, 340)
	recipe:SetRecipeItem(20730, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.AHNQIRAJ)

	-- Superior Agility -- 25080
	recipe = AddRecipe(25080, V.ORIG, Q.RARE)
	recipe:SetSkillLevels(415, 415, 425, 430, 435)
	recipe:SetRecipeItem(20731, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.DPS)
	recipe:AddWorldDrop(Z.AHNQIRAJ)
	recipe:AddRepVendor(FAC.KEEPERS_OF_TIME, REP.EXALTED, 21643)

	-- Stealth -- 25083
	recipe = AddRecipe(25083, V.ORIG, Q.RARE)
	recipe:SetSkillLevels(300, 300, 310, 325, 340)
	recipe:SetRecipeItem(33149, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.TANK)
	recipe:AddRepVendor(FAC.CENARION_EXPEDITION, REP.EXALTED, 17904)
	recipe:AddWorldDrop(Z.AHNQIRAJ)

	-- Dodge -- 25086
	recipe = AddRecipe(25086, V.ORIG, Q.RARE)
	recipe:SetSkillLevels(420, 420, 430, 435, 440)
	recipe:SetRecipeItem(33148, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.TANK)
	recipe:AddWorldDrop(Z.AHNQIRAJ)
	recipe:AddRepVendor(FAC.LOWER_CITY, REP.EXALTED, 21655)

	-- Minor Wizard Oil -- 25124
	recipe = AddRecipe(25124, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 55, 65, 75)
	recipe:SetRecipeItem(20758, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(20744, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_OIL")
	recipe:AddVendor(1318, 3012, 3346, 4617, 5158, 5757, 5758, 15419, 16635, 16722, 18753, 18773, 18951, 19234, 19537, 19540, 19663, 26569, 27030, 27054, 27147, 28714, 44030, 93530)

	-- Minor Mana Oil -- 25125
	recipe = AddRecipe(25125, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 160, 170, 180)
	recipe:SetRecipeItem(20752, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(20745, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_OIL")
	recipe:AddVendor(1318, 3012, 3346, 4617, 5158, 5757, 5758, 15419, 16635, 16722, 18753, 18773, 18951, 19234, 19537, 19540, 19663, 26569, 27030, 27054, 27147, 28714, 93530)

	-- Lesser Wizard Oil -- 25126
	recipe = AddRecipe(25126, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(200, 200, 210, 220, 230)
	recipe:SetRecipeItem(20753, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(20746, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_OIL")
	recipe:AddVendor(1318, 3012, 3346, 4617, 5158, 5757, 5758, 15419, 16635, 16722, 18753, 18773, 18951, 19234, 19537, 19540, 19663, 26569, 27030, 27054, 27147, 28714, 93530)

	-- Lesser Mana Oil -- 25127
	recipe = AddRecipe(25127, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(250, 250, 260, 270, 280)
	recipe:SetRecipeItem(20754, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(20747, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_OIL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddVendor(15419)

	-- Wizard Oil -- 25128
	recipe = AddRecipe(25128, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(275, 275, 285, 295, 305)
	recipe:SetRecipeItem(20755, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(20750, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_OIL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddVendor(15419)

	-- Brilliant Wizard Oil -- 25129
	recipe = AddRecipe(25129, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 310, 320, 330)
	recipe:SetRecipeItem(20756, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(20749, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_OIL")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:Retire()

	-- Brilliant Mana Oil -- 25130
	recipe = AddRecipe(25130, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 310, 320, 330)
	recipe:SetRecipeItem(20757, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(20748, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_OIL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:Retire()

	-- Agility -- 27837
	recipe = AddRecipe(27837, V.ORIG, Q.COMMON)
	recipe:SetSkillLevels(235, 235, 245, 250, 255)
	recipe:SetRecipeItem(22392, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
	recipe:AddFilters(F.DPS)
	recipe:AddRepVendor(FAC.TIMBERMAW_HOLD, REP.FRIENDLY, 11557)

	-- ----------------------------------------------------------------------------
	-- The Burning Crusade.
	-- ----------------------------------------------------------------------------
	-- Subtlety -- 25084
	recipe = AddRecipe(25084, V.TBC, Q.RARE)
	recipe:SetSkillLevels(300, 300, 310, 325, 340)
	recipe:SetRecipeItem(33150, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.TANK)
	recipe:AddMobDrop(15275)
	recipe:AddRepVendor(FAC.HONOR_HOLD, REP.EXALTED, 17657)
	recipe:AddRepVendor(FAC.THRALLMAR, REP.EXALTED, 17585)

	-- Brawn -- 27899
	recipe = AddRecipe(27899, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(5, 5, 15, 20, 25)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- Stats -- 27905
	recipe = AddRecipe(27905, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 25, 30, 35)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- Greater Dodge -- 27906
	recipe = AddRecipe(27906, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(400, 400, 410, 415, 420)
	recipe:SetRecipeItem(22530, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.TANK)
	recipe:AddMobDrop(22822, 23008)

	-- Superior Healing -- 27911
	recipe = AddRecipe(27911, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(325, 325, 335, 350, 365)
	recipe:SetRecipeItem(22531, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddRepVendor(FAC.HONOR_HOLD, REP.FRIENDLY, 17657)
	recipe:AddRepVendor(FAC.THRALLMAR, REP.FRIENDLY, 17585)

	-- Versatility Prime -- 27913
	recipe = AddRecipe(27913, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(300, 300, 310, 315, 320)
	recipe:SetRecipeItem(22532, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.OUTLAND)

	-- Fortitude -- 27914
	recipe = AddRecipe(27914, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(350, 350, 370, 375, 380)
	recipe:SetRecipeItem(22533, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.INSTANCE)
	recipe:AddMobDrop(17803)

	-- Spellpower -- 27917
	recipe = AddRecipe(27917, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(385, 385, 395, 400, 405)
	recipe:SetRecipeItem(22534, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddMobDrop(19952)

	-- Lesser Dodge -- 27944
	recipe = AddRecipe(27944, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddFilters(F.TANK)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- Intellect -- 27945
	recipe = AddRecipe(27945, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(465, 465, 475, 480, 485)
	recipe:SetRecipeItem(22539, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddVendor(18664)

	-- Parry -- 27946
	recipe = AddRecipe(27946, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(340, 340, 350, 365, 380)
	recipe:SetRecipeItem(22540, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddFilters(F.TANK)
	recipe:AddWorldDrop(Z.OUTLAND)

	-- Vitality -- 27948
	recipe = AddRecipe(27948, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(280, 280, 290, 295, 300)
	recipe:SetRecipeItem(22542, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddMobDrop(24664)

	-- Fortitude -- 27950
	recipe = AddRecipe(27950, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(320, 320, 330, 345, 360)
	recipe:SetRecipeItem(22543, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.INSTANCE)
	recipe:AddMobDrop(18317)

	-- Dexterity -- 27951
	recipe = AddRecipe(27951, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(340, 340, 350, 365, 380)
	recipe:SetRecipeItem(22544, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.DPS, F.INSTANCE)
	recipe:AddMobDrop(18521)

	-- Surefooted -- 27954
	recipe = AddRecipe(27954, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(370, 370, 380, 385, 390)
	recipe:SetRecipeItem(22545, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER, F.RAID)
	recipe:AddMobDrop(16472)

	-- Exceptional Health -- 27957
	recipe = AddRecipe(27957, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 25, 30, 35)
	recipe:SetCraftedItem(38911, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- Exceptional Stats -- 27960
	recipe = AddRecipe(27960, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(345, 345, 355, 367, 380)
	recipe:SetRecipeItem(22547, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddRepVendor(FAC.HONOR_HOLD, REP.REVERED, 17657)
	recipe:AddRepVendor(FAC.THRALLMAR, REP.REVERED, 17585)

	-- Major Armor -- 27961
	recipe = AddRecipe(27961, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.TANK)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- Major Striking -- 27967
	recipe = AddRecipe(27967, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(340, 340, 350, 365, 380)
	recipe:SetRecipeItem(22552, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddRepVendor(FAC.THE_CONSORTIUM, REP.HONORED, 20242, 23007)

	-- Major Intellect -- 27968
	recipe = AddRecipe(27968, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(575, 575, 585, 590, 595)
	recipe:SetRecipeItem(22551, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddMobDrop(20136)

	-- Savagery -- 27971
	recipe = AddRecipe(27971, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(350, 350, 370, 375, 380)
	recipe:SetRecipeItem(22554, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
	recipe:AddFilters(F.DPS, F.INSTANCE)
	recipe:AddMobDrop(17465)

	-- Potency -- 27972
	recipe = AddRecipe(27972, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(350, 350, 370, 375, 380)
	recipe:SetRecipeItem(22553, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.DPS)
	recipe:AddWorldDrop(Z.OUTLAND)

	-- Major Spellpower -- 27975
	recipe = AddRecipe(27975, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(350, 350, 370, 375, 380)
	recipe:SetRecipeItem(22555, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddMobDrop(22242, 22243, 23385)

	-- Major Agility -- 27977
	recipe = AddRecipe(27977, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(475, 475, 485, 490, 495)
	recipe:SetRecipeItem(22556, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
	recipe:AddFilters(F.DPS, F.INSTANCE)
	recipe:AddMobDrop(20880)

	-- Sunfire -- 27981
	recipe = AddRecipe(27981, V.TBC, Q.RARE)
	recipe:SetSkillLevels(375, 375, 375, 375, 390)
	recipe:SetRecipeItem(22560, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER, F.RAID)
	recipe:AddMobDrop(16524)

	-- Soulfrost -- 27982
	recipe = AddRecipe(27982, V.TBC, Q.RARE)
	recipe:SetSkillLevels(375, 375, 380, 385, 390)
	recipe:SetRecipeItem(22561, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER, F.RAID)
	recipe:AddMobDrop(15688)

	-- Mongoose -- 27984
	recipe = AddRecipe(27984, V.TBC, Q.RARE)
	recipe:SetSkillLevels(375, 375, 380, 385, 390)
	recipe:SetRecipeItem(22559, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER, F.RAID)
	recipe:AddMobDrop(15687)

	-- Spellsurge -- 28003
	recipe = AddRecipe(28003, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(360, 360, 370, 377, 385)
	recipe:SetRecipeItem(22558, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddWorldDrop(Z.OUTLAND)

	-- Battlemaster -- 28004
	recipe = AddRecipe(28004, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(360, 360, 370, 377, 385)
	recipe:SetRecipeItem(22557, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddWorldDrop(Z.OUTLAND)

	-- Superior Mana Oil -- 28016
	recipe = AddRecipe(28016, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(310, 310, 310, 320, 330)
	recipe:SetRecipeItem(22562, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(22521, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_OIL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddLimitedVendor(16635, 1, 16722, 1, 19663, 1)

	-- Superior Wizard Oil -- 28019
	recipe = AddRecipe(28019, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(340, 340, 340, 350, 360)
	recipe:SetRecipeItem(22563, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(22522, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_OIL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddLimitedVendor(16635, 1, 16722, 1, 19663, 1)

	-- Large Prismatic Shard -- 28022
	recipe = AddRecipe(28022, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(335, 335, 335, 335, 335)
	recipe:SetRecipeItem(22565, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(22449, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddLimitedVendor(16635, 1, 16722, 1, 19663, 1)

	-- Prismatic Sphere -- 28027
	recipe = AddRecipe(28027, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(22460, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- Void Sphere -- 28028
	recipe = AddRecipe(28028, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(22459, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- Major Versatility -- 33990
	recipe = AddRecipe(33990, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 30, 35, 40)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- Versatility Prime -- 33991
	recipe = AddRecipe(33991, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- Major Armor -- 33992
	recipe = AddRecipe(33992, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(345, 345, 355, 367, 380)
	recipe:SetRecipeItem(28270, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddWorldDrop(Z.OUTLAND)

	-- Blasting -- 33993
	recipe = AddRecipe(33993, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(5, 5, 15, 20, 25)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- Precise Strikes -- 33994
	recipe = AddRecipe(33994, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(360, 360, 370, 377, 385)
	recipe:SetRecipeItem(28271, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddRepVendor(FAC.CENARION_EXPEDITION, REP.REVERED, 17904)

	-- Major Strength -- 33995
	recipe = AddRecipe(33995, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- Assault -- 33996
	recipe = AddRecipe(33996, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- Major Spellpower -- 33997
	recipe = AddRecipe(33997, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(360, 360, 370, 377, 385)
	recipe:SetRecipeItem(28272, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddRepVendor(FAC.KEEPERS_OF_TIME, REP.HONORED, 21643)

	-- Major Healing -- 33999
	recipe = AddRecipe(33999, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(350, 350, 370, 375, 380)
	recipe:SetRecipeItem(28273, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddRepVendor(FAC.THE_SHATAR, REP.HONORED, 21432)

	-- Major Intellect -- 34001
	recipe = AddRecipe(34001, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(5, 5, 15, 20, 25)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- Lesser Assault -- 34002
	recipe = AddRecipe(34002, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- PvP Power -- 34003
	recipe = AddRecipe(34003, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(325, 325, 335, 350, 365)
	recipe:SetRecipeItem(28274, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddRepVendor(FAC.THE_CONSORTIUM, REP.FRIENDLY, 20242, 23007)

	-- Greater Agility -- 34004
	recipe = AddRecipe(34004, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- Cat's Swiftness -- 34007
	recipe = AddRecipe(34007, V.TBC, Q.RARE)
	recipe:SetSkillLevels(360, 360, 370, 377, 385)
	recipe:SetRecipeItem(28279, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.DPS)
	recipe:AddMobDrop(24664)

	-- Boar's Speed -- 34008
	recipe = AddRecipe(34008, V.TBC, Q.RARE)
	recipe:SetSkillLevels(360, 360, 370, 377, 385)
	recipe:SetRecipeItem(28280, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddMobDrop(24664)

	-- Major Stamina -- 34009
	recipe = AddRecipe(34009, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(325, 325, 335, 350, 365)
	recipe:SetRecipeItem(28282, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddLimitedVendor(19663, 1)

	-- Major Healing -- 34010
	recipe = AddRecipe(34010, V.TBC, Q.UNCOMMON)
	recipe:SetSkillLevels(350, 350, 370, 375, 380)
	recipe:SetRecipeItem(28281, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddRepVendor(FAC.THE_SHATAR, REP.REVERED, 21432)

	-- Small Prismatic Shard -- 42615
	recipe = AddRecipe(42615, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetCraftedItem(22448, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- Greater Agility -- 42620
	recipe = AddRecipe(42620, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(310, 310, 320, 325, 330)
	recipe:SetRecipeItem(33165, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.DPS)
	recipe:AddRepVendor(FAC.THE_VIOLET_EYE, REP.EXALTED, 18255)

	-- Executioner -- 42974
	recipe = AddRecipe(42974, V.TBC, Q.RARE)
	recipe:SetSkillLevels(375, 375, 380, 385, 390)
	recipe:SetRecipeItem(78348, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(78348, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(19536)

	-- Armor -- 44383
	recipe = AddRecipe(44383, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 40, 45, 50)
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676)

	-- Void Shatter -- 45765
	recipe = AddRecipe(45765, V.TBC, Q.COMMON)
	recipe:SetSkillLevels(375, 375, 375, 375, 375)
	recipe:SetRecipeItem(34872, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(22449, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddRepVendor(FAC.SHATTERED_SUN_OFFENSIVE, REP.HONORED, 25032)

	-- Deathfrost -- 46578
	recipe = AddRecipe(46578, V.TBC, Q.RARE)
	recipe:SetSkillLevels(350, 350, 350, 357, 365)
	recipe:SetRecipeItem(35498, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(35498, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddWorldEvent("MIDSUMMER")

	-- Greater Dodge -- 47051
	recipe = AddRecipe(47051, V.TBC, Q.RARE)
	recipe:SetSkillLevels(400, 400, 410, 415, 420)
	recipe:SetRecipeItem(35756, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.INSTANCE, F.TANK)
	recipe:AddMobDrop(24560)

	-- ----------------------------------------------------------------------------
	-- Wrath of the Lich King.
	-- ----------------------------------------------------------------------------
	-- Exceptional Mana -- 27958
	recipe = AddRecipe(27958, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Haste -- 44484
	recipe = AddRecipe(44484, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 40, 45, 50)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Precision -- 44488
	recipe = AddRecipe(44488, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.CASTER, F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Dodge -- 44489
	recipe = AddRecipe(44489, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 55, 60, 65)
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddFilters(F.TANK)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Mighty Health -- 44492
	recipe = AddRecipe(44492, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 30, 35, 40)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Superior Agility -- 44500
	recipe = AddRecipe(44500, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 30, 35, 40)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Gatherer -- 44506
	recipe = AddRecipe(44506, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Greater Versatility -- 44508
	recipe = AddRecipe(44508, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Greater Versatility -- 44509
	recipe = AddRecipe(44509, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 55, 60, 65)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Exceptional Versatility -- 44510
	recipe = AddRecipe(44510, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Greater Assault -- 44513
	recipe = AddRecipe(44513, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 30, 35, 40)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Icebreaker -- 44524
	recipe = AddRecipe(44524, V.WOTLK, Q.RARE)
	recipe:SetSkillLevels(425, 425, 435, 445, 455)
	recipe:SetRecipeItem(37344, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddVendor(32514)

	-- Greater Fortitude -- 44528
	recipe = AddRecipe(44528, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Major Agility -- 44529
	recipe = AddRecipe(44529, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Exceptional Intellect -- 44555
	recipe = AddRecipe(44555, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Greater Assault -- 44575
	recipe = AddRecipe(44575, V.WOTLK, Q.UNCOMMON)
	recipe:SetSkillLevels(395, 395, 405, 410, 415)
	recipe:SetRecipeItem(44484, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.DPS)
	recipe:AddVendor(32514)

	-- Lifeward -- 44576
	recipe = AddRecipe(44576, V.WOTLK, Q.RARE)
	recipe:SetSkillLevels(425, 425, 435, 445, 455)
	recipe:SetRecipeItem(44494, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddVendor(32514)

	-- Minor Power -- 44582
	recipe = AddRecipe(44582, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 30, 35, 40)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Greater Vitality -- 44584
	recipe = AddRecipe(44584, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 40, 45, 50)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Exceptional Armor -- 44588
	recipe = AddRecipe(44588, V.WOTLK, Q.UNCOMMON)
	recipe:SetSkillLevels(410, 410, 435, 445, 455)
	recipe:SetRecipeItem(37340, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddVendor(32514)

	-- Superior Agility -- 44589
	recipe = AddRecipe(44589, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Superior Dodge -- 44591
	recipe = AddRecipe(44591, V.WOTLK, Q.UNCOMMON)
	recipe:SetSkillLevels(490, 490, 500, 505, 510)
	recipe:SetRecipeItem(37347, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.TANK)
	recipe:AddVendor(32514)

	-- Exceptional Spellpower -- 44592
	recipe = AddRecipe(44592, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Major Versatility -- 44593
	recipe = AddRecipe(44593, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 55, 60, 65)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Scourgebane -- 44595
	recipe = AddRecipe(44595, V.WOTLK, Q.RARE)
	recipe:SetSkillLevels(430, 430, 440, 450, 460)
	recipe:SetRecipeItem(44473, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(44473, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
	recipe:AddVendor(32514)

	-- Haste -- 44598
	recipe = AddRecipe(44598, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Greater Stats -- 44616
	recipe = AddRecipe(44616, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Giant Slayer -- 44621
	recipe = AddRecipe(44621, V.WOTLK, Q.RARE)
	recipe:SetSkillLevels(430, 430, 440, 450, 460)
	recipe:SetRecipeItem(37339, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddVendor(32514)

	-- Super Stats -- 44623
	recipe = AddRecipe(44623, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Armsman -- 44625
	recipe = AddRecipe(44625, V.WOTLK, Q.UNCOMMON)
	recipe:SetSkillLevels(435, 435, 445, 455, 465)
	recipe:SetRecipeItem(44485, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.TANK)
	recipe:AddVendor(32514)

	-- Exceptional Spellpower -- 44629
	recipe = AddRecipe(44629, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 30, 35, 40)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Greater Savagery -- 44630
	recipe = AddRecipe(44630, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 25, 30, 35)
	recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Shadow Armor -- 44631
	recipe = AddRecipe(44631, V.WOTLK, Q.UNCOMMON)
	recipe:SetSkillLevels(440, 440, 450, 460, 470)
	recipe:SetRecipeItem(37349, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.DPS, F.TANK)
	recipe:AddVendor(32514)

	-- Exceptional Agility -- 44633
	recipe = AddRecipe(44633, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Greater Spellpower -- 44635
	recipe = AddRecipe(44635, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 30, 35, 40)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Dodge -- 46594
	recipe = AddRecipe(46594, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(420, 420, 430, 435, 440)
	recipe:SetRecipeItem(35500, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddFilters(F.TANK)
	recipe:AddRepVendor(FAC.SHATTERED_SUN_OFFENSIVE, REP.HONORED, 25032)

	-- Mighty Stamina -- 47672
	recipe = AddRecipe(47672, V.WOTLK, Q.UNCOMMON)
	recipe:SetSkillLevels(430, 430, 440, 450, 460)
	recipe:SetRecipeItem(44471, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddVendor(32514)

	-- Greater Dodge -- 47766
	recipe = AddRecipe(47766, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddFilters(F.TANK)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Greater Speed -- 47898
	recipe = AddRecipe(47898, V.WOTLK, Q.UNCOMMON)
	recipe:SetSkillLevels(430, 430, 440, 450, 460)
	recipe:SetRecipeItem(44472, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(32514)

	-- Wisdom -- 47899
	recipe = AddRecipe(47899, V.WOTLK, Q.UNCOMMON)
	recipe:SetSkillLevels(440, 440, 450, 460, 470)
	recipe:SetRecipeItem(44488, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddVendor(32514)

	-- Super Health -- 47900
	recipe = AddRecipe(47900, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Tuskarr's Vitality -- 47901
	recipe = AddRecipe(47901, V.WOTLK, Q.UNCOMMON)
	recipe:SetSkillLevels(440, 440, 450, 460, 470)
	recipe:SetRecipeItem(44491, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddVendor(32514)

	-- Accuracy -- 59619
	recipe = AddRecipe(59619, V.WOTLK, Q.RARE)
	recipe:SetSkillLevels(550, 550, 560, 565, 570)
	recipe:SetRecipeItem(44496, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(32514)

	-- Berserking -- 59621
	recipe = AddRecipe(59621, V.WOTLK, Q.RARE)
	recipe:SetSkillLevels(440, 440, 450, 460, 470)
	recipe:SetRecipeItem(44492, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.DPS)
	recipe:AddVendor(32514)

	-- Black Magic -- 59625
	recipe = AddRecipe(59625, V.WOTLK, Q.RARE)
	recipe:SetSkillLevels(440, 440, 450, 460, 470)
	recipe:SetRecipeItem(44495, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(32514)

	-- Assault -- 60606
	recipe = AddRecipe(60606, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Speed -- 60609
	recipe = AddRecipe(60609, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Assault -- 60616
	recipe = AddRecipe(60616, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Greater Potency -- 60621
	recipe = AddRecipe(60621, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(5, 5, 15, 20, 25)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Icewalker -- 60623
	recipe = AddRecipe(60623, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Greater Intellect -- 60653
	recipe = AddRecipe(60653, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 30, 35, 40)
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Major Agility -- 60663
	recipe = AddRecipe(60663, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 55, 60, 65)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Crusher -- 60668
	recipe = AddRecipe(60668, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Massacre -- 60691
	recipe = AddRecipe(60691, V.WOTLK, Q.RARE)
	recipe:SetSkillLevels(430, 430, 440, 450, 460)
	recipe:SetRecipeItem(44483, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
	recipe:AddFilters(F.DPS)
	recipe:AddVendor(32514)

	-- Powerful Stats -- 60692
	recipe = AddRecipe(60692, V.WOTLK, Q.UNCOMMON)
	recipe:SetSkillLevels(440, 440, 450, 460, 470)
	recipe:SetRecipeItem(44489, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddVendor(32514)

	-- Superior Potency -- 60707
	recipe = AddRecipe(60707, V.WOTLK, Q.RARE)
	recipe:SetSkillLevels(435, 435, 445, 455, 465)
	recipe:SetRecipeItem(44486, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.DPS)
	recipe:AddVendor(32514)

	-- Mighty Spellpower -- 60714
	recipe = AddRecipe(60714, V.WOTLK, Q.RARE)
	recipe:SetSkillLevels(435, 435, 445, 455, 465)
	recipe:SetRecipeItem(44487, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddVendor(32514)

	-- Greater Assault -- 60763
	recipe = AddRecipe(60763, V.WOTLK, Q.UNCOMMON)
	recipe:SetSkillLevels(395, 395, 405, 410, 415)
	recipe:SetRecipeItem(44490, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.DPS)
	recipe:AddVendor(32514)

	-- Superior Spellpower -- 60767
	recipe = AddRecipe(60767, V.WOTLK, Q.UNCOMMON)
	recipe:SetSkillLevels(440, 440, 450, 460, 470)
	recipe:SetRecipeItem(44498, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(44498, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddVendor(32514)

	-- Major Stamina -- 62256
	recipe = AddRecipe(62256, V.WOTLK, Q.RARE)
	recipe:SetSkillLevels(450, 450, 460, 470, 480)
	recipe:SetRecipeItem(44944, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(44944, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddVendor(32514)

	-- Greater Spellpower -- 62948
	recipe = AddRecipe(62948, V.WOTLK, Q.RARE)
	recipe:SetSkillLevels(395, 395, 405, 410, 415)
	recipe:SetRecipeItem(45059, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_STAFF")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddVendor(32514)

	-- Spellpower -- 62959
	recipe = AddRecipe(62959, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetItemFilterType("ENCHANTING_STAFF")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Lesser Accuracy -- 63746
	recipe = AddRecipe(63746, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 245, 265, 285)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Blade Ward -- 64441
	recipe = AddRecipe(64441, V.WOTLK, Q.EPIC)
	recipe:SetSkillLevels(450, 450, 455, 460, 465)
	recipe:SetRecipeItem(46027, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.TANK)
	recipe:AddWorldDrop(Z.ULDUAR)

	-- Blood Draining -- 64579
	recipe = AddRecipe(64579, V.WOTLK, Q.EPIC)
	recipe:SetSkillLevels(450, 450, 455, 460, 465)
	recipe:SetRecipeItem(46348, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddWorldDrop(Z.ULDUAR)

	-- Abyssal Shatter -- 69412
	recipe = AddRecipe(69412, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 25, 30, 35)
	recipe:SetCraftedItem(89738, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddTrainer(4213, 18753, 18773, 26906, 26954, 26980, 26990, 28693, 33583)

	-- Angler -- 71692
	recipe = AddRecipe(71692, V.WOTLK, Q.UNCOMMON)
	recipe:SetSkillLevels(375, 375, 385, 392, 400)
	recipe:SetRecipeItem(50406, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddMobDrop(26336, 26343, 26344)

	-- ----------------------------------------------------------------------------
	-- Cataclysm.
	-- ----------------------------------------------------------------------------
	-- Mastery -- 74132
	recipe = AddRecipe(74132, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Earthen Vitality -- 74189
	recipe = AddRecipe(74189, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Mighty Stats -- 74191
	recipe = AddRecipe(74191, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Lesser Power -- 74192
	recipe = AddRecipe(74192, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Speed -- 74193
	recipe = AddRecipe(74193, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Mending -- 74195
	recipe = AddRecipe(74195, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Avalanche -- 74197
	recipe = AddRecipe(74197, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Haste -- 74198
	recipe = AddRecipe(74198, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(5, 5, 15, 20, 25)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Haste -- 74199
	recipe = AddRecipe(74199, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(5, 5, 15, 20, 25)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Stamina -- 74200
	recipe = AddRecipe(74200, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Critical Strike -- 74201
	recipe = AddRecipe(74201, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Intellect -- 74202
	recipe = AddRecipe(74202, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 25, 30, 35)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Protection -- 74207
	recipe = AddRecipe(74207, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 25, 30, 35)
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Elemental Slayer -- 74211
	recipe = AddRecipe(74211, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 30, 35, 40)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Exceptional Strength -- 74212
	recipe = AddRecipe(74212, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 30, 35, 40)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Major Agility -- 74213
	recipe = AddRecipe(74213, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Mighty Armor -- 74214
	recipe = AddRecipe(74214, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Greater Haste -- 74220
	recipe = AddRecipe(74220, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 40, 45, 50)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Hurricane -- 74223
	recipe = AddRecipe(74223, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 40, 45, 50)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Heartsong -- 74225
	recipe = AddRecipe(74225, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Mastery -- 74226
	recipe = AddRecipe(74226, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Superior Dodge -- 74229
	recipe = AddRecipe(74229, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.TANK)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Critical Strike -- 74230
	recipe = AddRecipe(74230, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Exceptional Versatility -- 74231
	recipe = AddRecipe(74231, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 55, 60, 65)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Precision -- 74232
	recipe = AddRecipe(74232, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 55, 60, 65)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Protection -- 74234
	recipe = AddRecipe(74234, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Superior Intellect -- 74235
	recipe = AddRecipe(74235, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Precision -- 74236
	recipe = AddRecipe(74236, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(55, 55, 65, 70, 75)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Exceptional Versatility -- 74237
	recipe = AddRecipe(74237, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(55, 55, 65, 70, 75)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Mastery -- 74238
	recipe = AddRecipe(74238, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Greater Haste -- 74239
	recipe = AddRecipe(74239, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Greater Intellect -- 74240
	recipe = AddRecipe(74240, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Power Torrent -- 74242
	recipe = AddRecipe(74242, V.CATA, Q.RARE)
	recipe:SetSkillLevels(525, 525, 525, 532, 540)
	recipe:SetRecipeItem(52733, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddVendor(1318, 3012, 3346, 4617, 5158, 16635, 16722, 50134, 50146)

	-- Windwalk -- 74244
	recipe = AddRecipe(74244, V.CATA, Q.RARE)
	recipe:SetSkillLevels(525, 525, 525, 532, 540)
	recipe:SetRecipeItem(52735, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.TANK)
	recipe:AddVendor(1318, 3012, 3346, 4617, 5158, 16635, 16722, 50134, 50146)

	-- Landslide -- 74246
	recipe = AddRecipe(74246, V.CATA, Q.RARE)
	recipe:SetSkillLevels(525, 525, 525, 532, 540)
	recipe:SetRecipeItem(52736, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.DPS)
	recipe:AddVendor(1318, 3012, 3346, 4617, 5158, 16635, 16722, 50134, 50146)

	-- Greater Critical Strike -- 74247
	recipe = AddRecipe(74247, V.CATA, Q.UNCOMMON)
	recipe:SetSkillLevels(525, 525, 525, 532, 540)
	recipe:SetRecipeItem(52737, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(1318, 3012, 3346, 4617, 5158, 16635, 16722, 50134, 50146)

	-- Greater Critical Strike -- 74248
	recipe = AddRecipe(74248, V.CATA, Q.UNCOMMON)
	recipe:SetSkillLevels(525, 525, 525, 532, 540)
	recipe:SetRecipeItem(52738, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(1318, 3012, 3346, 4617, 5158, 16635, 16722, 50134, 50146)

	-- Peerless Stats -- 74250
	recipe = AddRecipe(74250, V.CATA, Q.UNCOMMON)
	recipe:SetSkillLevels(525, 525, 525, 532, 540)
	recipe:SetRecipeItem(52739, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddVendor(1318, 3012, 3346, 4617, 5158, 16635, 16722, 50134, 50146)

	-- Greater Stamina -- 74251
	recipe = AddRecipe(74251, V.CATA, Q.UNCOMMON)
	recipe:SetSkillLevels(525, 525, 525, 532, 540)
	recipe:SetRecipeItem(52740, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddVendor(1318, 3012, 3346, 4617, 5158, 16635, 16722, 50134, 50146)

	-- Assassin's Step -- 74252
	recipe = AddRecipe(74252, V.CATA, Q.UNCOMMON)
	recipe:SetSkillLevels(525, 525, 525, 532, 540)
	recipe:SetRecipeItem(64411, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.DPS)
	recipe:AddVendor(1318, 3012, 3346, 4617, 5158, 16635, 16722, 50134, 50146)

	-- Lavawalker -- 74253
	recipe = AddRecipe(74253, V.CATA, Q.UNCOMMON)
	recipe:SetSkillLevels(525, 525, 525, 532, 540)
	recipe:SetRecipeItem(64412, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddVendor(1318, 3012, 3346, 4617, 5158, 16635, 16722, 50134, 50146)

	-- Mighty Strength -- 74254
	recipe = AddRecipe(74254, V.CATA, Q.UNCOMMON)
	recipe:SetSkillLevels(525, 525, 525, 532, 540)
	recipe:SetRecipeItem(64415, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(64415, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.DPS)
	recipe:AddVendor(1318, 3012, 3346, 4617, 5158, 16635, 16722, 50134, 50146)

	-- Greater Mastery -- 74255
	recipe = AddRecipe(74255, V.CATA, Q.UNCOMMON)
	recipe:SetSkillLevels(525, 525, 525, 532, 540)
	recipe:SetRecipeItem(64414, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddVendor(1318, 3012, 3346, 4617, 5158, 16635, 16722, 50134, 50146)

	-- Greater Speed -- 74256
	recipe = AddRecipe(74256, V.CATA, Q.UNCOMMON)
	recipe:SetSkillLevels(525, 525, 525, 532, 540)
	recipe:SetRecipeItem(64413, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(1318, 3012, 3346, 4617, 5158, 16635, 16722, 50134, 50146)

	-- Enchanted Lantern -- 93841
	recipe = AddRecipe(93841, V.CATA, Q.RARE)
	recipe:SetSkillLevels(525, 525, 525, 525, 525)
	recipe:SetRecipeItem(67308, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(67274, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("ENCHANTING_PET")
	recipe:AddVendor(3012, 3346, 4617, 16635, 50146)

	-- Magic Lamp -- 93843
	recipe = AddRecipe(93843, V.CATA, Q.RARE)
	recipe:SetSkillLevels(525, 525, 525, 525, 525)
	recipe:SetRecipeItem(67312, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(67275, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("ENCHANTING_PET")
	recipe:AddVendor(1318, 5158, 16722, 50134)

	-- Mighty Agility -- 95471
	recipe = AddRecipe(95471, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 30, 35, 40)
	recipe:SetItemFilterType("ENCHANTING_2H_WEAPON")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 19251, 19252, 53410)

	-- Major Strength -- 96261
	recipe = AddRecipe(96261, V.CATA, Q.RARE)
	recipe:SetSkillLevels(340, 340, 350, 355, 360)
	recipe:SetRecipeItem(68788, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.DPS)
	recipe:AddWorldDrop(Z.DEEPHOLM, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Mighty Intellect -- 96262
	recipe = AddRecipe(96262, V.CATA, Q.RARE)
	recipe:SetSkillLevels(515, 515, 525, 532, 540)
	recipe:SetRecipeItem(68789, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddWorldDrop(Z.DEEPHOLM, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Agility -- 96264
	recipe = AddRecipe(96264, V.CATA, Q.RARE)
	recipe:SetSkillLevels(235, 235, 245, 250, 255)
	recipe:SetRecipeItem(68787, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.DPS)
	recipe:AddWorldDrop(Z.DEEPHOLM, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Maelstrom Shatter -- 104698
	recipe = AddRecipe(104698, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(65, 65, 75, 80, 85)
	recipe:SetCraftedItem(52721, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 16633, 16725, 18753, 18773, 53410)

	-- ----------------------------------------------------------------------------
	-- Mists of Pandaria.
	-- ----------------------------------------------------------------------------
	-- Mastery -- 104338
	recipe = AddRecipe(104338, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Major Dodge -- 104385
	recipe = AddRecipe(104385, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.TANK)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Super Intellect -- 104389
	recipe = AddRecipe(104389, V.MOP, Q.RARE)
	recipe:SetSkillLevels(600, 600, 600, 600, 615)
	recipe:SetRecipeItem(84559, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddRepVendor(FAC.THE_AUGUST_CELESTIALS, REP.REVERED, 64001, 64032)

	-- Exceptional Strength -- 104390
	recipe = AddRecipe(104390, V.MOP, Q.RARE)
	recipe:SetSkillLevels(470, 470, 480, 485, 490)
	recipe:SetRecipeItem(84561, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.DPS)
	recipe:AddRepVendor(FAC.THE_AUGUST_CELESTIALS, REP.REVERED, 64001, 64032)

	-- Greater Agility -- 104391
	recipe = AddRecipe(104391, V.MOP, Q.RARE)
	recipe:SetSkillLevels(310, 310, 320, 325, 330)
	recipe:SetRecipeItem(84557, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddFilters(F.DPS)
	recipe:AddRepVendor(FAC.THE_AUGUST_CELESTIALS, REP.REVERED, 64001, 64032)

	-- Super Armor -- 104392
	recipe = AddRecipe(104392, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Mighty Versatility -- 104393
	recipe = AddRecipe(104393, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Glorious Stats -- 104395
	recipe = AddRecipe(104395, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Superior Stamina -- 104397
	recipe = AddRecipe(104397, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Accuracy -- 104398
	recipe = AddRecipe(104398, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Greater Protection -- 104401
	recipe = AddRecipe(104401, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Superior Intellect -- 104403
	recipe = AddRecipe(104403, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Superior Critical Strike -- 104404
	recipe = AddRecipe(104404, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Greater Haste -- 104407
	recipe = AddRecipe(104407, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Greater Precision -- 104408
	recipe = AddRecipe(104408, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Blurred Speed -- 104409
	recipe = AddRecipe(104409, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Pandaren's Step -- 104414
	recipe = AddRecipe(104414, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Greater Haste -- 104416
	recipe = AddRecipe(104416, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Superior Haste -- 104417
	recipe = AddRecipe(104417, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Super Strength -- 104419
	recipe = AddRecipe(104419, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Superior Mastery -- 104420
	recipe = AddRecipe(104420, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Windsong -- 104425
	recipe = AddRecipe(104425, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Jade Spirit -- 104427
	recipe = AddRecipe(104427, V.MOP, Q.RARE)
	recipe:SetSkillLevels(600, 600, 600, 600, 615)
	recipe:SetRecipeItem(84583, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddRepVendor(FAC.SHADO_PAN, REP.REVERED, 64595)

	-- Elemental Force -- 104430
	recipe = AddRecipe(104430, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Dancing Steel -- 104434
	recipe = AddRecipe(104434, V.MOP, Q.RARE)
	recipe:SetSkillLevels(600, 600, 600, 600, 615)
	recipe:SetRecipeItem(84584, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.DPS)
	recipe:AddRepVendor(FAC.SHADO_PAN, REP.REVERED, 64595)

	-- Colossus -- 104440
	recipe = AddRecipe(104440, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- River's Song -- 104442
	recipe = AddRecipe(104442, V.MOP, Q.RARE)
	recipe:SetSkillLevels(600, 600, 600, 600, 615)
	recipe:SetRecipeItem(84580, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.TANK)
	recipe:AddRepVendor(FAC.SHADO_PAN, REP.REVERED, 64595)

	-- Major Intellect -- 104445
	recipe = AddRecipe(104445, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Mysterious Essence -- 116497
	recipe = AddRecipe(116497, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(74250, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Ethereal Shard -- 116498
	recipe = AddRecipe(116498, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(74247, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Sha Crystal -- 116499
	recipe = AddRecipe(116499, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(74248, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Mysterious Diffusion -- 118237
	recipe = AddRecipe(118237, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetCraftedItem(74249, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Ethereal Shatter -- 118238
	recipe = AddRecipe(118238, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetCraftedItem(74250, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Sha Shatter -- 118239
	recipe = AddRecipe(118239, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(74247, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- Greater Parry -- 130758
	recipe = AddRecipe(130758, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("ENCHANTING_SHIELD")
	recipe:AddFilters(F.TANK)
	recipe:AddTrainer(4213, 18753, 18773, 19251, 19252, 65127)

	-- ----------------------------------------------------------------------------
	-- Warlords of Draenor.
	-- ----------------------------------------------------------------------------
	-- Breath of Critical Strike -- 158877
	recipe = AddRecipe(158877, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 625, 627, 630)
	recipe:SetRecipeItem(118394, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Breath of Haste -- 158878
	recipe = AddRecipe(158878, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 625, 627, 630)
	recipe:SetRecipeItem(118429, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Breath of Mastery -- 158879
	recipe = AddRecipe(158879, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 625, 627, 630)
	recipe:SetRecipeItem(118430, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Breath of Versatility -- 158881
	recipe = AddRecipe(158881, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 625, 627, 630)
	recipe:SetRecipeItem(118432, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Gift of Critical Strike -- 158884
	recipe = AddRecipe(158884, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118433, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Gift of Haste -- 158885
	recipe = AddRecipe(158885, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118434, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Gift of Mastery -- 158886
	recipe = AddRecipe(158886, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118435, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Gift of Versatility -- 158889
	recipe = AddRecipe(158889, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118437, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Breath of Critical Strike -- 158892
	recipe = AddRecipe(158892, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 625, 627, 630)
	recipe:SetRecipeItem(118438, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Breath of Haste -- 158893
	recipe = AddRecipe(158893, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 625, 627, 630)
	recipe:SetRecipeItem(118439, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Breath of Mastery -- 158894
	recipe = AddRecipe(158894, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 625, 627, 630)
	recipe:SetRecipeItem(118440, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Breath of Versatility -- 158896
	recipe = AddRecipe(158896, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 625, 627, 630)
	recipe:SetRecipeItem(118442, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Gift of Critical Strike -- 158899
	recipe = AddRecipe(158899, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118443, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Gift of Haste -- 158900
	recipe = AddRecipe(158900, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118444, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Gift of Mastery -- 158901
	recipe = AddRecipe(158901, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118445, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Gift of Versatility -- 158903
	recipe = AddRecipe(158903, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118447, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Breath of Critical Strike -- 158907
	recipe = AddRecipe(158907, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 625, 627, 630)
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- Breath of Haste -- 158908
	recipe = AddRecipe(158908, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 625, 627, 630)
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- Breath of Mastery -- 158909
	recipe = AddRecipe(158909, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 625, 627, 630)
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- Breath of Versatility -- 158911
	recipe = AddRecipe(158911, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 625, 627, 630)
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- Gift of Critical Strike -- 158914
	recipe = AddRecipe(158914, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118453, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Gift of Haste -- 158915
	recipe = AddRecipe(158915, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118454, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Gift of Mastery -- 158916
	recipe = AddRecipe(158916, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118455, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Gift of Versatility -- 158918
	recipe = AddRecipe(158918, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118457, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Mark of the Thunderlord -- 159235
	recipe = AddRecipe(159235, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118458, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Mark of the Shattered Hand -- 159236
	recipe = AddRecipe(159236, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- Mark of Warsong -- 159671
	recipe = AddRecipe(159671, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118460, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Mark of the Frostwolf -- 159672
	recipe = AddRecipe(159672, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118461, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Mark of Shadowmoon -- 159673
	recipe = AddRecipe(159673, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118462, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Mark of Blackrock -- 159674
	recipe = AddRecipe(159674, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118463, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Enchanted Dust -- 162948
	recipe = AddRecipe(162948, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 50, 100, 150)
	recipe:SetCraftedItem(112321, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- Luminous Shard -- 169091
	recipe = AddRecipe(169091, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 625, 627, 630)
	recipe:SetCraftedItem(111245, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- Temporal Crystal -- 169092
	recipe = AddRecipe(169092, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 600, 800, 1000)
	recipe:SetCraftedItem(113588, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- Mark of Bleeding Hollow -- 173323
	recipe = AddRecipe(173323, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(118467, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddVendor(77354, 79821, 86045, 87022)

	-- Secrets of Draenor Enchanting -- 177043
	recipe = AddRecipe(177043, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 600, 650, 700)
	recipe:SetCraftedItem(119293, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- Temporal Binding -- 182129
	recipe = AddRecipe(182129, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 700, 700)
	recipe:SetRecipeItem(122711, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(113588, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddVendor(91020, 91029)

	-- ----------------------------------------------------------------------------
	-- Legion.
	-- ----------------------------------------------------------------------------
	-- Word of Critical Strike -- 190866
	recipe = AddRecipe(190866, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 710, 720)
	recipe:SetRecipeItem(128566, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128537, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddQuest(39905)

	-- Word of Haste -- 190867
	recipe = AddRecipe(190867, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 710, 720)
	recipe:SetRecipeItem(128563, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128538, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddQuest(39905)

	-- Word of Mastery -- 190868
	recipe = AddRecipe(190868, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 710, 720)
	recipe:SetRecipeItem(128564, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128539, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddQuest(39905)

	-- Word of Versatility -- 190869
	recipe = AddRecipe(190869, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 710, 720)
	recipe:SetRecipeItem(128565, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128540, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddQuest(39875)

	-- Binding of Critical Strike -- 190870
	recipe = AddRecipe(190870, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128562, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128541, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddQuest(39923)

	-- Binding of Haste -- 190871
	recipe = AddRecipe(190871, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128567, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128542, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddQuest(39923)

	-- Binding of Mastery -- 190872
	recipe = AddRecipe(190872, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128568, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128543, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddQuest(39923)

	-- Binding of Versatility -- 190873
	recipe = AddRecipe(190873, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128569, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128544, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddQuest(39923)

	-- Word of Strength -- 190874
	recipe = AddRecipe(190874, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 710, 720)
	recipe:SetRecipeItem(128570, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128545, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddQuest(39883)

	-- Word of Agility -- 190875
	recipe = AddRecipe(190875, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 710, 720)
	recipe:SetRecipeItem(128571, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128546, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddQuest(39883)

	-- Word of Intellect -- 190876
	recipe = AddRecipe(190876, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 710, 720)
	recipe:SetRecipeItem(128572, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128547, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddQuest(39883)

	-- Binding of Strength -- 190877
	recipe = AddRecipe(190877, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128573, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128548, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddVendor(99420)

	-- Binding of Agility -- 190878
	recipe = AddRecipe(190878, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128574, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128549, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddVendor(99420)

	-- Binding of Intellect -- 190879
	recipe = AddRecipe(190879, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128575, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128550, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddVendor(99420)

	-- Mark of the Claw -- 190892
	recipe = AddRecipe(190892, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 730, 740)
	recipe:SetRecipeItem(128576, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128551, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddQuest(39910)

	-- Mark of the Distant Army -- 190893
	recipe = AddRecipe(190893, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 730, 740)
	recipe:SetRecipeItem(128577, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128552, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddQuest(39914)

	-- Mark of the Hidden Satyr -- 190894
	recipe = AddRecipe(190894, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 730, 740)
	recipe:SetRecipeItem(128578, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128553, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddQuest(39918)

	-- Boon of the Scavenger -- 190954
	recipe = AddRecipe(190954, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetCraftedItem(128554, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_SHOULDER")
	recipe:AddQuest(39882)

	-- Legion Herbalism -- 190988
	recipe = AddRecipe(190988, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(128617, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128558, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddVendor(98367)

	-- Legion Mining -- 190989
	recipe = AddRecipe(190989, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(128618, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128559, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddVendor(98367)

	-- Legion Skinning -- 190990
	recipe = AddRecipe(190990, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(128619, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128560, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddVendor(98367)

	-- Legion Surveying -- 190991
	recipe = AddRecipe(190991, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(128620, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128561, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddVendor(98367)

	-- Word of Critical Strike -- 190992
	recipe = AddRecipe(190992, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 730, 740)
	recipe:SetRecipeItem(128579, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128537, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddVendor(93530)

	-- Word of Haste -- 190993
	recipe = AddRecipe(190993, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 730, 740)
	recipe:SetRecipeItem(128580, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128538, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddVendor(93530)

	-- Word of Mastery -- 190994
	recipe = AddRecipe(190994, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 730, 740)
	recipe:SetRecipeItem(128581, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128539, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddVendor(93530)

	-- Word of Versatility -- 190995
	recipe = AddRecipe(190995, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128582, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128540, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddVendor(93530)

	-- Binding of Critical Strike -- 190996
	recipe = AddRecipe(190996, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128583, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128541, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddVendor(93530)

	-- Binding of Haste -- 190997
	recipe = AddRecipe(190997, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128584, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128542, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddVendor(93530)

	-- Binding of Mastery -- 190998
	recipe = AddRecipe(190998, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128585, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(12843, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddVendor(93530)

	-- Binding of Versatility -- 190999
	recipe = AddRecipe(190999, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128586, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128544, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddVendor(93530)

	-- Word of Strength -- 191000
	recipe = AddRecipe(191000, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128587, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128545, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddVendor(93530)

	-- Word of Agility -- 191001
	recipe = AddRecipe(191001, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128588, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128546, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddRepVendor(FAC.DREAMWEAVERS, REP.HONORED, 106901)

	-- Word of Intellect -- 191002
	recipe = AddRecipe(191002, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128589, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128547, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddVendor(93530)

	-- Binding of Strength -- 191003
	recipe = AddRecipe(191003, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128590, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128548, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddVendor(99420)

	-- Binding of Agility -- 191004
	recipe = AddRecipe(191004, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128591, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128549, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddVendor(93530)

	-- Binding of Intellect -- 191005
	recipe = AddRecipe(191005, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128592, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128550, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddVendor(99420)

	-- Mark of the Claw -- 191006
	recipe = AddRecipe(191006, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128593, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128551, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddRepVendor(FAC.DREAMWEAVERS, REP.EXALTED, 106901)

	-- Mark of the Distant Army -- 191007
	recipe = AddRecipe(191007, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128577, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128552, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddFilters(F.INSTANCE)
	recipe:AddMobDrop(104218)

	-- Mark of the Hidden Satyr -- 191008
	recipe = AddRecipe(191008, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128578, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128553, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddFilters(F.INSTANCE)
	recipe:AddMobDrop(101403)

	-- Word of Critical Strike -- 191009
	recipe = AddRecipe(191009, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128596, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128537, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddQuest(41669)

	-- Word of Haste -- 191010
	recipe = AddRecipe(191010, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128597, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128538, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddQuest(41672)

	-- Word of Mastery -- 191011
	recipe = AddRecipe(191011, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128598, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128539, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddQuest(41673)

	-- Word of Versatility -- 191012
	recipe = AddRecipe(191012, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128599, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128540, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddRepVendor(FAC.DREAMWEAVERS, REP.EXALTED, 106901)

	-- Binding of Critical Strike -- 191013
	recipe = AddRecipe(191013, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(128600, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128541, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddVendor(97140, 115736)

	-- Binding of Haste -- 191014
	recipe = AddRecipe(191014, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(128601, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128542, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddVendor(106901)

	-- Binding of Mastery -- 191015
	recipe = AddRecipe(191015, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(128602, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(12843, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddVendor(97140, 115736)

	-- Binding of Versatility -- 191016
	recipe = AddRecipe(191016, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(128603, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128544, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddVendor(97140, 115736)

	-- Word of Strength -- 191017
	recipe = AddRecipe(191017, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128604, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128545, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddQuest(41671)

	-- Word of Agility -- 191018
	recipe = AddRecipe(191018, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128605, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128546, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddQuest(41670)

	-- Word of Intellect -- 191019
	recipe = AddRecipe(191019, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(128606, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128547, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddQuest(41674)

	-- Binding of Strength -- 191020
	recipe = AddRecipe(191020, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128607, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128548, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddFilters(F.INSTANCE)
	recipe:AddMobDrop(95888)
	recipe:AddCustom("MYTHIC")

	-- Binding of Agility -- 191021
	recipe = AddRecipe(191021, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128608, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128549, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddRepVendor(FAC.DREAMWEAVERS, REP.EXALTED, 106901)

	-- Binding of Intellect -- 191022
	recipe = AddRecipe(191022, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128609, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128550, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddRepVendor(FAC.THE_NIGHTFALLEN, REP.EXALTED, 97140, 115736)

	-- Mark of the Claw -- 191023
	recipe = AddRecipe(191023, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128610, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128551, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddWorldDrop(Z.BROKEN_ISLES)

	-- Mark of the Distant Army -- 191024
	recipe = AddRecipe(191024, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128611, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128552, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(111000)

	-- Mark of the Hidden Satyr -- 191025
	recipe = AddRecipe(191025, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(128610, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128553, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(103769)

	-- Enchanted Cauldron -- 191074
	recipe = AddRecipe(191074, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 720, 740)
	recipe:SetRecipeItem(128621, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128533, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_PET")
	recipe:AddVendor(98367)

	-- Enchanted Torch -- 191075
	recipe = AddRecipe(191075, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 720, 740)
	recipe:SetRecipeItem(128622, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128534, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_PET")
	recipe:AddVendor(98367)

	-- Enchanted Pen -- 191076
	recipe = AddRecipe(191076, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 720, 740)
	recipe:SetRecipeItem(128623, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128535, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_PET")
	recipe:AddQuest(39904)

	-- Leylight Brazier -- 191078
	recipe = AddRecipe(191078, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 720, 740)
	recipe:SetRecipeItem(128625, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128536, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_TOY")
	recipe:AddVendor(97363)

	-- Soul Fibril -- 209507
	recipe = AddRecipe(209507, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 720, 740)
	recipe:SetRecipeItem(136702, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(136689, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RELIC")
	recipe:AddVendor(107109)

	-- Immaculate Fibril -- 209509
	recipe = AddRecipe(209509, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(136704, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(136691, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RELIC")
	recipe:AddWorldDrop(Z.BROKEN_ISLES)

	-- Tome of Illusions: Azeroth -- 217637
	recipe = AddRecipe(217637, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(275, 275, 290, 297, 305)
	recipe:SetCraftedItem(138787, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_ILLUSION")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 47419, 47421, 49885, 53410, 57620, 65043)

	-- Tome of Illusions: Outland -- 217641
	recipe = AddRecipe(217641, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(138789, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_ILLUSION")
	recipe:AddTrainer(4213, 7949, 11072, 11073, 11074, 16160, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676, 47419, 47421, 49885, 57620, 65043)

	-- Tome of Illusions: Northrend -- 217644
	recipe = AddRecipe(217644, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(138790, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_ILLUSION")
	recipe:AddTrainer(4213, 7949, 11072, 11073, 11074, 16160, 18753, 18773, 19251, 19252, 26906, 26954, 26980, 26990, 28693, 33583, 47419, 47421, 49885, 57620, 65043)

	-- Tome of Illusions: Cataclysm -- 217645
	recipe = AddRecipe(217645, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(138791, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_ILLUSION")
	recipe:AddTrainer(1317, 3011, 3345, 4213, 4616, 5157, 5695, 7949, 11072, 11073, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 47419, 47421, 49885, 53410, 57620, 65043)

	-- Tome of Illusions: Elemental Lords -- 217649
	recipe = AddRecipe(217649, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(525, 525, 525, 532, 540)
	recipe:SetCraftedItem(138792, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_ILLUSION")
	recipe:AddQuest(42971)

	-- Tome of Illusions: Pandaria -- 217650
	recipe = AddRecipe(217650, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(138793, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_ILLUSION")
	recipe:AddTrainer(4213, 7949, 11072, 11073, 11074, 16160, 18753, 18773, 19251, 19252, 47419, 47421, 49885, 57620, 65043, 65127)

	-- Tome of Illusions: Secrets of the Shado-Pan -- 217651
	recipe = AddRecipe(217651, V.LEGION, Q.RARE)
	recipe:SetSkillLevels(575, 575, 615, 615, 615)
	recipe:SetRecipeItem(138877, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(138794, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_ILLUSION")
	recipe:AddRepVendor(FAC.SHADO_PAN, REP.REVERED, 64595)

	-- Tome of Illusions: Draenor -- 217655
	recipe = AddRecipe(217655, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(138882, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(138795, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_ILLUSION")
	recipe:AddVendor(86045, 87022)

	-- Ley Shatter -- 224199
	recipe = AddRecipe(224199, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 702, 705)
	recipe:SetRecipeItem(140634, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(124440, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddVendor(93530)

	-- Mark of the Heavy Hide -- 228402
	recipe = AddRecipe(228402, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 730, 740)
	recipe:SetRecipeItem(141911, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(141908, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddQuest(39910)

	-- Mark of the Heavy Hide -- 228403
	recipe = AddRecipe(228403, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(141914, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(141908, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddWorldDrop(Z.BROKEN_ISLES)

	-- Mark of the Heavy Hide -- 228404
	recipe = AddRecipe(228404, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(141917, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(141908, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(100497)

	-- Mark of the Trained Soldier -- 228405
	recipe = AddRecipe(228405, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 730, 740)
	recipe:SetRecipeItem(141912, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(141909, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddQuest(39910)

	-- Mark of the Trained Soldier -- 228406
	recipe = AddRecipe(228406, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(141915, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(141909, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddWorldDrop(Z.BROKEN_ISLES)

	-- Mark of the Trained Soldier -- 228407
	recipe = AddRecipe(228407, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(141918, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(141909, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddWorldDrop(Z.BROKEN_ISLES)

	-- Mark of the Ancient Priestess -- 228408
	recipe = AddRecipe(228408, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 730, 740)
	recipe:SetRecipeItem(141913, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(141910, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddQuest(39918)

	-- Mark of the Ancient Priestess -- 228409
	recipe = AddRecipe(228409, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(141916, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(141910, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddMobDrop(96028)

	-- Mark of the Ancient Priestess -- 228410
	recipe = AddRecipe(228410, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(141919, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(141910, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddWorldDrop(Z.BROKEN_ISLES)

	-- Mark of the Master -- 235695
	recipe = AddRecipe(235695, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 730, 740)
	recipe:SetRecipeItem(144308, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(144304, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddVendor(107139)

	-- Mark of the Versatile -- 235696
	recipe = AddRecipe(235696, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 730, 740)
	recipe:SetRecipeItem(144311, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(144305, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddVendor(107139)

	-- Mark of the Quick -- 235697
	recipe = AddRecipe(235697, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 730, 740)
	recipe:SetRecipeItem(144314, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(144306, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddVendor(107139)

	-- Mark of the Deadly -- 235698
	recipe = AddRecipe(235698, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 730, 740)
	recipe:SetRecipeItem(144317, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(144307, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddVendor(107139)

	-- Mark of the Master -- 235699
	recipe = AddRecipe(235699, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 730, 740, 750)
	recipe:SetRecipeItem(144309, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(144304, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddWorldDrop(Z.STORMHEIM)

	-- Mark of the Versatile -- 235700
	recipe = AddRecipe(235700, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 730, 740, 750)
	recipe:SetRecipeItem(144312, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(144305, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddWorldDrop(Z.HIGHMOUNTAIN)

	-- Mark of the Quick -- 235701
	recipe = AddRecipe(235701, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 730, 740, 750)
	recipe:SetRecipeItem(144315, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(144306, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddWorldDrop(Z.AZSUNA)

	-- Mark of the Deadly -- 235702
	recipe = AddRecipe(235702, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 730, 740, 750)
	recipe:SetRecipeItem(144318, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(144307, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddWorldDrop(Z.VALSHARAH)

	-- Mark of the Master -- 235703
	recipe = AddRecipe(235703, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(144310, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(144304, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddQuest(42234)

	-- Mark of the Versatile -- 235704
	recipe = AddRecipe(235704, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(144313, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(144305, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddQuest(42233)

	-- Mark of the Quick -- 235705
	recipe = AddRecipe(235705, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(144316, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(144306, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddQuest(42420)

	-- Mark of the Deadly -- 235706
	recipe = AddRecipe(235706, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(144319, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(144307, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_NECK")
	recipe:AddQuest(42170)

	-- Chaos Shatter -- 252106
	recipe = AddRecipe(252106, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(152658, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(124441, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddRepVendor(FAC.ARGUSSIAN_REACH, REP.FRIENDLY, 127151)

	-- ----------------------------------------------------------------------------
	-- Battle for Azeroth.
	-- ----------------------------------------------------------------------------
	-- Kul Tiran Herbalism -- 255035
	recipe = AddRecipe(255035, V.BFA, Q.RARE)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(153430, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Kul Tiran Mining -- 255040
	recipe = AddRecipe(255040, V.BFA, Q.RARE)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(153431, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Kul Tiran Skinning -- 255065
	recipe = AddRecipe(255065, V.BFA, Q.RARE)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(153434, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Kul Tiran Surveying -- 255066
	recipe = AddRecipe(255066, V.BFA, Q.RARE)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(153435, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Swift Hearthing -- 255068
	recipe = AddRecipe(255068, V.BFA, Q.RARE)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetCraftedItem(153436, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Kul Tiran Crafting -- 255070
	recipe = AddRecipe(255070, V.BFA, Q.RARE)
	recipe:SetSkillLevels(10, 10, 10, 30, 50)
	recipe:SetCraftedItem(153436, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Seal of Critical Strike -- 255071
	recipe = AddRecipe(255071, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(153438, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Seal of Haste -- 255072
	recipe = AddRecipe(255072, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(153439, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Seal of Mastery -- 255073
	recipe = AddRecipe(255073, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(153440, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Seal of Versatility -- 255074
	recipe = AddRecipe(255074, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(1, 1, 25, 37, 50)
	recipe:SetCraftedItem(153441, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Pact of Critical Strike -- 255075
	recipe = AddRecipe(255075, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(153442, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Pact of Haste -- 255076
	recipe = AddRecipe(255076, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(153443, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Pact of Mastery -- 255077
	recipe = AddRecipe(255077, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(153447, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Pact of Versatility -- 255078
	recipe = AddRecipe(255078, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(153445, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Seal of Critical Strike -- 255086
	recipe = AddRecipe(255086, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetCraftedItem(153438, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Seal of Haste -- 255087
	recipe = AddRecipe(255087, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetCraftedItem(153439, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Seal of Mastery -- 255088
	recipe = AddRecipe(255088, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetCraftedItem(153440, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Seal of Versatility -- 255089
	recipe = AddRecipe(255089, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetCraftedItem(153441, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Pact of Critical Strike -- 255090
	recipe = AddRecipe(255090, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 110, 115, 120)
	recipe:SetCraftedItem(153442, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Pact of Haste -- 255091
	recipe = AddRecipe(255091, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 110, 115, 120)
	recipe:SetCraftedItem(153443, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Pact of Mastery -- 255092
	recipe = AddRecipe(255092, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 110, 115, 120)
	recipe:SetCraftedItem(153444, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Pact of Versatility -- 255093
	recipe = AddRecipe(255093, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 110, 115, 120)
	recipe:SetCraftedItem(153445, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Seal of Critical Strike -- 255094
	recipe = AddRecipe(255094, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 75, 87, 100)
	recipe:SetRecipeItem(162298, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153438, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddRepVendor(FAC.TORTOLLAN_SEEKERS, REP.REVERED, 134345, 135793)

	-- Seal of Haste -- 255095
	recipe = AddRecipe(255095, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 75, 87, 100)
	recipe:SetCraftedItem(153439, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddQuest(52353, 52358)

	-- Seal of Mastery -- 255096
	recipe = AddRecipe(255096, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 75, 87, 100)
	recipe:SetCraftedItem(153440, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddQuest(52354, 52359)

	-- Seal of Versatility -- 255097
	recipe = AddRecipe(255097, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 75, 87, 100)
	recipe:SetRecipeItem(162301, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153441, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddRepVendor(FAC.TORTOLLAN_SEEKERS, REP.REVERED, 134345, 135793)

	-- Pact of Critical Strike -- 255098
	recipe = AddRecipe(255098, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 115, 132, 150)
	recipe:SetRecipeItem(162302, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153442, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddRepVendor(FAC.SEVENTH_LEGION, REP.REVERED, 135446)
	recipe:AddRepVendor(FAC.THE_HONORBOUND, REP.REVERED, 135447)

	-- Pact of Haste -- 255099
	recipe = AddRecipe(255099, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 115, 132, 150)
	recipe:SetRecipeItem(162303, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153443, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddRepVendor(FAC.ZANDALARI_EMPIRE, REP.REVERED, 131287)
	recipe:AddRepVendor(FAC.STORMS_WAKE, REP.REVERED, 135800)

	-- Pact of Mastery -- 255100
	recipe = AddRecipe(255100, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 115, 132, 150)
	recipe:SetRecipeItem(162304, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153444, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddRepVendor(FAC.PROUDMOORE_ADMIRALTY, REP.REVERED, 135808)
	recipe:AddRepVendor(FAC.TALANJIS_EXPEDITION, REP.REVERED, 135459)

	-- Pact of Versatility -- 255101
	recipe = AddRecipe(255101, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 115, 132, 150)
	recipe:SetRecipeItem(162305, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153445, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddRepVendor(FAC.ORDER_OF_EMBERS, REP.REVERED, 135815)
	recipe:AddRepVendor(FAC.VOLDUNAI, REP.REVERED, 135804)

	-- Coastal Surge -- 255103
	recipe = AddRecipe(255103, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetCraftedItem(153476, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Coastal Surge -- 255104
	recipe = AddRecipe(255104, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(95, 95, 105, 110, 115)
	recipe:SetCraftedItem(153476, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Coastal Surge -- 255105
	recipe = AddRecipe(255105, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(95, 95, 115, 130, 145)
	recipe:SetRecipeItem(162315, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153476, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddQuest(52355, 52360)

	-- Siphoning -- 255110
	recipe = AddRecipe(255110, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetCraftedItem(153478, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Siphoning -- 255111
	recipe = AddRecipe(255111, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(95, 95, 105, 110, 115)
	recipe:SetCraftedItem(153478, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Siphoning -- 255112
	recipe = AddRecipe(255112, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(95, 95, 115, 130, 145)
	recipe:SetRecipeItem(162316, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153478, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddRepVendor(FAC.PROUDMOORE_ADMIRALTY, REP.REVERED, 135808)
	recipe:AddRepVendor(FAC.TALANJIS_EXPEDITION, REP.REVERED, 135459)

	-- Torrent of Elements -- 255129
	recipe = AddRecipe(255129, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetCraftedItem(153479, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Torrent of Elements -- 255130
	recipe = AddRecipe(255130, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(95, 95, 105, 110, 115)
	recipe:SetCraftedItem(153479, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Torrent of Elements -- 255131
	recipe = AddRecipe(255131, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(95, 95, 115, 130, 145)
	recipe:SetCraftedItem(153479, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddQuest(52356, 52361)

	-- Gale-Force Striking -- 255141
	recipe = AddRecipe(255141, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetCraftedItem(153480, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Gale-Force Striking -- 255142
	recipe = AddRecipe(255142, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(95, 95, 105, 110, 115)
	recipe:SetCraftedItem(153480, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Gale-Force Striking -- 255143
	recipe = AddRecipe(255143, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(95, 95, 115, 130, 145)
	recipe:SetRecipeItem(162318, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153480, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddRepVendor(FAC.ORDER_OF_EMBERS, REP.REVERED, 135815)
	recipe:AddRepVendor(FAC.VOLDUNAI, REP.REVERED, 135804)

	-- Enchanter's Umbral Wand -- 265106
	recipe = AddRecipe(265106, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetCraftedItem(152872, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Enchanter's Sorcerous Scepter -- 265110
	recipe = AddRecipe(265110, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 95, 100, 105)
	recipe:SetCraftedItem(152874, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Enchanter's Sorcerous Scepter -- 265111
	recipe = AddRecipe(265111, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 110, 115, 120)
	recipe:SetCraftedItem(152874, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Enchanter's Sorcerous Scepter -- 265112
	recipe = AddRecipe(265112, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 125, 137, 150)
	recipe:SetRecipeItem(162306, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(152874, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddRepVendor(FAC.SEVENTH_LEGION, REP.REVERED, 135446)
	recipe:AddRepVendor(FAC.THE_HONORBOUND, REP.REVERED, 135447)

	-- Zandalari Herbalism -- 267458
	recipe = AddRecipe(267458, V.BFA, Q.RARE)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(159464, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(122702)

	-- Zandalari Mining -- 267482
	recipe = AddRecipe(267482, V.BFA, Q.RARE)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(159466, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(122702)

	-- Zandalari Skinning -- 267486
	recipe = AddRecipe(267486, V.BFA, Q.RARE)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(159467, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(122702)

	-- Zandalari Surveying -- 267490
	recipe = AddRecipe(267490, V.BFA, Q.RARE)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(159468, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(122702)

	-- Swift Hearthing -- 267495
	recipe = AddRecipe(267495, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetCraftedItem(159469, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(122702)

	-- Zandalari Crafting -- 267498
	recipe = AddRecipe(267498, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 10, 30, 50)
	recipe:SetCraftedItem(159471, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Versatile Navigation -- 268852
	recipe = AddRecipe(268852, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetCraftedItem(159788, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Versatile Navigation -- 268878
	recipe = AddRecipe(268878, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(125, 125, 135, 140, 145)
	recipe:SetCraftedItem(159788, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Versatile Navigation -- 268879
	recipe = AddRecipe(268879, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(125, 125, 150, 150, 150)
	recipe:SetRecipeItem(162320, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(159788, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddRepVendor(FAC.ORDER_OF_EMBERS, REP.REVERED, 135815)
	recipe:AddRepVendor(FAC.VOLDUNAI, REP.REVERED, 135804)

	-- Quick Navigation -- 268894
	recipe = AddRecipe(268894, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetCraftedItem(159786, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Quick Navigation -- 268895
	recipe = AddRecipe(268895, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(125, 125, 135, 140, 145)
	recipe:SetCraftedItem(159786, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Quick Navigation -- 268897
	recipe = AddRecipe(268897, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(125, 125, 150, 150, 150)
	recipe:SetCraftedItem(159786, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddQuest(52357, 52362)

	-- Masterful Navigation -- 268901
	recipe = AddRecipe(268901, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetCraftedItem(159787, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Masterful Navigation -- 268902
	recipe = AddRecipe(268902, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(125, 125, 135, 140, 145)
	recipe:SetCraftedItem(159787, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Masterful Navigation -- 268903
	recipe = AddRecipe(268903, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(125, 125, 150, 150, 150)
	recipe:SetRecipeItem(162317, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(159787, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddRepVendor(FAC.PROUDMOORE_ADMIRALTY, REP.REVERED, 135808)
	recipe:AddRepVendor(FAC.TALANJIS_EXPEDITION, REP.REVERED, 135459)

	-- Deadly Navigation -- 268907
	recipe = AddRecipe(268907, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetCraftedItem(159785, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Deadly Navigation -- 268908
	recipe = AddRecipe(268908, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 135, 140, 145)
	recipe:SetCraftedItem(159785, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Deadly Navigation -- 268909
	recipe = AddRecipe(268909, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 150, 150, 150)
	recipe:SetRecipeItem(162313, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(159785, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddRepVendor(FAC.ZANDALARI_EMPIRE, REP.REVERED, 131287)
	recipe:AddRepVendor(FAC.STORMS_WAKE, REP.REVERED, 135800)

	-- Stalwart Navigation -- 268913
	recipe = AddRecipe(268913, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetCraftedItem(159789, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Stalwart Navigation -- 268914
	recipe = AddRecipe(268914, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 135, 140, 145)
	recipe:SetCraftedItem(159789, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Stalwart Navigation -- 268915
	recipe = AddRecipe(268915, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 150, 150, 150)
	recipe:SetRecipeItem(162312, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(159789, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddRepVendor(FAC.ZANDALARI_EMPIRE, REP.REVERED, 131287)
	recipe:AddRepVendor(FAC.STORMS_WAKE, REP.REVERED, 135800)

	-- Honorable Combatant's Sorcerous Scepter -- 269715
	recipe = AddRecipe(269715, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 95, 100, 105)
	recipe:SetCraftedItem(159922, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Honorable Combatant's Sorcerous Scepter -- 269716
	recipe = AddRecipe(269716, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 110, 127, 145)
	recipe:SetRecipeItem(162308, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(159922, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddVendor(142552, 142564)

	-- Honorable Combatant's Sorcerous Scepter -- 269719
	recipe = AddRecipe(269719, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 115, 132, 150)
	recipe:SetRecipeItem(162309, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(159922, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddVendor(142552, 142564)

	-- Safe Hearthing -- 271366
	recipe = AddRecipe(271366, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetCraftedItem(160328, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Cooled Hearthing -- 271433
	recipe = AddRecipe(271433, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetCraftedItem(160330, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Disenchanting Rod -- 278418
	recipe = AddRecipe(278418, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetCraftedItem(165741, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Sinister Combatant's Sorcerous Scepter -- 282851
	recipe = AddRecipe(282851, V.BFA, Q.EPIC)
	recipe:SetSkillLevels(130, 130, 140, 145, 150)
	recipe:SetCraftedItem(164677, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Sinister Combatant's Sorcerous Scepter -- 282855
	recipe = AddRecipe(282855, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(140, 140, 140, 145, 150)
	recipe:SetRecipeItem(165300, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(164677, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddVendor(142552, 142564)

	-- Sinister Combatant's Sorcerous Scepter -- 282857
	recipe = AddRecipe(282857, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(145, 145, 145, 147, 150)
	recipe:SetRecipeItem(165301, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(164677, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddVendor(142552, 142564)

	-- Enchanted Tiki Mask -- 285644
	recipe = AddRecipe(285644, V.BFA, Q.RARE)
	recipe:SetSkillLevels(140, 140, 140, 145, 150)
	recipe:SetRecipeItem(165696, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(152878, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_PET")
	recipe:AddMobDrop(145616)

	-- Sanguinated Invocation -- 286644
	recipe = AddRecipe(286644, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(162461, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Sanguinated Expulsion -- 286665
	recipe = AddRecipe(286665, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(152668, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Aqueous Invocation -- 287270
	recipe = AddRecipe(287270, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(162460, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Iwen's Enchanting Rod -- 287494
	recipe = AddRecipe(287494, V.BFA, Q.RARE)
	recipe:SetSkillLevels(150, 150, 150, 150, 150)
	recipe:SetRecipeItem(168024, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(164766, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddQuest(54005, 54161)

	-- Umbra Shatter -- 290360
	recipe = AddRecipe(290360, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetCraftedItem(152875, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Veiled Shatter -- 290361
	recipe = AddRecipe(290361, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 95, 100, 105)
	recipe:SetCraftedItem(152876, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Notorious Combatant's Sorcerous Scepter -- 294781
	recipe = AddRecipe(294781, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(145, 145, 155, 160, 165)
	recipe:SetCraftedItem(167993, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Notorious Combatant's Sorcerous Scepter -- 294782
	recipe = AddRecipe(294782, V.BFA, Q.EPIC)
	recipe:SetSkillLevels(150, 150, 170, 172, 175)
	recipe:SetRecipeItem(169539, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(167993, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddVendor(154652, 154653)

	-- Notorious Combatant's Sorcerous Scepter -- 294783
	recipe = AddRecipe(294783, V.BFA, Q.EPIC)
	recipe:SetSkillLevels(165, 165, 175, 175, 175)
	recipe:SetRecipeItem(169540, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(167993, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddVendor(154652, 154653)

	-- Accord of Haste -- 297989
	recipe = AddRecipe(297989, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(145, 145, 155, 160, 165)
	recipe:SetCraftedItem(168447, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Accord of Versatility -- 297991
	recipe = AddRecipe(297991, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(165, 165, 175, 180, 185)
	recipe:SetCraftedItem(168449, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Accord of Versatility -- 297993
	recipe = AddRecipe(297993, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 160, 165, 170)
	recipe:SetCraftedItem(168449, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Accord of Haste -- 297994
	recipe = AddRecipe(297994, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(160, 160, 170, 175, 180)
	recipe:SetCraftedItem(168447, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Accord of Mastery -- 297995
	recipe = AddRecipe(297995, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 160, 165, 170)
	recipe:SetCraftedItem(168448, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Accord of Versatility -- 297999
	recipe = AddRecipe(297999, V.BFA, Q.RARE)
	recipe:SetSkillLevels(175, 175, 175, 175, 175)
	recipe:SetRecipeItem(169533, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(168449, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddRepVendor(FAC.ANKOAN, REP.REVERED, 154140)
	recipe:AddRepVendor(FAC.THE_UNSHACKLED, REP.REVERED, 153512)

	-- Accord of Mastery -- 298001
	recipe = AddRecipe(298001, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(165, 165, 175, 180, 185)
	recipe:SetCraftedItem(168448, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Accord of Mastery -- 298002
	recipe = AddRecipe(298002, V.BFA, Q.RARE)
	recipe:SetSkillLevels(175, 175, 175, 175, 175)
	recipe:SetRecipeItem(169532, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(168448, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddRepVendor(FAC.ANKOAN, REP.REVERED, 154140)
	recipe:AddRepVendor(FAC.THE_UNSHACKLED, REP.REVERED, 153512)

	-- Accord of Critical Strike -- 298009
	recipe = AddRecipe(298009, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(145, 145, 155, 160, 165)
	recipe:SetCraftedItem(168446, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Accord of Critical Strike -- 298010
	recipe = AddRecipe(298010, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(160, 160, 170, 175, 180)
	recipe:SetCraftedItem(168446, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Accord of Critical Strike -- 298011
	recipe = AddRecipe(298011, V.BFA, Q.RARE)
	recipe:SetSkillLevels(170, 170, 175, 175, 175)
	recipe:SetRecipeItem(169530, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(168446, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddRepVendor(FAC.ANKOAN, REP.REVERED, 154140)
	recipe:AddRepVendor(FAC.THE_UNSHACKLED, REP.REVERED, 153512)

	-- Accord of Haste -- 298016
	recipe = AddRecipe(298016, V.BFA, Q.RARE)
	recipe:SetSkillLevels(170, 170, 175, 175, 175)
	recipe:SetRecipeItem(169531, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(168447, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddRepVendor(FAC.ANKOAN, REP.REVERED, 154140)
	recipe:AddRepVendor(FAC.THE_UNSHACKLED, REP.REVERED, 153512)

	-- Machinist's Brilliance -- 298433
	recipe = AddRecipe(298433, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(155, 155, 165, 170, 175)
	recipe:SetCraftedItem(168593, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Oceanic Restoration -- 298437
	recipe = AddRecipe(298437, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(165, 165, 175, 180, 185)
	recipe:SetCraftedItem(168592, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Oceanic Restoration -- 298438
	recipe = AddRecipe(298438, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(155, 155, 165, 170, 175)
	recipe:SetCraftedItem(168592, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Force Multiplier -- 298439
	recipe = AddRecipe(298439, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(165, 165, 175, 180, 185)
	recipe:SetCraftedItem(168596, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Force Multiplier -- 298440
	recipe = AddRecipe(298440, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(155, 155, 165, 170, 175)
	recipe:SetCraftedItem(168596, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Naga Hide -- 298441
	recipe = AddRecipe(298441, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(165, 165, 175, 180, 185)
	recipe:SetCraftedItem(168598, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Naga Hide -- 298442
	recipe = AddRecipe(298442, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(155, 155, 165, 170, 175)
	recipe:SetCraftedItem(168598, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Oceanic Restoration -- 298515
	recipe = AddRecipe(298515, V.BFA, Q.RARE)
	recipe:SetSkillLevels(150, 150, 160, 165, 170)
	recipe:SetRecipeItem(169536, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(168592, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddQuest(56819, 56825)

	-- Machinist's Brilliance -- 300769
	recipe = AddRecipe(300769, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(165, 165, 175, 180, 185)
	recipe:SetCraftedItem(168593, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(122702, 136041, 153811, 154393)

	-- Machinist's Brilliance -- 300770
	recipe = AddRecipe(300770, V.BFA, Q.RARE)
	recipe:SetSkillLevels(175, 175, 175, 175, 175)
	recipe:SetRecipeItem(169534, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(168593, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddQuest(56821, 56824)

	-- Force Multiplier -- 300788
	recipe = AddRecipe(300788, V.BFA, Q.RARE)
	recipe:SetSkillLevels(175, 175, 175, 175, 175)
	recipe:SetRecipeItem(169535, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(168596, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddQuest(56820, 56826)

	-- Naga Hide -- 300789
	recipe = AddRecipe(300789, V.BFA, Q.RARE)
	recipe:SetSkillLevels(175, 175, 175, 175, 175)
	recipe:SetRecipeItem(170213, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(168598, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddQuest(56818, 56827)

	-- Light-Step Hoofplates -- 301412
	recipe = AddRecipe(301412, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(155, 155, 165, 170, 175)
	recipe:SetCraftedItem(168412, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MISC")
	recipe:AddTrainer(122702, 136041, 153811)

	-- Uncanny Combatant's Sorcerous Scepter -- 305936
	recipe = AddRecipe(305936, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(170, 170, 180, 185, 190)
	recipe:SetCraftedItem(170312, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddTrainer(122702, 136041)

	-- Uncanny Combatant's Sorcerous Scepter -- 305937
	recipe = AddRecipe(305937, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 165, 170, 175)
	recipe:SetRecipeItem(171153, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(170312, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddVendor(142552, 142564, 161565)

	-- Uncanny Combatant's Sorcerous Scepter -- 305938
	recipe = AddRecipe(305938, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 165, 170, 175)
	recipe:SetRecipeItem(171152, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(170312, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddVendor(142552, 142564, 161565)

	-- ----------------------------------------------------------------------------
	-- Shadowlands.
	-- ----------------------------------------------------------------------------
	-- Enchanted Twilight Wand -- 265105
	recipe = AddRecipe(265105, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 25, 30, 35)
	recipe:SetCraftedItem(172462, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WAND")
	recipe:AddTrainer(156683)

	-- Shadowlands Gathering -- 309524
	recipe = AddRecipe(309524, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 10, 17, 25)
	recipe:SetCraftedItem(172406, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Strength of Soul -- 309525
	recipe = AddRecipe(309525, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetCraftedItem(172407, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddTrainer(156683)

	-- Eternal Strength -- 309526
	recipe = AddRecipe(309526, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(172408, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_GLOVES")
	recipe:AddTrainer(156683)

	-- Fortified Speed -- 309528
	recipe = AddRecipe(309528, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(172410, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddTrainer(156683)

	-- Fortified Avoidance -- 309530
	recipe = AddRecipe(309530, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(172411, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddTrainer(156683)

	-- Fortified Leech -- 309531
	recipe = AddRecipe(309531, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(172412, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddTrainer(156683)

	-- Agile Soulwalker -- 309532
	recipe = AddRecipe(309532, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetCraftedItem(172413, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddTrainer(156683)

	-- Eternal Agility -- 309534
	recipe = AddRecipe(309534, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(172419, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddTrainer(156683)

	-- Eternal Bulwark -- 309535
	recipe = AddRecipe(309535, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetCraftedItem(172418, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(156683)

	-- Illuminated Soul -- 309608
	recipe = AddRecipe(309608, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetCraftedItem(172414, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(156683)

	-- Eternal Intellect -- 309609
	recipe = AddRecipe(309609, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(172415, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddTrainer(156683)

	-- Shaded Hearthing -- 309610
	recipe = AddRecipe(309610, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 10, 17, 25)
	recipe:SetCraftedItem(172416, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BRACER")
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Bargain of Critical Strike -- 309612
	recipe = AddRecipe(309612, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetCraftedItem(172357, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(156683)

	-- Bargain of Haste -- 309613
	recipe = AddRecipe(309613, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetCraftedItem(172358, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(156683)

	-- Bargain of Mastery -- 309614
	recipe = AddRecipe(309614, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 55, 60, 65)
	recipe:SetCraftedItem(172359, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(156683)

	-- Bargain of Versatility -- 309615
	recipe = AddRecipe(309615, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(172360, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(156683)

	-- Tenet of Critical Strike -- 309616
	recipe = AddRecipe(309616, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(80, 80, 90, 95, 100)
	recipe:SetCraftedItem(172361, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(156683)

	-- Tenet of Haste -- 309617
	recipe = AddRecipe(309617, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(80, 80, 90, 95, 100)
	recipe:SetCraftedItem(172362, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(156683)

	-- Tenet of Mastery -- 309618
	recipe = AddRecipe(309618, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(80, 80, 90, 95, 100)
	recipe:SetCraftedItem(172363, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(156683)

	-- Tenet of Versatility -- 309619
	recipe = AddRecipe(309619, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(80, 80, 90, 95, 100)
	recipe:SetCraftedItem(172363, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_RING")
	recipe:AddTrainer(156683)

	-- Lightless Force -- 309620
	recipe = AddRecipe(309620, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 110, 115, 120)
	recipe:SetCraftedItem(172370, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(156683)

	-- Eternal Grace -- 309621
	recipe = AddRecipe(309621, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 110, 115, 120)
	recipe:SetCraftedItem(172367, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(156683)

	-- Ascended Vigor -- 309622
	recipe = AddRecipe(309622, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(110, 110, 120, 125, 130)
	recipe:SetCraftedItem(172365, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(156683)

	-- Sinful Revelation -- 309623
	recipe = AddRecipe(309623, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(110, 110, 120, 125, 130)
	recipe:SetCraftedItem(172368, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(156683)

	-- Celestial Guidance -- 309627
	recipe = AddRecipe(309627, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 30, 35, 40)
	recipe:SetCraftedItem(172366, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_WEAPON")
	recipe:AddTrainer(156683)

	-- Enchanted Elethium Bar -- 309636
	recipe = AddRecipe(309636, V.SHA, Q.RARE)
	recipe:SetSkillLevels(115, 115, 125, 130, 135)
	recipe:SetRecipeItem(182666, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(172437, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddTrainer(156683)

	-- Enchanted Heavy Callous Hide -- 309637
	recipe = AddRecipe(309637, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(115, 115, 125, 130, 135)
	recipe:SetCraftedItem(172438, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddTrainer(156683)

	-- Enchanted Lightless Silk -- 309638
	recipe = AddRecipe(309638, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(115, 115, 125, 130, 135)
	recipe:SetCraftedItem(172439, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddTrainer(156683)

	-- Sacred Shard -- 309644
	recipe = AddRecipe(309644, V.SHA, Q.UNCOMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetRecipeItem(183096, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(172230, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddRepVendor(FAC.THE_WILD_HUNT, REP.HONORED, 158556, 176065)

	-- Eternal Crystal -- 309645
	recipe = AddRecipe(309645, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(70, 70, 80, 85, 90)
	recipe:SetCraftedItem(172231, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddTrainer(156683)

	-- Soul Treads -- 323609
	recipe = AddRecipe(323609, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 10, 17, 25)
	recipe:SetCraftedItem(177661, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_BOOTS")
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Soul Vitality -- 323755
	recipe = AddRecipe(323755, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(55, 55, 65, 70, 75)
	recipe:SetCraftedItem(177660, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CLOAK")
	recipe:AddTrainer(156683)

	-- Eternal Skirmish -- 323760
	recipe = AddRecipe(323760, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(95, 95, 105, 110, 115)
	recipe:SetCraftedItem(177659, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(156683)

	-- Eternal Bounds -- 323761
	recipe = AddRecipe(323761, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(95, 95, 105, 110, 115)
	recipe:SetCraftedItem(177715, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(156683)

	-- Sacred Stats -- 323762
	recipe = AddRecipe(323762, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 40, 45, 50)
	recipe:SetCraftedItem(177716, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(156683)

	-- Eternal Stats -- 324773
	recipe = AddRecipe(324773, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(90, 90, 100, 105, 110)
	recipe:SetCraftedItem(177962, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(156683)

	-- Eternal Insight -- 342316
	recipe = AddRecipe(342316, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetCraftedItem(183738, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_CHEST")
	recipe:AddTrainer(156683)

	-- Novice Crafter's Mark -- 343680
	recipe = AddRecipe(343680, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 50, 55, 60)
	recipe:SetCraftedItem(183942, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddTrainer(156683)

	-- Crafter's Mark II -- 343683
	recipe = AddRecipe(343683, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(70, 70, 70, 72, 75)
	recipe:SetRecipeItem(183870, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(173382, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddRepVendor(FAC.THE_AVOWED, REP.REVERED, 173705)

	-- Crafter's Mark I -- 343684
	recipe = AddRecipe(343684, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 55, 60, 65)
	recipe:SetCraftedItem(173381, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddTrainer(156683)

	-- Anima-ted Leash -- 355184
	recipe = AddRecipe(355184, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 50, 62, 75)
	recipe:SetRecipeItem(186992, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(186973, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_TOY")
	recipe:AddVendor(156769)

-- 9.2 Recipes

	-- Magically Regulated Automa Core -- 360007
	recipe = AddRecipe(360007, V.SHA, Q.RARE)
	recipe:SetSkillLevels(100, 100, 100, 110, 120)
	recipe:SetRecipeItem(187824, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(187823, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddVendor(183962)

	-- Cosmic Protoweave -- 360013
	recipe = AddRecipe(360013, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 100, 110, 120)
	recipe:SetRecipeItem(187826, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(187825, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("ENCHANTING_MATERIALS")
	recipe:AddMobDrop(183722)

	self.InitializeRecipes = nil
end

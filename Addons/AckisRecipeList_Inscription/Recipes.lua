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
local PROF = constants.PROFESSION_SPELL_IDS

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
	-- Wrath of the Lich King.
	-- ----------------------------------------------------------------------------
	-- Scroll of Stamina -- 45382
	recipe = AddRecipe(45382, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 35, 40, 45)
	recipe:SetCraftedItem(1180, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Scroll of Intellect -- 48114
	recipe = AddRecipe(48114, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 35, 40, 45)
	recipe:SetCraftedItem(955, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Scroll of Versatility -- 48116
	recipe = AddRecipe(48116, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 35, 40, 45)
	recipe:SetCraftedItem(1181, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Mysterious Tarot -- 48247
	recipe = AddRecipe(48247, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 95, 100, 105)
	recipe:SetCraftedItem(37168, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 49885, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Recall -- 48248
	recipe = AddRecipe(48248, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 60, 67, 75)
	recipe:SetCraftedItem(37118, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 47384, 47396, 47400, 47418, 47419, 47421, 47431, 48619, 49885, 53415, 56065, 57620, 64691, 65043, 66355, 79519, 81770, 85911, 86015)

	-- Scroll of Intellect II -- 50598
	recipe = AddRecipe(50598, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 75, 80, 85)
	recipe:SetCraftedItem(2290, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 47384, 47396, 47400, 47418, 47419, 47421, 47431, 48619, 49885, 53415, 56065, 57620, 64691, 65043, 66355, 79519, 81770, 85911, 86015)

	-- Scroll of Intellect III -- 50599
	recipe = AddRecipe(50599, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(165, 165, 170, 175, 180)
	recipe:SetCraftedItem(4419, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Intellect IV -- 50600
	recipe = AddRecipe(50600, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(215, 215, 220, 225, 230)
	recipe:SetCraftedItem(10308, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Intellect V -- 50601
	recipe = AddRecipe(50601, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(260, 260, 265, 270, 275)
	recipe:SetCraftedItem(27499, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Intellect VI -- 50602
	recipe = AddRecipe(50602, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(33458, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 33615, 33638, 33679, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Intellect VII -- 50603
	recipe = AddRecipe(50603, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(37091, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Intellect VIII -- 50604
	recipe = AddRecipe(50604, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetCraftedItem(37092, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Versatility II -- 50605
	recipe = AddRecipe(50605, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 75, 80, 85)
	recipe:SetCraftedItem(1712, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 47384, 47396, 47400, 47418, 47419, 47421, 47431, 48619, 49885, 53415, 56065, 57620, 64691, 65043, 66355, 79519, 81770, 85911, 86015)

	-- Scroll of Versatility III -- 50606
	recipe = AddRecipe(50606, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(160, 160, 165, 170, 175)
	recipe:SetCraftedItem(4424, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Versatility IV -- 50607
	recipe = AddRecipe(50607, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(210, 210, 215, 220, 225)
	recipe:SetCraftedItem(10306, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Versatility V -- 50608
	recipe = AddRecipe(50608, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(255, 255, 260, 265, 270)
	recipe:SetCraftedItem(27501, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Versatility VI -- 50609
	recipe = AddRecipe(50609, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(295, 295, 305, 310, 315)
	recipe:SetCraftedItem(33460, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Versatility VII -- 50610
	recipe = AddRecipe(50610, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(37097, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Versatility VIII -- 50611
	recipe = AddRecipe(50611, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 40, 45, 50)
	recipe:SetCraftedItem(37098, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Stamina II -- 50612
	recipe = AddRecipe(50612, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 75, 80, 85)
	recipe:SetCraftedItem(1711, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 47384, 47396, 47400, 47418, 47419, 47421, 47431, 48619, 49885, 53415, 56065, 57620, 64691, 65043, 66355, 79519, 81770, 85911, 86015)

	-- Scroll of Stamina III -- 50614
	recipe = AddRecipe(50614, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(155, 155, 160, 165, 170)
	recipe:SetCraftedItem(4422, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Stamina IV -- 50616
	recipe = AddRecipe(50616, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(205, 205, 210, 215, 220)
	recipe:SetCraftedItem(10307, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Stamina V -- 50617
	recipe = AddRecipe(50617, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(250, 250, 255, 260, 265)
	recipe:SetCraftedItem(27502, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Stamina VI -- 50618
	recipe = AddRecipe(50618, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(290, 290, 300, 305, 310)
	recipe:SetCraftedItem(33461, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Stamina VII -- 50619
	recipe = AddRecipe(50619, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(37093, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Stamina VIII -- 50620
	recipe = AddRecipe(50620, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(37094, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Enchanting Vellum -- 52739
	recipe = AddRecipe(52739, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 75, 87, 100)
	recipe:SetCraftedItem(38682, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 47384, 47396, 47400, 47418, 47419, 47421, 47431, 48619, 49885, 53415, 56065, 57620, 64691, 65043, 66355, 79519, 81770, 85911, 86015)

	-- Moonglow Ink -- 52843
	recipe = AddRecipe(52843, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(39469, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 47384, 47396, 47400, 47418, 47419, 47421, 47431, 48619, 49885, 53415, 56065, 57620, 64691, 65043, 66355, 79519, 81770, 85911, 86015)

	-- Midnight Ink -- 53462
	recipe = AddRecipe(53462, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 75, 77, 80)
	recipe:SetCraftedItem(39774, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 47384, 47396, 47400, 47418, 47419, 47421, 47431, 48619, 49885, 53415, 56065, 57620, 64691, 65043, 66355, 79519, 81770, 85911, 86015)

	-- Glyph of the Orca -- 56948
	recipe = AddRecipe(56948, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 155, 160, 165)
	recipe:SetCraftedItem(40919, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddDiscovery("DISCOVERY_INSC_SEA")

	-- Glyph of Stars -- 56965
	recipe = AddRecipe(56965, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(310, 310, 320, 325, 330)
	recipe:SetCraftedItem(44922, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddDiscovery("DISCOVERY_INSC_MOONGLOW")

	-- Glyph of Crittermorph -- 56986
	recipe = AddRecipe(56986, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(385, 385, 390, 397, 405)
	recipe:SetCraftedItem(42751, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MAGE)
	recipe:AddDiscovery("DISCOVERY_INSC_BLACKFALLOW")

	-- Glyph of the Luminous Charger -- 57032
	recipe = AddRecipe(57032, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(155, 155, 160, 165, 170)
	recipe:SetCraftedItem(41100, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PALADIN)
	recipe:AddDiscovery("DISCOVERY_INSC_SHIMMERING")

	-- Glyph of the Geist -- 57209
	recipe = AddRecipe(57209, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(320, 320, 330, 335, 340)
	recipe:SetCraftedItem(43535, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DK)
	recipe:AddDiscovery("DISCOVERY_INSC_LIONS")

	-- Glyph of Foul Menagerie -- 57224
	recipe = AddRecipe(57224, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(330, 330, 335, 340, 345)
	recipe:SetCraftedItem(43551, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DK)
	recipe:AddDiscovery("DISCOVERY_INSC_MOONGLOW")

	-- Glyph of Felguard -- 57263
	recipe = AddRecipe(57263, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(385, 385, 390, 397, 405)
	recipe:SetCraftedItem(42459, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARLOCK)
	recipe:AddDiscovery("DISCOVERY_INSC_ETHEREAL")

	-- Hunter's Ink -- 57703
	recipe = AddRecipe(57703, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 85, 90, 95)
	recipe:SetCraftedItem(43115, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 49885, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Lion's Ink -- 57704
	recipe = AddRecipe(57704, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 100, 100, 105)
	recipe:SetCraftedItem(43116, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 49885, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Dawnstar Ink -- 57706
	recipe = AddRecipe(57706, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 125, 130, 135)
	recipe:SetCraftedItem(43117, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 49885, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Jadefire Ink -- 57707
	recipe = AddRecipe(57707, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 150, 150, 155)
	recipe:SetCraftedItem(43118, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 49885, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Royal Ink -- 57708
	recipe = AddRecipe(57708, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 175, 175, 180)
	recipe:SetCraftedItem(43119, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Celestial Ink -- 57709
	recipe = AddRecipe(57709, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(200, 200, 200, 200, 205)
	recipe:SetCraftedItem(43120, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Fiery Ink -- 57710
	recipe = AddRecipe(57710, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 225, 225, 230)
	recipe:SetCraftedItem(43121, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Shimmering Ink -- 57711
	recipe = AddRecipe(57711, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(250, 250, 250, 250, 255)
	recipe:SetCraftedItem(43122, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Ink of the Sky -- 57712
	recipe = AddRecipe(57712, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(275, 275, 290, 295, 300)
	recipe:SetCraftedItem(43123, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Ethereal Ink -- 57713
	recipe = AddRecipe(57713, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(43124, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 33615, 33638, 33679, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Darkflame Ink -- 57714
	recipe = AddRecipe(57714, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(43125, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 33615, 33638, 33679, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Ink of the Sea -- 57715
	recipe = AddRecipe(57715, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(43126, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Snowfall Ink -- 57716
	recipe = AddRecipe(57716, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(43127, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Glyph of the Ursol Chameleon -- 58287
	recipe = AddRecipe(58287, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 155, 160, 165)
	recipe:SetCraftedItem(43334, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddDiscovery("DISCOVERY_INSC_BLACKFALLOW")

	-- Glyph of Lesser Proportion -- 58301
	recipe = AddRecipe(58301, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 80, 85, 90)
	recipe:SetCraftedItem(43350, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.HUNTER)
	recipe:AddDiscovery("DISCOVERY_INSC_DREAMS")

	-- Glyph of Winged Vengeance -- 58312
	recipe = AddRecipe(58312, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 80, 85, 90)
	recipe:SetCraftedItem(43366, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PALADIN)
	recipe:AddDiscovery("DISCOVERY_INSC_MIDNIGHT")

	-- Glyph of Fire From the Heavens -- 58316
	recipe = AddRecipe(58316, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 155, 160, 165)
	recipe:SetCraftedItem(43369, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PALADIN)
	recipe:AddDiscovery("DISCOVERY_INSC_CELESTIAL")

	-- Glyph of Shackle Undead -- 58320
	recipe = AddRecipe(58320, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(95, 95, 105, 110, 115)
	recipe:SetCraftedItem(43373, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PRIEST)
	recipe:AddDiscovery("DISCOVERY_INSC_SHIMMERING")

	-- Glyph of the Spectral Wolf -- 58332
	recipe = AddRecipe(58332, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(95, 95, 105, 110, 115)
	recipe:SetCraftedItem(43386, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.SHAMAN)
	recipe:AddDiscovery("DISCOVERY_INSC_MOONGLOW")

	-- Glyph of Soulwell -- 58341
	recipe = AddRecipe(58341, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(345, 345, 355, 360, 365)
	recipe:SetCraftedItem(43394, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARLOCK)
	recipe:AddDiscovery("DISCOVERY_INSC_JADEFIRE")

	-- Glyph of Gushing Wound -- 58345
	recipe = AddRecipe(58345, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(95, 95, 105, 110, 115)
	recipe:SetCraftedItem(43398, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARRIOR)
	recipe:AddDiscovery("DISCOVERY_INSC_JADEFIRE")

	-- Glyph of Mighty Victory -- 58347
	recipe = AddRecipe(58347, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(320, 320, 330, 335, 340)
	recipe:SetCraftedItem(43400, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARRIOR)
	recipe:AddDiscovery("DISCOVERY_INSC_JADEFIRE")

	-- Scroll of Agility -- 58472
	recipe = AddRecipe(58472, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 35, 40, 45)
	recipe:SetCraftedItem(3012, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 47384, 47396, 47400, 47418, 47419, 47421, 47431, 48619, 49885, 53415, 56065, 57620, 64691, 65043, 66355, 79519, 81770, 85911, 86015)

	-- Scroll of Agility II -- 58473
	recipe = AddRecipe(58473, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 85, 90, 95)
	recipe:SetCraftedItem(1477, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 49885, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Agility III -- 58476
	recipe = AddRecipe(58476, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 180, 185, 190)
	recipe:SetCraftedItem(4425, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Agility IV -- 58478
	recipe = AddRecipe(58478, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 230, 235, 240)
	recipe:SetCraftedItem(10309, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Agility V -- 58480
	recipe = AddRecipe(58480, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(270, 270, 275, 280, 285)
	recipe:SetCraftedItem(27498, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Agility VI -- 58481
	recipe = AddRecipe(58481, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetCraftedItem(33457, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 33615, 33638, 33679, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Agility VII -- 58482
	recipe = AddRecipe(58482, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(43463, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Agility VIII -- 58483
	recipe = AddRecipe(58483, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 55, 60, 65)
	recipe:SetCraftedItem(43464, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Strength -- 58484
	recipe = AddRecipe(58484, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 35, 40, 45)
	recipe:SetCraftedItem(954, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 47384, 47396, 47400, 47418, 47419, 47421, 47431, 48619, 49885, 53415, 56065, 57620, 64691, 65043, 66355, 79519, 81770, 85911, 86015)

	-- Scroll of Strength II -- 58485
	recipe = AddRecipe(58485, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(80, 80, 80, 85, 90)
	recipe:SetCraftedItem(2289, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 49885, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Strength III -- 58486
	recipe = AddRecipe(58486, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(170, 170, 175, 180, 185)
	recipe:SetCraftedItem(4426, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Strength IV -- 58487
	recipe = AddRecipe(58487, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(220, 220, 225, 230, 235)
	recipe:SetCraftedItem(10310, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Strength V -- 58488
	recipe = AddRecipe(58488, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(265, 265, 270, 275, 280)
	recipe:SetCraftedItem(27503, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Strength VI -- 58489
	recipe = AddRecipe(58489, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(5, 5, 15, 20, 25)
	recipe:SetCraftedItem(33462, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 33615, 33638, 33679, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Strength VII -- 58490
	recipe = AddRecipe(58490, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(43465, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Strength VIII -- 58491
	recipe = AddRecipe(58491, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetCraftedItem(43466, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Mystic Tome -- 58565
	recipe = AddRecipe(58565, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 95, 100, 105)
	recipe:SetCraftedItem(43515, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 49885, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Certificate of Ownership -- 59387
	recipe = AddRecipe(59387, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(200, 200, 205, 210, 215)
	recipe:SetCraftedItem(43850, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddFilters(F.HUNTER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Tome of the Dawn -- 59475
	recipe = AddRecipe(59475, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 150, 162, 175)
	recipe:SetCraftedItem(43654, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 49885, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Book of Survival -- 59478
	recipe = AddRecipe(59478, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 150, 162, 175)
	recipe:SetCraftedItem(43655, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 49885, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Strange Tarot -- 59480
	recipe = AddRecipe(59480, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 150, 162, 175)
	recipe:SetCraftedItem(44142, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 49885, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Tome of Kings -- 59484
	recipe = AddRecipe(59484, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 200, 205, 210)
	recipe:SetCraftedItem(43656, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Royal Guide of Escape Routes -- 59486
	recipe = AddRecipe(59486, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 200, 205, 210)
	recipe:SetCraftedItem(43657, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Arcane Tarot -- 59487
	recipe = AddRecipe(59487, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 200, 205, 210)
	recipe:SetCraftedItem(44161, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Fire Eater's Guide -- 59489
	recipe = AddRecipe(59489, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 240, 245, 250)
	recipe:SetCraftedItem(43660, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Book of Stars -- 59490
	recipe = AddRecipe(59490, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 240, 245, 250)
	recipe:SetCraftedItem(43661, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Shadowy Tarot -- 59491
	recipe = AddRecipe(59491, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 240, 245, 250)
	recipe:SetCraftedItem(44163, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Stormbound Tome -- 59493
	recipe = AddRecipe(59493, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(275, 275, 290, 295, 300)
	recipe:SetCraftedItem(43663, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Manual of Clouds -- 59494
	recipe = AddRecipe(59494, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(275, 275, 290, 295, 300)
	recipe:SetCraftedItem(43664, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Hellfire Tome -- 59495
	recipe = AddRecipe(59495, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(43666, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 33615, 33638, 33679, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Book of Clever Tricks -- 59496
	recipe = AddRecipe(59496, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(43667, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER, F.TANK)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 33615, 33638, 33679, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Iron-bound Tome -- 59497
	recipe = AddRecipe(59497, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(38322, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Faces of Doom -- 59498
	recipe = AddRecipe(59498, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(44210, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Darkmoon Card -- 59502
	recipe = AddRecipe(59502, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(275, 275, 290, 295, 300)
	recipe:SetCraftedItem(44316, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Greater Darkmoon Card -- 59503
	recipe = AddRecipe(59503, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(44317, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 33615, 33638, 33679, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Darkmoon Card of the North -- 59504
	recipe = AddRecipe(59504, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(44318, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Recall II -- 60336
	recipe = AddRecipe(60336, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(200, 200, 215, 220, 225)
	recipe:SetCraftedItem(44314, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Recall III -- 60337
	recipe = AddRecipe(60337, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(44315, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Master's Inscription of the Axe -- 61117
	recipe = AddRecipe(61117, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Master's Inscription of the Crag -- 61118
	recipe = AddRecipe(61118, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Master's Inscription of the Pinnacle -- 61119
	recipe = AddRecipe(61119, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.TANK)
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Master's Inscription of the Storm -- 61120
	recipe = AddRecipe(61120, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Rituals of the Moon -- 64051
	recipe = AddRecipe(64051, V.WOTLK, Q.UNCOMMON)
	recipe:SetSkillLevels(350, 350, 375, 387, 400)
	recipe:SetRecipeItem(46108, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(46108, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddMobDrop(26679, 26708, 27546, 27676)

	-- Twilight Tome -- 64053
	recipe = AddRecipe(64053, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(45849, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Glyph of Crimson Banish -- 64250
	recipe = AddRecipe(64250, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(425, 425, 430, 435, 440)
	recipe:SetCraftedItem(45789, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARLOCK)
	recipe:AddDiscovery("DISCOVERY_INSC_JADEFIRE")

	-- Glyph of Disguise -- 64260
	recipe = AddRecipe(64260, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(255, 255, 255, 262, 270)
	recipe:SetCraftedItem(45768, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.ROGUE)
	recipe:AddDiscovery("DISCOVERY_INSC_BLACKFALLOW")

	-- Glyph of Thunder Strike -- 68166
	recipe = AddRecipe(68166, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(355, 355, 355, 360, 365)
	recipe:SetCraftedItem(49084, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARRIOR)
	recipe:AddDiscovery("DISCOVERY_INSC_BLACKFALLOW")

	-- Runescroll of Fortitude -- 69385
	recipe = AddRecipe(69385, V.WOTLK, Q.COMMON)
	recipe:SetSkillLevels(65, 65, 75, 80, 85)
	recipe:SetCraftedItem(49632, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(26916, 26959, 26977, 26995, 28702, 30706, 30709, 30715, 30721, 30722, 33603, 46716, 56065, 64691, 66355, 79519, 81770, 85911)

	-- ----------------------------------------------------------------------------
	-- Cataclysm.
	-- ----------------------------------------------------------------------------
	-- Runescroll of Fortitude II -- 85785
	recipe = AddRecipe(85785, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(62251, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Blackfallow Ink -- 86004
	recipe = AddRecipe(86004, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(61978, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Inferno Ink -- 86005
	recipe = AddRecipe(86005, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(61981, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Swiftsteel Inscription -- 86375
	recipe = AddRecipe(86375, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Lionsmane Inscription -- 86401
	recipe = AddRecipe(86401, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Inscription of the Earth Prince -- 86402
	recipe = AddRecipe(86402, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Felfire Inscription -- 86403
	recipe = AddRecipe(86403, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Mysterious Fortune Card -- 86609
	recipe = AddRecipe(86609, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(60838, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Darkmoon Card of Destruction -- 86615
	recipe = AddRecipe(86615, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(61987, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Book of Blood -- 86616
	recipe = AddRecipe(86616, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(62231, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Lord Rottington's Pressed Wisp Book -- 86640
	recipe = AddRecipe(86640, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(62233, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Dungeoneering Guide -- 86641
	recipe = AddRecipe(86641, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetCraftedItem(62234, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Divine Companion -- 86642
	recipe = AddRecipe(86642, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetCraftedItem(62235, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Battle Tome -- 86643
	recipe = AddRecipe(86643, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetCraftedItem(62236, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Origami Slime -- 86644
	recipe = AddRecipe(86644, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(480, 480, 480, 480, 490)
	recipe:SetRecipeItem(65649, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(62239, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddWorldDrop(Z.VASHJIR)

	-- Origami Rock -- 86645
	recipe = AddRecipe(86645, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(490, 490, 490, 490, 500)
	recipe:SetRecipeItem(65650, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(62238, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddWorldDrop(Z.DEEPHOLM)

	-- Origami Beetle -- 86646
	recipe = AddRecipe(86646, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(500, 500, 500, 500, 510)
	recipe:SetRecipeItem(65651, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(63246, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddWorldDrop(Z.ULDUM)

	-- Key to the Planes -- 86648
	recipe = AddRecipe(86648, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 40, 45, 50)
	recipe:SetCraftedItem(87565, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_STAFF")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Runed Staff -- 86649
	recipe = AddRecipe(86649, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(55, 55, 65, 70, 75)
	recipe:SetCraftedItem(87566, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_STAFF")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Rosethorn Staff -- 86652
	recipe = AddRecipe(86652, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(65, 65, 75, 80, 85)
	recipe:SetCraftedItem(87562, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_STAFF")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Silver Inlaid Staff -- 86653
	recipe = AddRecipe(86653, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(65, 65, 75, 80, 85)
	recipe:SetCraftedItem(87561, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_STAFF")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Forged Documents -- 86654
	recipe = AddRecipe(86654, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(63276, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(30709, 30710, 30711, 30715, 30722, 66355, 85911)

	-- Forged Documents -- 89244
	recipe = AddRecipe(89244, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(62056, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(30709, 30713, 30715, 30716, 30717, 30721, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Intellect IX -- 89368
	recipe = AddRecipe(89368, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(63305, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Strength IX -- 89369
	recipe = AddRecipe(89369, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 25, 30, 35)
	recipe:SetCraftedItem(63304, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Agility IX -- 89370
	recipe = AddRecipe(89370, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 30, 35, 40)
	recipe:SetCraftedItem(63303, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Versatility IX -- 89371
	recipe = AddRecipe(89371, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(5, 5, 15, 20, 25)
	recipe:SetCraftedItem(63307, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Stamina IX -- 89372
	recipe = AddRecipe(89372, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetCraftedItem(63306, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Scroll of Protection IX -- 89373
	recipe = AddRecipe(89373, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(63308, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddFilters(F.TANK)
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Vanishing Powder -- 92026
	recipe = AddRecipe(92026, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 90, 100, 110)
	recipe:SetCraftedItem(64670, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30710, 30711, 30713, 30715, 30716, 30717, 30721, 30722, 46716, 49885, 53415, 56065, 64691, 66355, 79519, 81770, 85911)

	-- Glyph of Shadow -- 107907
	recipe = AddRecipe(107907, V.CATA, Q.COMMON)
	recipe:SetSkillLevels(105, 105, 105, 110, 115)
	recipe:SetCraftedItem(77101, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PRIEST)
	recipe:AddDiscovery("DISCOVERY_INSC_CELESTIAL")

	-- ----------------------------------------------------------------------------
	-- Mists of Pandaria.
	-- ----------------------------------------------------------------------------
	-- Ink of Dreams -- 111645
	recipe = AddRecipe(111645, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(79254, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Starlight Ink -- 111646
	recipe = AddRecipe(111646, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(79255, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Darkmoon Card of Mists -- 111830
	recipe = AddRecipe(111830, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(79318, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Inscribed Fan -- 111908
	recipe = AddRecipe(111908, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetCraftedItem(79333, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Inscribed Jade Fan -- 111909
	recipe = AddRecipe(111909, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetCraftedItem(79334, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Inscribed Red Fan -- 111910
	recipe = AddRecipe(111910, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetCraftedItem(79335, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Rain Poppy Staff -- 111917
	recipe = AddRecipe(111917, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetCraftedItem(79339, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_STAFF")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Inscribed Crane Staff -- 111918
	recipe = AddRecipe(111918, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetCraftedItem(79340, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_STAFF")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Inscribed Serpent Staff -- 111919
	recipe = AddRecipe(111919, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetCraftedItem(79341, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_STAFF")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Ghost Iron Staff -- 111920
	recipe = AddRecipe(111920, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetCraftedItem(79342, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_STAFF")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Inscribed Tiger Staff -- 111921
	recipe = AddRecipe(111921, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetCraftedItem(79343, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_STAFF")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Runescroll of Fortitude III -- 112045
	recipe = AddRecipe(112045, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(55, 55, 65, 70, 75)
	recipe:SetCraftedItem(79257, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Glyph of Hawk Feast -- 112429
	recipe = AddRecipe(112429, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(525, 525, 595, 600, 605)
	recipe:SetCraftedItem(80587, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARRIOR)
	recipe:AddDiscovery("DISCOVERY_INSC_JADEFIRE")

	-- Glyph of Burning Anger -- 112430
	recipe = AddRecipe(112430, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(525, 525, 595, 600, 605)
	recipe:SetCraftedItem(80588, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARRIOR)
	recipe:AddDiscovery("DISCOVERY_INSC_BLACKFALLOW")

	-- Glyph of Crackling Tiger Lightning -- 112462
	recipe = AddRecipe(112462, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(485, 485, 495, 500, 505)
	recipe:SetCraftedItem(87881, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MONK)
	recipe:AddDiscovery("DISCOVERY_INSC_BLACKFALLOW")

	-- Glyph of Honor -- 112464
	recipe = AddRecipe(112464, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(525, 525, 595, 600, 605)
	recipe:SetCraftedItem(87883, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MONK)
	recipe:AddDiscovery("DISCOVERY_INSC_SEA")

	-- Glyph of Rising Tiger Kick -- 112466
	recipe = AddRecipe(112466, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(525, 525, 595, 600, 605)
	recipe:SetCraftedItem(87885, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MONK)
	recipe:AddDiscovery("DISCOVERY_INSC_SHIMMERING")

	-- Glyph of Fighting Pose -- 112469
	recipe = AddRecipe(112469, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(490, 490, 500, 505, 510)
	recipe:SetCraftedItem(87888, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MONK)
	recipe:AddDiscovery("DISCOVERY_INSC_SEA")

	-- Scroll of Wisdom -- 112996
	recipe = AddRecipe(112996, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(79731, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Glyph of the Blazing Trail -- 123781
	recipe = AddRecipe(123781, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(525, 525, 595, 600, 605)
	recipe:SetCraftedItem(85221, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARRIOR)
	recipe:AddDiscovery("DISCOVERY_INSC_LIONS")

	-- Glyph of the Heavens -- 124466
	recipe = AddRecipe(124466, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(525, 525, 595, 600, 605)
	recipe:SetCraftedItem(79538, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PRIEST)
	recipe:AddDiscovery("DISCOVERY_INSC_BLACKFALLOW")

	-- Glyph of the Val'kyr -- 126696
	recipe = AddRecipe(126696, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(525, 525, 595, 600, 605)
	recipe:SetCraftedItem(87277, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PRIEST)
	recipe:AddDiscovery("DISCOVERY_INSC_DREAMS")

	-- Glyph of Shadowy Friends -- 126800
	recipe = AddRecipe(126800, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(525, 525, 595, 600, 605)
	recipe:SetCraftedItem(87392, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PRIEST)
	recipe:AddDiscovery("DISCOVERY_INSC_BLACKFALLOW")

	-- Origami Crane -- 126988
	recipe = AddRecipe(126988, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(87647, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Origami Frog -- 126989
	recipe = AddRecipe(126989, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(87648, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Greater Ox Horn Inscription -- 126994
	recipe = AddRecipe(126994, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 55, 60, 65)
	recipe:SetCraftedItem(87560, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Greater Crane Wing Inscription -- 126995
	recipe = AddRecipe(126995, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 55, 60, 65)
	recipe:SetCraftedItem(87559, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Greater Tiger Claw Inscription -- 126996
	recipe = AddRecipe(126996, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 55, 60, 65)
	recipe:SetCraftedItem(83007, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Greater Tiger Fang Inscription -- 126997
	recipe = AddRecipe(126997, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 55, 60, 65)
	recipe:SetCraftedItem(83006, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Yu'lon Kite -- 127007
	recipe = AddRecipe(127007, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(89367, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_PET")
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Chi-ji Kite -- 127009
	recipe = AddRecipe(127009, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(89368, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_PET")
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Tiger Fang Inscription -- 127016
	recipe = AddRecipe(127016, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 25, 30, 35)
	recipe:SetCraftedItem(87580, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Tiger Claw Inscription -- 127017
	recipe = AddRecipe(127017, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 25, 30, 35)
	recipe:SetCraftedItem(87579, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Crane Wing Inscription -- 127018
	recipe = AddRecipe(127018, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 25, 30, 35)
	recipe:SetCraftedItem(87578, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Ox Horn Inscription -- 127019
	recipe = AddRecipe(127019, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 25, 30, 35)
	recipe:SetCraftedItem(87577, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Secret Tiger Fang Inscription -- 127020
	recipe = AddRecipe(127020, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(87585, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Secret Tiger Claw Inscription -- 127021
	recipe = AddRecipe(127021, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(87584, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.DPS)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Secret Crane Wing Inscription -- 127023
	recipe = AddRecipe(127023, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(87582, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Secret Ox Horn Inscription -- 127024
	recipe = AddRecipe(127024, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(87581, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddTrainer(30706, 30709, 30715, 30721, 30722, 46716, 56065, 62327, 64691, 66355, 79519, 81770, 85911)

	-- Commissioned Painting -- 127378
	recipe = AddRecipe(127378, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(600, 600, 600, 602, 605)
	recipe:SetCraftedItem(87811, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(31539)
	recipe:AddCustom("LEARNT_BY_ACCEPTING_QUEST")

	-- Glyph of the Cheetah -- 131152
	recipe = AddRecipe(131152, V.MOP, Q.COMMON)
	recipe:SetSkillLevels(525, 525, 595, 600, 605)
	recipe:SetCraftedItem(89868, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddDiscovery("DISCOVERY_INSC_SHIMMERING")

	-- Crafted Malevolent Gladiator's Medallion of Tenacity -- 146638
	recipe = AddRecipe(146638, V.MOP, Q.UNCOMMON)
	recipe:SetSkillLevels(600, 600, 600, 600, 605)
	recipe:SetRecipeItem(102534, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(102483, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_TRINKET")
	recipe:AddWorldDrop(Z.PANDARIA)

	-- Glyph of the Skeleton -- 148266
	recipe = AddRecipe(148266, V.MOP, Q.UNCOMMON)
	recipe:SetSkillLevels(500, 500, 595, 600, 605)
	recipe:SetCraftedItem(104099, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DK)
	recipe:AddDiscovery("DISCOVERY_INSC_MIDNIGHT")

	-- Glyph of the Unbound Elemental -- 148270
	recipe = AddRecipe(148270, V.MOP, Q.UNCOMMON)
	recipe:SetSkillLevels(500, 500, 595, 600, 605)
	recipe:SetCraftedItem(104104, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MAGE)
	recipe:AddDiscovery("DISCOVERY_INSC_JADEFIRE")

	-- Glyph of Evaporation -- 148271
	recipe = AddRecipe(148271, V.MOP, Q.UNCOMMON)
	recipe:SetSkillLevels(500, 500, 595, 600, 605)
	recipe:SetCraftedItem(104105, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MAGE)
	recipe:AddDiscovery("DISCOVERY_INSC_LIONS")

	-- Glyph of Pillar of Light -- 148274
	recipe = AddRecipe(148274, V.MOP, Q.UNCOMMON)
	recipe:SetSkillLevels(500, 500, 595, 600, 605)
	recipe:SetCraftedItem(104108, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PALADIN)
	recipe:AddDiscovery("DISCOVERY_INSC_DREAMS")

	-- Glyph of Angels -- 148275
	recipe = AddRecipe(148275, V.MOP, Q.UNCOMMON)
	recipe:SetSkillLevels(500, 500, 595, 600, 605)
	recipe:SetCraftedItem(149755, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PRIEST)
	recipe:AddWorldDrop(Z.PANDARIA)

	-- Glyph of the Sha -- 148276
	recipe = AddRecipe(148276, V.MOP, Q.UNCOMMON)
	recipe:SetSkillLevels(500, 500, 595, 600, 605)
	recipe:SetCraftedItem(104120, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PRIEST)
	recipe:AddDiscovery("DISCOVERY_INSC_ETHEREAL")

	-- Glyph of Inspired Hymns -- 148278
	recipe = AddRecipe(148278, V.MOP, Q.UNCOMMON)
	recipe:SetSkillLevels(500, 500, 595, 600, 605)
	recipe:SetCraftedItem(104122, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PRIEST)
	recipe:AddDiscovery("DISCOVERY_INSC_MOONGLOW")

	-- Glyph of Spirit Raptors -- 148281
	recipe = AddRecipe(148281, V.MOP, Q.UNCOMMON)
	recipe:SetSkillLevels(500, 500, 595, 600, 605)
	recipe:SetCraftedItem(104126, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.SHAMAN)
	recipe:AddDiscovery("DISCOVERY_INSC_LIONS")

	-- Glyph of Lingering Ancestors -- 148282
	recipe = AddRecipe(148282, V.MOP, Q.UNCOMMON)
	recipe:SetSkillLevels(500, 500, 595, 600, 605)
	recipe:SetCraftedItem(104127, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.SHAMAN)
	recipe:AddDiscovery("DISCOVERY_INSC_MIDNIGHT")

	-- Glyph of the Weaponmaster -- 148292
	recipe = AddRecipe(148292, V.MOP, Q.UNCOMMON)
	recipe:SetSkillLevels(500, 500, 595, 600, 605)
	recipe:SetCraftedItem(104138, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARRIOR)
	recipe:AddDiscovery("DISCOVERY_INSC_CELESTIAL")

	-- ----------------------------------------------------------------------------
	-- Warlords of Draenor.
	-- ----------------------------------------------------------------------------
	-- Darkmoon Card of Draenor -- 163294
	recipe = AddRecipe(163294, V.WOD, Q.UNCOMMON)
	recipe:SetSkillLevels(600, 600, 700, 702, 705)
	recipe:SetRecipeItem(118606, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddVendor(77372, 79829, 87063, 87551)

	-- Research: Midnight Ink -- 165304
	recipe = AddRecipe(165304, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 175, 225, 275)
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddDiscovery("DISCOVERY_AUTOLEARN")

	-- Research: Lion's Ink -- 165456
	recipe = AddRecipe(165456, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(200, 200, 200, 250, 300)
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddDiscovery("DISCOVERY_AUTOLEARN")

	-- Research: Jadefire Ink -- 165460
	recipe = AddRecipe(165460, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(250, 250, 250, 300, 350)
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddDiscovery("DISCOVERY_AUTOLEARN")

	-- Research: Celestial Ink -- 165461
	recipe = AddRecipe(165461, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 300, 350, 400)
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddDiscovery("DISCOVERY_AUTOLEARN")

	-- Research: Shimmering Ink -- 165463
	recipe = AddRecipe(165463, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(350, 350, 350, 400, 450)
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddDiscovery("DISCOVERY_AUTOLEARN")

	-- Research: Ethereal Ink -- 165464
	recipe = AddRecipe(165464, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(390, 390, 390, 400, 490)
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddDiscovery("DISCOVERY_AUTOLEARN")

	-- Research: Ink of the Sea -- 165465
	recipe = AddRecipe(165465, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(450, 450, 450, 500, 550)
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddDiscovery("DISCOVERY_AUTOLEARN")

	-- Research: Blackfallow Ink -- 165466
	recipe = AddRecipe(165466, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(525, 525, 525, 560, 595)
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddDiscovery("DISCOVERY_AUTOLEARN")

	-- Research: Ink of Dreams -- 165467
	recipe = AddRecipe(165467, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(595, 595, 595, 597, 600)
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddDiscovery("DISCOVERY_AUTOLEARN")

	-- Research: Moonglow Ink -- 165564
	recipe = AddRecipe(165564, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 125, 175, 225)
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddDiscovery("DISCOVERY_AUTOLEARN")

	-- Warmaster's Firestick -- 165804
	recipe = AddRecipe(165804, V.WOD, Q.UNCOMMON)
	recipe:SetSkillLevels(600, 600, 700, 702, 705)
	recipe:SetRecipeItem(118615, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(113131, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_WAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddVendor(77372, 79829, 87063, 87551)

	-- Crystalfire Spellstaff -- 166356
	recipe = AddRecipe(166356, V.WOD, Q.UNCOMMON)
	recipe:SetSkillLevels(600, 600, 700, 702, 705)
	recipe:SetRecipeItem(118605, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(113134, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_STAFF")
	recipe:AddVendor(77372, 79829, 87063, 87551)

	-- Etched-Blade Warstaff -- 166359
	recipe = AddRecipe(166359, V.WOD, Q.UNCOMMON)
	recipe:SetSkillLevels(600, 600, 700, 702, 705)
	recipe:SetRecipeItem(118607, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(111526, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_STAFF")
	recipe:AddFilters(F.DPS)
	recipe:AddVendor(77372, 79829, 87063, 87551)

	-- Shadowtome -- 166363
	recipe = AddRecipe(166363, V.WOD, Q.UNCOMMON)
	recipe:SetSkillLevels(600, 600, 700, 702, 705)
	recipe:SetRecipeItem(118613, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(113270, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddFilters(F.CASTER, F.HEALER)
	recipe:AddVendor(77372, 79829, 87063, 87551)

	-- Volatile Crystal -- 166432
	recipe = AddRecipe(166432, V.WOD, Q.UNCOMMON)
	recipe:SetSkillLevels(600, 600, 700, 702, 705)
	recipe:SetRecipeItem(118614, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(113289, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_ITEM_ENHANCEMENT")
	recipe:AddVendor(77372, 79829, 87063, 87551)

	-- Card of Omens -- 166669
	recipe = AddRecipe(166669, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(600, 600, 700, 702, 705)
	recipe:SetCraftedItem(113355, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- Research: Warbinder's Ink -- 167950
	recipe = AddRecipe(167950, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(600, 600, 600, 602, 605)
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- War Paints -- 169081
	recipe = AddRecipe(169081, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(600, 600, 600, 800, 1000)
	recipe:SetCraftedItem(112377, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- Ocean Tarot -- 175389
	recipe = AddRecipe(175389, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(600, 600, 600, 602, 605)
	recipe:SetCraftedItem(118601, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_TRINKET")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- Laughing Tarot -- 175390
	recipe = AddRecipe(175390, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(600, 600, 600, 602, 605)
	recipe:SetCraftedItem(118602, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_TRINKET")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- Savage Tarot -- 175392
	recipe = AddRecipe(175392, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(600, 600, 600, 602, 605)
	recipe:SetCraftedItem(118603, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_TRINKET")
	recipe:AddFilters(F.CASTER, F.DPS, F.HEALER)
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- Secrets of Draenor Inscription -- 177045
	recipe = AddRecipe(177045, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(600, 600, 600, 650, 700)
	recipe:SetCraftedItem(119297, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- Warbinder's Ink -- 178497
	recipe = AddRecipe(178497, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 600, 600, 600)
	recipe:SetCraftedItem(113111, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddCustom("DRAENOR_DEFAULT")

	-- The Spirit of War -- 182125
	recipe = AddRecipe(182125, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 700, 700)
	recipe:SetRecipeItem(122713, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(113111, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddVendor(91031, 91404)

	-- Glyph of the Sun -- 182158
	recipe = AddRecipe(182158, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 300, 450, 600)
	recipe:SetCraftedItem(118061, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddDiscovery("DISCOVERY_INSC_DREAMS")

	-- Mass Mill Frostweed -- 190381
	recipe = AddRecipe(190381, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 1, 1, 1)
	recipe:SetRecipeItem(128409, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(114931, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddVendor(91031, 91404)

	-- Mass Mill Fireweed -- 190382
	recipe = AddRecipe(190382, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 1, 1, 1)
	recipe:SetRecipeItem(128410, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(114931, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddVendor(91031, 91404)

	-- Mass Mill Gorgrond Flytrap -- 190383
	recipe = AddRecipe(190383, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 1, 1, 1)
	recipe:SetRecipeItem(128411, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(114931, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddVendor(91031, 91404)

	-- Mass Mill Starflower -- 190384
	recipe = AddRecipe(190384, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 1, 1, 1)
	recipe:SetRecipeItem(128412, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(114931, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddVendor(91031, 91404)

	-- Mass Mill Nagrand Arrowbloom -- 190385
	recipe = AddRecipe(190385, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 1, 1, 1)
	recipe:SetRecipeItem(128413, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(114931, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddVendor(91031, 91404)

	-- Mass Mill Talador Orchid -- 190386
	recipe = AddRecipe(190386, V.WOD, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 1, 1, 1)
	recipe:SetRecipeItem(128414, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(114931, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddVendor(91031, 91404)

	-- ----------------------------------------------------------------------------
	-- Legion.
	-- ----------------------------------------------------------------------------
	-- Darkmoon Card of the Legion -- 191659
	recipe = AddRecipe(191659, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 730, 740)
	recipe:SetCraftedItem(128712, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(39957)

	-- Scroll of Forgotten Knowledge -- 192802
	recipe = AddRecipe(192802, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 720, 740)
	recipe:SetCraftedItem(128980, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(40052)

	-- Steamy Romance Novel Kit -- 192804
	recipe = AddRecipe(192804, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 720, 740)
	recipe:SetCraftedItem(129211, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(39956, 39960)

	-- Vantus Rune: Ursoc -- 192808
	recipe = AddRecipe(192808, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 720, 740)
	recipe:SetRecipeItem(139635, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128987, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(100497)

	-- Vantus Rune: Nythendra -- 192809
	recipe = AddRecipe(192809, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 720, 740)
	recipe:SetRecipeItem(139636, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128988, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(103160)

	-- Vantus Rune: Il'gynoth, The Heart of Corruption -- 192810
	recipe = AddRecipe(192810, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 720, 740)
	recipe:SetRecipeItem(139637, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128989, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(105393)

	-- Vantus Rune: Dragons of Nightmare -- 192811
	recipe = AddRecipe(192811, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 720, 740)
	recipe:SetRecipeItem(139638, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128990, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(102679)

	-- Vantus Rune: Xavius -- 192812
	recipe = AddRecipe(192812, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 720, 740)
	recipe:SetRecipeItem(139639, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128991, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(103769)

	-- Vantus Rune: Elerethe Renferal -- 192813
	recipe = AddRecipe(192813, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 720, 740)
	recipe:SetRecipeItem(139640, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128992, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(111000)

	-- Vantus Rune: Cenarius -- 192814
	recipe = AddRecipe(192814, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 720, 740)
	recipe:SetRecipeItem(139641, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128993, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(104636)

	-- Vantus Rune: Skorpyron -- 192815
	recipe = AddRecipe(192815, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(139642, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128994, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(102263)

	-- Vantus Rune: Chronomatic Anomaly -- 192816
	recipe = AddRecipe(192816, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(139643, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128995, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(104415)

	-- Vantus Rune: Trilliax -- 192817
	recipe = AddRecipe(192817, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(139644, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128996, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(104288)

	-- Vantus Rune: Spellblade Aluriel -- 192818
	recipe = AddRecipe(192818, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(139645, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128997, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(107699)

	-- Vantus Rune: Tichondrius -- 192819
	recipe = AddRecipe(192819, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(139646, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128998, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(103685)

	-- Vantus Rune: High Botanist Tel'arn -- 192820
	recipe = AddRecipe(192820, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(139647, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128999, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(104528)

	-- Vantus Rune: Krosus -- 192821
	recipe = AddRecipe(192821, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(139648, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129000, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(101002)

	-- Vantus Rune: Star Augur Etraeus -- 192822
	recipe = AddRecipe(192822, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(139649, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129001, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(103758)

	-- Vantus Rune: Grand Magistrix Elisande -- 192823
	recipe = AddRecipe(192823, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(139650, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129002, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(110965)

	-- Vantus Rune: Gul'dan -- 192824
	recipe = AddRecipe(192824, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(139651, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129003, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(105503)

	-- Glyph of Ghostly Fade -- 192838
	recipe = AddRecipe(192838, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(137730, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129017, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PRIEST)
	recipe:AddVendor(93544)

	-- Glyph of Fel Imp -- 192839
	recipe = AddRecipe(192839, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(137731, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129018, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARLOCK)
	recipe:AddVendor(93544)

	-- Glyph of Sparkles -- 192840
	recipe = AddRecipe(192840, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(137732, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129019, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MAGE)
	recipe:AddVendor(93544)

	-- Glyph of Blackout -- 192841
	recipe = AddRecipe(192841, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(137733, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139358, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.ROGUE)
	recipe:AddVendor(93544)

	-- Glyph of the Sentinel -- 192842
	recipe = AddRecipe(192842, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(137734, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129021, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddVendor(93544)

	-- Glyph of Crackling Crane Lightning -- 192843
	recipe = AddRecipe(192843, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(137735, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139338, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MONK)
	recipe:AddVendor(93544)

	-- Glyph of the Spectral Raptor -- 192844
	recipe = AddRecipe(192844, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(137736, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(137287, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.SHAMAN)
	recipe:AddVendor(93544)

	-- Glyph of Stellar Flare -- 192845
	recipe = AddRecipe(192845, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(137737, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(137269, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.HUNTER)
	recipe:AddVendor(93544)

	-- Glyph of the Queen -- 192846
	recipe = AddRecipe(192846, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(137738, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(137293, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PALADIN)
	recipe:AddVendor(93544)

	-- Glyph of Fel Touched Souls -- 192849
	recipe = AddRecipe(192849, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(137741, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129028, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DEMONHUNTER)
	recipe:AddQuest(39935, 40057)

	-- Glyph of Crackling Flames -- 192850
	recipe = AddRecipe(192850, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(137742, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129029, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DEMONHUNTER)
	recipe:AddQuest(39940)

	-- Glyph of Fallow Wings -- 192851
	recipe = AddRecipe(192851, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(137743, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139417, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DEMONHUNTER)
	recipe:AddQuest(39938, 40060)

	-- Glyph of Tattered Wings -- 192852
	recipe = AddRecipe(192852, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(137744, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139436, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DEMONHUNTER)
	recipe:AddQuest(39943)

	-- Prophecy Tarot -- 192854
	recipe = AddRecipe(192854, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetCraftedItem(128978, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_TRINKET")
	recipe:AddQuest(39933)

	-- Prophecy Tarot -- 192855
	recipe = AddRecipe(192855, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137745, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128978, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_TRINKET")
	recipe:AddWorldEvent("DARKMOON_FAIRE")
	recipe:AddVendor(14847)

	-- Prophecy Tarot -- 192856
	recipe = AddRecipe(192856, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(137746, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128978, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_TRINKET")
	recipe:AddWorldEvent("DARKMOON_FAIRE")
	recipe:AddVendor(14847)

	-- Darkmoon Card of the Legion -- 192859
	recipe = AddRecipe(192859, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(137790, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128712, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddWorldEvent("DARKMOON_FAIRE")
	recipe:AddVendor(14847)

	-- Vantus Rune: Ursoc -- 192860
	recipe = AddRecipe(192860, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(137747, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128987, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(100497)

	-- Vantus Rune: Nythendra -- 192861
	recipe = AddRecipe(192861, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(137748, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128988, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(103160)

	-- Vantus Rune: Il'gynoth, The Heart of Corruption -- 192862
	recipe = AddRecipe(192862, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(137749, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128989, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(105393)

	-- Vantus Rune: Dragons of Nightmare -- 192863
	recipe = AddRecipe(192863, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(137750, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128990, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(102679)

	-- Vantus Rune: Xavius -- 192864
	recipe = AddRecipe(192864, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(137751, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128991, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(103769)

	-- Vantus Rune: Elerethe Renferal -- 192865
	recipe = AddRecipe(192865, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(137752, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128992, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(111000)

	-- Vantus Rune: Cenarius -- 192866
	recipe = AddRecipe(192866, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(137753, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128993, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(104636)

	-- Vantus Rune: Skorpyron -- 192867
	recipe = AddRecipe(192867, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137754, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128994, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(102263)

	-- Vantus Rune: Chronomatic Anomaly -- 192868
	recipe = AddRecipe(192868, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137755, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128995, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(104415)

	-- Vantus Rune: Trilliax -- 192869
	recipe = AddRecipe(192869, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137756, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128996, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(104288)

	-- Vantus Rune: Spellblade Aluriel -- 192870
	recipe = AddRecipe(192870, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137757, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128997, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(107699)

	-- Vantus Rune: Tichondrius -- 192871
	recipe = AddRecipe(192871, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137758, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128998, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(103685)

	-- Vantus Rune: High Botanist Tel'arn -- 192872
	recipe = AddRecipe(192872, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137759, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128999, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(104528)

	-- Vantus Rune: Krosus -- 192873
	recipe = AddRecipe(192873, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137760, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129000, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(101002)

	-- Vantus Rune: Star Augur Etraeus -- 192874
	recipe = AddRecipe(192874, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137761, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129001, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(103758)

	-- Vantus Rune: Grand Magistrix Elisande -- 192875
	recipe = AddRecipe(192875, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137762, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129002, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(110965)

	-- Vantus Rune: Gul'dan -- 192876
	recipe = AddRecipe(192876, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137763, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129003, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(105503)

	-- Darkmoon Card of the Legion -- 192890
	recipe = AddRecipe(192890, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137791, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128712, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddWorldEvent("DARKMOON_FAIRE")
	recipe:AddVendor(14847)

	-- Vantus Rune: Ursoc -- 192891
	recipe = AddRecipe(192891, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137767, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128987, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddQuest(41665)

	-- Vantus Rune: Nythendra -- 192892
	recipe = AddRecipe(192892, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137768, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128988, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddQuest(41666)

	-- Vantus Rune: Il'gynoth, The Heart of Corruption -- 192893
	recipe = AddRecipe(192893, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137769, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128989, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddQuest(41668)

	-- Vantus Rune: Dragons of Nightmare -- 192894
	recipe = AddRecipe(192894, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137770, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128990, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddQuest(41664)

	-- Vantus Rune: Xavius -- 192895
	recipe = AddRecipe(192895, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137771, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128991, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddQuest(41667)

	-- Vantus Rune: Elerethe Renferal -- 192896
	recipe = AddRecipe(192896, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137772, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128992, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddQuest(41663)

	-- Vantus Rune: Cenarius -- 192897
	recipe = AddRecipe(192897, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137773, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128993, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddRepVendor(FAC.THE_WARDENS, REP.REVERED, 107379)

	-- Vantus Rune: Skorpyron -- 192898
	recipe = AddRecipe(192898, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(137774, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128994, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddRepVendor(FAC.COURT_OF_FARONDIS, REP.REVERED, 107376)

	-- Vantus Rune: Chronomatic Anomaly -- 192899
	recipe = AddRecipe(192899, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(137775, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128995, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddCustom("PROF_FISH_AZSU")

	-- Vantus Rune: Trilliax -- 192900
	recipe = AddRecipe(192900, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(137776, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128996, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddRepVendor(FAC.COURT_OF_FARONDIS, REP.REVERED, 107376)

	-- Vantus Rune: Spellblade Aluriel -- 192901
	recipe = AddRecipe(192901, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(137777, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128997, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddRepVendor(FAC.THE_WARDENS, REP.REVERED, 107379)

	-- Vantus Rune: Tichondrius -- 192902
	recipe = AddRecipe(192902, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(137778, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128998, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddFilters(F.RAID)
	recipe:AddMobDrop(109943)

	-- Vantus Rune: High Botanist Tel'arn -- 192903
	recipe = AddRecipe(192903, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(137779, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(128999, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddRepVendor(FAC.COURT_OF_FARONDIS, REP.REVERED, 107376)

	-- Vantus Rune: Krosus -- 192904
	recipe = AddRecipe(192904, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(137780, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129000, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddRepVendor(FAC.COURT_OF_FARONDIS, REP.REVERED, 107376)

	-- Vantus Rune: Star Augur Etraeus -- 192905
	recipe = AddRecipe(192905, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(137781, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129001, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddRepVendor(FAC.THE_WARDENS, REP.REVERED, 107379)

	-- Vantus Rune: Grand Magistrix Elisande -- 192906
	recipe = AddRecipe(192906, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(137782, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129002, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddCustom("ARCHAEOLOGY_HIGHBORNE")

	-- Vantus Rune: Gul'dan -- 192907
	recipe = AddRecipe(192907, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetCraftedItem(129003, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddMobDrop(105503)

	-- Aqual Mark -- 209510
	recipe = AddRecipe(209510, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(136705, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(136692, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_RELIC")
	recipe:AddMobDrop(96028)
	recipe:AddCustom("HEROIC")

	-- Straszan Mark -- 209511
	recipe = AddRecipe(209511, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(136706, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(136692, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_RELIC")
	recipe:AddVendor(107109)

	-- Mass Mill Aethril -- 209658
	recipe = AddRecipe(209658, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 1, 1, 1)
	recipe:SetCraftedItem(129100, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddQuest(39954)

	-- Mass Mill Dreamleaf -- 209659
	recipe = AddRecipe(209659, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 1, 1, 1)
	recipe:SetCraftedItem(136926, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddQuest(39954)

	-- Mass Mill Foxflower -- 209660
	recipe = AddRecipe(209660, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 1, 1, 1)
	recipe:SetCraftedItem(128304, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddQuest(39954)

	-- Mass Mill Fjarnskaggl -- 209661
	recipe = AddRecipe(209661, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 1, 1, 1)
	recipe:SetCraftedItem(129032, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddQuest(40065)

	-- Mass Mill Starlight Rose -- 209662
	recipe = AddRecipe(209662, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 1, 1, 1)
	recipe:SetCraftedItem(129302, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddQuest(39954)

	-- Mass Mill Felwort -- 209664
	recipe = AddRecipe(209664, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 1, 1, 1)
	recipe:SetCraftedItem(129034, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddQuest(39954)

	-- Mass Mill Yseralline Seeds -- 210116
	recipe = AddRecipe(210116, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 1, 1, 1)
	recipe:SetCraftedItem(129032, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddQuest(39954)

	-- Songs of Battle -- 210653
	recipe = AddRecipe(210653, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(136852, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(92195)

	-- Songs of Peace -- 210654
	recipe = AddRecipe(210654, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 730, 750, 770)
	recipe:SetCraftedItem(136856, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(64691)

	-- Songs of the Legion -- 210656
	recipe = AddRecipe(210656, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 110, 115, 120)
	recipe:SetCraftedItem(136857, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(30710, 30716)

	-- Unwritten Legend -- 222408
	recipe = AddRecipe(222408, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 730, 750, 770)
	recipe:SetCraftedItem(128979, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddMobDrop(102387)

	-- Songs of the Horde -- 223940
	recipe = AddRecipe(223940, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(700, 700, 730, 750, 770)
	recipe:SetCraftedItem(140567, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(46716)

	-- Songs of the Alliance -- 223941
	recipe = AddRecipe(223941, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(140568, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(30713)

	-- Glyph of Cracked Ice -- 225522
	recipe = AddRecipe(225522, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141030, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(137274, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DK)
	recipe:AddVendor(93544, 128702)

	-- Glyph of the Chilled Shell -- 225524
	recipe = AddRecipe(225524, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141032, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139271, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DK)
	recipe:AddWorldDrop(Z.BROKEN_ISLES)

	-- Glyph of the Crimson Shell -- 225525
	recipe = AddRecipe(225525, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141033, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139270, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DK)
	recipe:AddVendor(93544, 128702)

	-- Glyph of Fel Wings -- 225527
	recipe = AddRecipe(225527, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141035, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139435, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DEMONHUNTER)
	recipe:AddWorldDrop(Z.BROKEN_ISLES)

	-- Glyph of Fel-Enemies -- 225528
	recipe = AddRecipe(225528, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141036, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139437, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DEMONHUNTER)
	recipe:AddVendor(93544)

	-- Glyph of Mana Touched Souls -- 225529
	recipe = AddRecipe(225529, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141037, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139362, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.HUNTER, F.DEMONHUNTER)
	recipe:AddVendor(93544, 128702)

	-- Glyph of Shadow-Enemies -- 225530
	recipe = AddRecipe(225530, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141038, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139438, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DEMONHUNTER)
	recipe:AddVendor(97361)

	-- Glyph of the Doe -- 225531
	recipe = AddRecipe(225531, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141039, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(140630, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddWorldDrop(Z.BROKEN_ISLES)

	-- Glyph of the Feral Chameleon -- 225532
	recipe = AddRecipe(225532, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141040, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(136825, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddVendor(93544, 128702)

	-- Glyph of the Forest Path -- 225533
	recipe = AddRecipe(225533, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141041, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139278, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddVendor(12022)

	-- Glyph of Autumnal Bloom -- 225534
	recipe = AddRecipe(225534, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141042, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(136826, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddVendor(93544, 128702)

	-- Glyph of Arachnophobia -- 225535
	recipe = AddRecipe(225535, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141043, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(137249, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.HUNTER)
	recipe:AddWorldDrop(Z.BROKEN_ISLES)

	-- Glyph of Nesingwary's Nemeses -- 225536
	recipe = AddRecipe(225536, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141044, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(137250, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.HUNTER)
	recipe:AddVendor(94100)

	-- Glyph of the Dire Stable -- 225538
	recipe = AddRecipe(225538, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141046, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139288, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.HUNTER)
	recipe:AddVendor(93544, 128702)

	-- Glyph of the Goblin Anti-Grav Flare -- 225539
	recipe = AddRecipe(225539, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141047, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(137267, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.HUNTER)
	recipe:AddVendor(93539)

	-- Glyph of the Hook -- 225541
	recipe = AddRecipe(225541, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141049, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(137239, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.HUNTER)
	recipe:AddWorldDrop(Z.BROKEN_ISLES)

	-- Glyph of the Trident -- 225543
	recipe = AddRecipe(225543, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141051, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(137238, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.HUNTER)
	recipe:AddWorldDrop(Z.BROKEN_ISLES)

	-- Glyph of Polymorphic Proportions -- 225545
	recipe = AddRecipe(225545, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141052, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139352, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MAGE)
	recipe:AddMobDrop(111057)

	-- Glyph of Smolder -- 225546
	recipe = AddRecipe(225546, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141053, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139348, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MAGE)
	recipe:AddWorldDrop(Z.BROKEN_ISLES)

	-- Glyph of Yu'lon's Grace -- 225547
	recipe = AddRecipe(225547, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141055, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(139339, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MONK)
	recipe:AddVendor(93544, 128702)

	-- Glyph of Burnout -- 225548
	recipe = AddRecipe(225548, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141056, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139442, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.ROGUE)
	recipe:AddVendor(106887)

	-- Glyph of Flash Bang -- 225549
	recipe = AddRecipe(225549, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141057, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129020, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.ROGUE)
	recipe:AddVendor(97366)

	-- Glyph of Critterhex -- 225550
	recipe = AddRecipe(225550, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141058, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139289, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.SHAMAN)
	recipe:AddVendor(97363)

	-- Glyph of Flickering -- 225551
	recipe = AddRecipe(225551, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141059, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(137289, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.SHAMAN)
	recipe:AddVendor(18072)

	-- Glyph of Pebbles -- 225552
	recipe = AddRecipe(225552, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141060, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(137288, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.SHAMAN)
	recipe:AddWorldDrop(Z.BROKEN_ISLES)

	-- Glyph of the Inquisitor's Eye -- 225554
	recipe = AddRecipe(225554, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141062, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(137191, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARLOCK)
	recipe:AddVendor(93544, 128702)

	-- Glyph of the Observer -- 225555
	recipe = AddRecipe(225555, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141063, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139312, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.INSTANCE, F.WARLOCK)
	recipe:AddMobDrop(17380)

	-- Glyph of the Shivarra -- 225556
	recipe = AddRecipe(225556, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141064, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139310, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARLOCK)
	recipe:AddVendor(97360)

	-- Glyph of the Voidlord -- 225558
	recipe = AddRecipe(225558, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141066, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139311, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARLOCK)
	recipe:AddWorldDrop(Z.BROKEN_ISLES)

	-- Glyph of Wrathguard -- 225559
	recipe = AddRecipe(225559, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 745, 770)
	recipe:SetRecipeItem(141067, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(139315, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARLOCK)
	recipe:AddVendor(120898)

	-- Glyph of the Blazing Savior -- 225560
	recipe = AddRecipe(225560, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141068, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(137188, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARRIOR)
	recipe:AddVendor(93544, 128702)

	-- Codex of the Tranquil Mind -- 226248
	recipe = AddRecipe(226248, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 735, 770)
	recipe:SetRecipeItem(137729, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(141333, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddWorldDrop(Z.BROKEN_ISLES)

	-- Tome of the Tranquil Mind -- 227043
	recipe = AddRecipe(227043, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 720, 740)
	recipe:SetRecipeItem(141447, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(141446, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddCustom("TRANQUIL_MIND")

	-- Codex of the Tranquil Mind -- 227239
	recipe = AddRecipe(227239, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 735, 770)
	recipe:SetRecipeItem(141591, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(141333, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddFilters(F.INSTANCE)
	recipe:AddCustom("LEGION_BOSSES")

	-- Codex of the Tranquil Mind -- 227240
	recipe = AddRecipe(227240, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 735, 770)
	recipe:SetRecipeItem(141592, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(141333, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddFilters(F.INSTANCE)
	recipe:AddCustom("LEGION_BOSSES")

	-- Glyph of Falling Thunder -- 228381
	recipe = AddRecipe(228381, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(141900, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(141898, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARRIOR)
	recipe:AddVendor(93544)

	-- Vantus Rune: Odyn -- 229177
	recipe = AddRecipe(229177, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(142110, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(142101, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddMobDrop(114263)

	-- Vantus Rune: Guarm -- 229178
	recipe = AddRecipe(229178, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(142111, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(142102, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddMobDrop(114344)

	-- Vantus Rune: Helya -- 229179
	recipe = AddRecipe(229179, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(142112, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(142103, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddMobDrop(114537)

	-- Vantus Rune: Odyn -- 229180
	recipe = AddRecipe(229180, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(142104, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(142101, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddMobDrop(114263)

	-- Vantus Rune: Guarm -- 229181
	recipe = AddRecipe(229181, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(142111, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(142102, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddMobDrop(114344)

	-- Vantus Rune: Helya -- 229182
	recipe = AddRecipe(229182, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(142106, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(142103, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddMobDrop(114537)

	-- Vantus Rune: Odyn -- 229183
	recipe = AddRecipe(229183, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(142105, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(142101, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddMobDrop(107544)

	-- Vantus Rune: Guarm -- 229184
	recipe = AddRecipe(229184, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(142108, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(142102, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddMobDrop(110378)

	-- Vantus Rune: Helya -- 229185
	recipe = AddRecipe(229185, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(142109, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(142103, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddMobDrop(108829)

	-- Glyph of Crackling Ox Lightning -- 232274
	recipe = AddRecipe(232274, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(143615, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129022, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MONK)
	recipe:AddWorldDrop(Z.KARAZHAN)

	-- Glyph of the Trusted Steed -- 232275
	recipe = AddRecipe(232275, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 700, 725, 750)
	recipe:SetRecipeItem(143616, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(143588, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PALADIN)
	recipe:AddWorldDrop(Z.KARAZHAN)

	-- Glyph of Twilight Bloom -- 233278
	recipe = AddRecipe(233278, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 300, 450, 600)
	recipe:SetRecipeItem(143751, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(143750, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddMobDrop(104528)

	-- Vantus Rune: Tomb of Sargeras -- 238577
	recipe = AddRecipe(238577, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 740, 750, 760)
	recipe:SetRecipeItem(146411, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(146406, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.TOMB_OF_SARGERAS)

	-- Vantus Rune: Tomb of Sargeras -- 238578
	recipe = AddRecipe(238578, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 760, 770, 780)
	recipe:SetRecipeItem(146412, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(146406, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddMobDrop(117269)

	-- Vantus Rune: Tomb of Sargeras -- 238579
	recipe = AddRecipe(238579, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(146413, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(146406, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.TOMB_OF_SARGERAS)

	-- Glyph of the Shadow Succubus -- 240272
	recipe = AddRecipe(240272, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 745, 770)
	recipe:SetRecipeItem(147120, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(147119, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARLOCK)
	recipe:AddCustom("KISS_SYAITH")

	-- Glyph of Ember Shards -- 246982
	recipe = AddRecipe(246982, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 745, 770)
	recipe:SetRecipeItem(151539, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(151538, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARLOCK)
	recipe:AddMobDrop(117269)

	-- Glyph of Floating Shards -- 246984
	recipe = AddRecipe(246984, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 720, 745, 770)
	recipe:SetRecipeItem(151541, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(151540, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARLOCK)
	recipe:AddVendor(120898)

	-- Glyph of Fel-Touched Shards -- 246999
	recipe = AddRecipe(246999, V.LEGION, Q.RARE)
	recipe:SetSkillLevels(1, 1, 720, 745, 770)
	recipe:SetRecipeItem(151543, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(151542, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.WARLOCK)
	recipe:AddMobDrop(126946)

	-- Vantus Rune: Antorus, the Burning Throne -- 247614
	recipe = AddRecipe(247614, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(151654, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(151610, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.ANTORUS__THE_BURNING_THRONE)

	-- Vantus Rune: Antorus, the Burning Throne -- 247615
	recipe = AddRecipe(247615, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(151655, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(151610, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.ANTORUS__THE_BURNING_THRONE)

	-- Vantus Rune: Antorus, the Burning Throne -- 247616
	recipe = AddRecipe(247616, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 780, 790, 800)
	recipe:SetRecipeItem(151656, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(151610, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.ANTORUS__THE_BURNING_THRONE)

	-- Mass Mill Astral Glory -- 247861
	recipe = AddRecipe(247861, V.LEGION, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 1, 1, 1)
	recipe:SetRecipeItem(152725, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(129034, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddRepVendor(FAC.ARGUSSIAN_REACH, REP.FRIENDLY, 127151)

	-- Glyph of the Lightspawn -- 254227
	recipe = AddRecipe(254227, V.LEGION, Q.UNCOMMON)
	recipe:SetSkillLevels(500, 500, 720, 745, 770)
	recipe:SetRecipeItem(153032, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153031, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PRIEST)
	recipe:AddRepVendor(FAC.ARMY_OF_THE_LIGHT, REP.FRIENDLY, 127120)

	-- Glyph of the Voidling -- 254231
	recipe = AddRecipe(254231, V.LEGION, Q.UNCOMMON)
	recipe:SetSkillLevels(500, 500, 720, 745, 770)
	recipe:SetRecipeItem(153034, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153033, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PRIEST)
	recipe:AddMobDrop(126887)

	-- Glyph of Dark Absolution -- 254238
	recipe = AddRecipe(254238, V.LEGION, Q.RARE)
	recipe:SetSkillLevels(500, 500, 720, 745, 770)
	recipe:SetRecipeItem(153037, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153036, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.PRIEST)
	recipe:AddWorldDrop(Z.THE_SEAT_OF_THE_TRIUMVIRATE)

	-- ----------------------------------------------------------------------------
	-- Battle for Azeroth.
	-- ----------------------------------------------------------------------------
	-- Mass Mill Riverbud -- 256217
	recipe = AddRecipe(256217, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(152505, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Mass Mill Star Moss -- 256218
	recipe = AddRecipe(256218, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(152506, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Mass Mill Akunda's Bite -- 256219
	recipe = AddRecipe(256219, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(152507, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Mass Mill Winter's Kiss -- 256220
	recipe = AddRecipe(256220, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(152508, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Mass Mill Siren's Pollen -- 256221
	recipe = AddRecipe(256221, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(152509, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Mass Mill Sea Stalk -- 256223
	recipe = AddRecipe(256223, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(152511, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Codex of the Quiet Mind -- 256232
	recipe = AddRecipe(256232, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(153646, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Codex of the Quiet Mind -- 256233
	recipe = AddRecipe(256233, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 95, 100, 105)
	recipe:SetCraftedItem(153646, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Codex of the Quiet Mind -- 256234
	recipe = AddRecipe(256234, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 125, 137, 150)
	recipe:SetRecipeItem(162358, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153646, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.TORTOLLAN_SEEKERS, REP.REVERED, 134345, 135793)

	-- Tome of the Quiet Mind -- 256235
	recipe = AddRecipe(256235, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(153647, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Tome of the Quiet Mind -- 256236
	recipe = AddRecipe(256236, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(153647, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Tome of the Quiet Mind -- 256237
	recipe = AddRecipe(256237, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 75, 92, 110)
	recipe:SetRecipeItem(162376, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153647, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.TORTOLLAN_SEEKERS, REP.REVERED, 134345, 135793)

	-- Darkmoon Card of War -- 256245
	recipe = AddRecipe(256245, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 110, 115, 120)
	recipe:SetCraftedItem(153598, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Darkmoon Card of War -- 256246
	recipe = AddRecipe(256246, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 150, 150, 150)
	recipe:SetRecipeItem(162377, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153598, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.TORTOLLAN_SEEKERS, REP.REVERED, 134345, 135793)

	-- Inscribed Vessel of Mysticism -- 256247
	recipe = AddRecipe(256247, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 95, 100, 105)
	recipe:SetCraftedItem(153643, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Inscribed Vessel of Mysticism -- 256248
	recipe = AddRecipe(256248, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(110, 110, 120, 125, 130)
	recipe:SetCraftedItem(153643, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Inscribed Vessel of Mysticism -- 256249
	recipe = AddRecipe(256249, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(110, 110, 150, 150, 150)
	recipe:SetRecipeItem(162352, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153643, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddRepVendor(FAC.TORTOLLAN_SEEKERS, REP.REVERED, 134345, 135793)

	-- Contract: Proudmoore Admiralty -- 256275
	recipe = AddRecipe(256275, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(153661, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130399, 153811)

	-- Contract: Proudmoore Admiralty -- 256276
	recipe = AddRecipe(256276, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetRecipeItem(162359, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153661, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.PROUDMOORE_ADMIRALTY, REP.FRIENDLY, 135808)

	-- Contract: Proudmoore Admiralty -- 256277
	recipe = AddRecipe(256277, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 132, 150)
	recipe:SetRecipeItem(162360, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153661, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(52389)

	-- Contract: Order of Embers -- 256278
	recipe = AddRecipe(256278, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(153662, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130399, 153811)

	-- Contract: Order of Embers -- 256279
	recipe = AddRecipe(256279, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 105, 125, 145)
	recipe:SetRecipeItem(162361, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153662, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.ORDER_OF_EMBERS, REP.HONORED, 135815)

	-- Contract: Order of Embers -- 256280
	recipe = AddRecipe(256280, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 115, 132, 150)
	recipe:SetRecipeItem(162362, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153662, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(52390)

	-- Contract: Storm's Wake -- 256281
	recipe = AddRecipe(256281, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(153663, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130399, 153811)

	-- Contract: Storm's Wake -- 256282
	recipe = AddRecipe(256282, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(105, 105, 105, 125, 145)
	recipe:SetRecipeItem(162363, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153663, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.STORMS_WAKE, REP.HONORED, 135800)

	-- Contract: Storm's Wake -- 256283
	recipe = AddRecipe(256283, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(115, 115, 115, 132, 150)
	recipe:SetRecipeItem(162364, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153663, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:AddQuest(52391)

	-- Contract: Zandalari Empire -- 256284
	recipe = AddRecipe(256284, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(153664, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130901)

	-- Contract: Zandalari Empire -- 256285
	recipe = AddRecipe(256285, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(105, 105, 105, 125, 145)
	recipe:SetRecipeItem(162753, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153664, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.ZANDALARI_EMPIRE, REP.HONORED, 131287)

	-- Contract: Zandalari Empire -- 256286
	recipe = AddRecipe(256286, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(115, 115, 115, 132, 150)
	recipe:SetRecipeItem(162366, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153664, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(52395)

	-- Contract: Talanji's Expedition -- 256287
	recipe = AddRecipe(256287, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(153665, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130901)

	-- Contract: Talanji's Expedition -- 256288
	recipe = AddRecipe(256288, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(105, 105, 105, 125, 145)
	recipe:SetRecipeItem(162754, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153665, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.TALANJIS_EXPEDITION, REP.HONORED, 135459)

	-- Contract: Talanji's Expedition -- 256289
	recipe = AddRecipe(256289, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(115, 115, 115, 132, 150)
	recipe:SetRecipeItem(162368, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153665, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(52396)

	-- Contract: Voldunai -- 256290
	recipe = AddRecipe(256290, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(153666, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130901)

	-- Contract: Voldunai -- 256291
	recipe = AddRecipe(256291, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(105, 105, 105, 125, 145)
	recipe:SetRecipeItem(162755, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153666, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.VOLDUNAI, REP.HONORED, 135804)

	-- Contract: Voldunai -- 256293
	recipe = AddRecipe(256293, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(115, 115, 115, 132, 150)
	recipe:SetRecipeItem(162370, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153666, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(52397)

	-- Contract: Tortollan Seekers -- 256294
	recipe = AddRecipe(256294, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(153667, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Contract: Tortollan Seekers -- 256295
	recipe = AddRecipe(256295, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(105, 105, 105, 125, 145)
	recipe:SetRecipeItem(162371, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153667, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.TORTOLLAN_SEEKERS, REP.HONORED, 134345, 135793)

	-- Contract: Tortollan Seekers -- 256296
	recipe = AddRecipe(256296, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(115, 115, 115, 132, 150)
	recipe:SetRecipeItem(162372, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153667, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(52393)

	-- Contract: Champions of Azeroth -- 256297
	recipe = AddRecipe(256297, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(153668, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Contract: Champions of Azeroth -- 256298
	recipe = AddRecipe(256298, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(105, 105, 105, 125, 145)
	recipe:SetRecipeItem(162373, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153668, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.TORTOLLAN_SEEKERS, REP.HONORED, 134345, 135793)

	-- Contract: Champions of Azeroth -- 256299
	recipe = AddRecipe(256299, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(115, 115, 115, 132, 150)
	recipe:SetRecipeItem(162374, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153668, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(52394)

	-- Sanguine Feather Quill of Lana'thel -- 256301
	recipe = AddRecipe(256301, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 150, 150, 150)
	recipe:SetCraftedItem(153670, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(40537)

	-- Vantus Rune: Uldir -- 256303
	recipe = AddRecipe(256303, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 150, 150, 150)
	recipe:SetRecipeItem(162374, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153673, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddMobDrop(140853)

	-- Vantus Rune: Uldir -- 256304
	recipe = AddRecipe(256304, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 150, 150, 150)
	recipe:SetRecipeItem(162124, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153673, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddMobDrop(140853)

	-- Vantus Rune: Uldir -- 256305
	recipe = AddRecipe(256305, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 150, 150, 150)
	recipe:SetRecipeItem(162125, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(153673, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddMobDrop(140853)

	-- Mass Mill Anchor Weed -- 256308
	recipe = AddRecipe(256308, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(152510, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Blood Contract: Sacrifice -- 259665
	recipe = AddRecipe(259665, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 150, 150, 150)
	recipe:SetCraftedItem(156563, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(49873)

	-- War-Scroll of Intellect -- 264766
	recipe = AddRecipe(264766, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(158201, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- War-Scroll of Battle Shout -- 264767
	recipe = AddRecipe(264767, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(158202, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- War-Scroll of Fortitude -- 264769
	recipe = AddRecipe(264769, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(158204, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Ultramarine Ink -- 264776
	recipe = AddRecipe(264776, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 25, 37, 50)
	recipe:SetCraftedItem(158187, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Crimson Ink -- 264777
	recipe = AddRecipe(264777, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 25, 37, 50)
	recipe:SetCraftedItem(158188, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Viridescent Ink -- 264778
	recipe = AddRecipe(264778, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 25, 37, 50)
	recipe:SetCraftedItem(158189, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Scroll of Unlocking -- 269065
	recipe = AddRecipe(269065, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(159825, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_SCROLL")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Honorable Combatant's Etched Vessel -- 269740
	recipe = AddRecipe(269740, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 95, 100, 105)
	recipe:SetCraftedItem(159940, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Honorable Combatant's Etched Vessel -- 269741
	recipe = AddRecipe(269741, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 115, 130, 145)
	recipe:SetRecipeItem(162353, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(159940, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddVendor(142552, 142564)

	-- Honorable Combatant's Etched Vessel -- 269742
	recipe = AddRecipe(269742, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 125, 137, 150)
	recipe:SetRecipeItem(162354, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(159940, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddVendor(142552, 142564)

	-- Glyph of the Dolphin -- 276059
	recipe = AddRecipe(276059, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 75, 100, 125)
	recipe:SetRecipeItem(162023, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(162022, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddRepVendor(FAC.TORTOLLAN_SEEKERS, REP.REVERED, 134345, 135793)

	-- Glyph of the Tideskipper -- 276088
	recipe = AddRecipe(276088, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 75, 100, 125)
	recipe:SetRecipeItem(162028, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(162027, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddMobDrop(139968)

	-- Glyph of the Humble Flyer -- 276121
	recipe = AddRecipe(276121, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 150, 150, 150)
	recipe:SetRecipeItem(162030, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(162029, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddCustom("HUMBLE_FLYER")

	-- Crimson Ink Well -- 278422
	recipe = AddRecipe(278422, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetCraftedItem(165745, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Darkmoon Card of War -- 278527
	recipe = AddRecipe(278527, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 95, 100, 105)
	recipe:SetCraftedItem(153598, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Sinister Combatant's Etched Vessel -- 282803
	recipe = AddRecipe(282803, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(115, 115, 125, 130, 135)
	recipe:SetCraftedItem(164682, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Sinister Combatant's Etched Vessel -- 282804
	recipe = AddRecipe(282804, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(115, 115, 140, 145, 150)
	recipe:SetRecipeItem(165306, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(164682, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddVendor(142552, 142564)

	-- Sinister Combatant's Etched Vessel -- 282805
	recipe = AddRecipe(282805, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(115, 115, 145, 147, 150)
	recipe:SetRecipeItem(165307, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(164682, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddVendor(142552, 142564)

	-- Contract: 7th Legion -- 284292
	recipe = AddRecipe(284292, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(165016, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130399, 153811)

	-- Contract: 7th Legion -- 284293
	recipe = AddRecipe(284293, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 135, 142, 150)
	recipe:SetRecipeItem(166278, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(165016, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.SEVENTH_LEGION, REP.HONORED, 135446)

	-- Contract: 7th Legion -- 284294
	recipe = AddRecipe(284294, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(115, 115, 145, 147, 150)
	recipe:SetCraftedItem(165016, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(54454)

	-- Contract: The Honorbound -- 284295
	recipe = AddRecipe(284295, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 85, 90, 95)
	recipe:SetCraftedItem(165017, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130901)

	-- Contract: The Honorbound -- 284296
	recipe = AddRecipe(284296, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 135, 142, 150)
	recipe:SetRecipeItem(166310, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(165017, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.THE_HONORBOUND, REP.HONORED, 135447)

	-- Contract: The Honorbound -- 284297
	recipe = AddRecipe(284297, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(115, 115, 145, 147, 150)
	recipe:SetRecipeItem(166311, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(165017, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(54455)

	-- Vantus Rune: Battle of Dazar'alor -- 285639
	recipe = AddRecipe(285639, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 150, 150, 150)
	recipe:SetRecipeItem(165693, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(165692, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.BATTLE_OF_DAZARALOR)

	-- Vantus Rune: Battle of Dazar'alor -- 285640
	recipe = AddRecipe(285640, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 150, 150, 150)
	recipe:SetRecipeItem(165694, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(165692, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.BATTLE_OF_DAZARALOR)

	-- Vantus Rune: Battle of Dazar'alor -- 285641
	recipe = AddRecipe(285641, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 150, 150, 150)
	recipe:SetRecipeItem(165695, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(165692, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.BATTLE_OF_DAZARALOR)

	-- Vantus Rune: Crucible of Storms -- 285925
	recipe = AddRecipe(285925, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 150, 150, 150)
	recipe:SetRecipeItem(165735, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(165733, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.CRUCIBLE_OF_STORMS)

	-- Vantus Rune: Crucible of Storms -- 285926
	recipe = AddRecipe(285926, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 150, 150, 150)
	recipe:SetRecipeItem(165736, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(165733, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.CRUCIBLE_OF_STORMS)

	-- Vantus Rune: Crucible of Storms -- 285927
	recipe = AddRecipe(285927, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 150, 150, 150)
	recipe:SetRecipeItem(165737, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(165733, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.CRUCIBLE_OF_STORMS)

	-- Sanguinated Chromotography -- 286649
	recipe = AddRecipe(286649, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(162461, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Aqueous Chromotography -- 287271
	recipe = AddRecipe(287271, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 11, 16, 21)
	recipe:SetCraftedItem(162460, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(130399, 130901, 132264, 153811)

	-- Glyph of the Tides -- 289313
	recipe = AddRecipe(289313, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(150, 150, 150, 150, 150)
	recipe:SetRecipeItem(166582, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(166583, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MAGE)
	recipe:AddMobDrop(149684)

	-- Glyph of Storm's Wake -- 289356
	recipe = AddRecipe(289356, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(150, 150, 150, 150, 150)
	recipe:SetRecipeItem(166665, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(166664, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MAGE)
	recipe:AddQuest(54457)

	-- Blood Contract: Bloodshed -- 292012
	recipe = AddRecipe(292012, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 150, 150, 150)
	recipe:SetCraftedItem(156638, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(49874)

	-- Blood Contract: Bloodguard -- 292320
	recipe = AddRecipe(292320, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 150, 150, 150)
	recipe:SetCraftedItem(156637, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(49878)

	-- Blood Contract: Oblivion -- 292322
	recipe = AddRecipe(292322, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 150, 150, 150)
	recipe:SetCraftedItem(156636, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddQuest(49879)

	-- Glyph of Dalaran Brilliance -- 293801
	recipe = AddRecipe(293801, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(1, 1, 10, 10, 20)
	recipe:SetRecipeItem(167733, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(167539, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MAGE)
	recipe:AddVendor(28715)

	-- Notorious Combatant's Etched Vessel -- 294790
	recipe = AddRecipe(294790, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(135, 135, 145, 150, 155)
	recipe:SetCraftedItem(167942, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddTrainer(153811)

	-- Notorious Combatant's Etched Vessel -- 294791
	recipe = AddRecipe(294791, V.BFA, Q.EPIC)
	recipe:SetSkillLevels(160, 160, 170, 172, 175)
	recipe:SetRecipeItem(169545, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(167942, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddVendor(154652, 154653)

	-- Notorious Combatant's Etched Vessel -- 294792
	recipe = AddRecipe(294792, V.BFA, Q.EPIC)
	recipe:SetSkillLevels(160, 160, 170, 172, 175)
	recipe:SetRecipeItem(169546, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(167942, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddVendor(154652, 154653)

	-- Vantus Rune: The Eternal Palace -- 298625
	recipe = AddRecipe(298625, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(155, 155, 165, 170, 175)
	recipe:SetRecipeItem(168625, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(168624, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.THE_ETERNAL_PALACE)

	-- Vantus Rune: The Eternal Palace -- 298647
	recipe = AddRecipe(298647, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(165, 165, 170, 172, 175)
	recipe:SetRecipeItem(168626, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(168624, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.THE_ETERNAL_PALACE)

	-- Vantus Rune: The Eternal Palace -- 298648
	recipe = AddRecipe(298648, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 175, 175, 175)
	recipe:SetRecipeItem(168627, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(168624, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.THE_ETERNAL_PALACE)

	-- Mass Mill Zin'anthid -- 298927
	recipe = AddRecipe(298927, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(160, 160, 170, 175, 180)
	recipe:SetCraftedItem(168487, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(153811)

	-- Maroon Ink -- 298929
	recipe = AddRecipe(298929, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 135, 140, 145)
	recipe:SetCraftedItem(168663, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(153811)

	-- Contract: Ankoan -- 299665
	recipe = AddRecipe(299665, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(160, 160, 165, 170, 175)
	recipe:SetRecipeItem(169548, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(168956, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Alliance")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.ANKOAN, REP.REVERED, 154140)

	-- Contract: Unshackled -- 299668
	recipe = AddRecipe(299668, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(160, 160, 165, 170, 175)
	recipe:SetRecipeItem(169549, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(168959, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.THE_UNSHACKLED, REP.REVERED, 153514)

	-- Contract: Rustbolt Resistance -- 299671
	recipe = AddRecipe(299671, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(160, 160, 165, 170, 175)
	recipe:SetRecipeItem(169547, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(168960, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.RUSTBOLT_RESISTANCE, REP.REVERED, 150716)

	-- Contract: Rajani -- 299672
	recipe = AddRecipe(299672, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(165, 165, 175, 175, 175)
	recipe:SetRecipeItem(172009, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(172008, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.RAJANI, REP.REVERED, 160711)

	-- Contract: Uldum Accord -- 299673
	recipe = AddRecipe(299673, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(165, 165, 175, 175, 175)
	recipe:SetRecipeItem(172011, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(172010, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.ULDUM_ACCORD, REP.REVERED, 160714)

	-- Highborne Compendium of Swirling Tides -- 302187
	recipe = AddRecipe(302187, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(135, 135, 145, 150, 155)
	recipe:SetCraftedItem(169301, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_TRINKET")
	recipe:AddTrainer(153811)

	-- Highborne Compendium of Sundering -- 302188
	recipe = AddRecipe(302188, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(135, 135, 145, 150, 155)
	recipe:SetCraftedItem(169321, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_TRINKET")
	recipe:AddTrainer(153811)

	-- Highborne Compendium of Storms -- 302189
	recipe = AddRecipe(302189, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(135, 135, 145, 150, 155)
	recipe:SetCraftedItem(169328, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_TRINKET")
	recipe:AddTrainer(153811)

	-- Highborne Compendium of Mystical Bulwark -- 302190
	recipe = AddRecipe(302190, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(135, 135, 145, 150, 155)
	recipe:SetCraftedItem(169302, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_TRINKET")
	recipe:AddTrainer(153811)

	-- Glyph of the Dark Depths -- 304030
	recipe = AddRecipe(304030, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(150, 150, 150, 162, 175)
	recipe:SetRecipeItem(170163, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(170164, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MAGE)
	recipe:AddWorldDrop(Z.THE_ETERNAL_PALACE)

	-- Glyph of Steaming Fury -- 304033
	recipe = AddRecipe(304033, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(150, 150, 150, 162, 175)
	recipe:SetRecipeItem(170166, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(170165, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MAGE)
	recipe:AddWorldDrop(Z.NAZJATAR)

	-- Glyph of the Cold Waves -- 304036
	recipe = AddRecipe(304036, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 150, 162, 175)
	recipe:SetRecipeItem(170169, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(170168, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MAGE)
	recipe:AddQuest(53982)

	-- Glyph of Dire Bees -- 304042
	recipe = AddRecipe(304042, V.BFA, Q.UNCOMMON)
	recipe:SetSkillLevels(150, 150, 150, 162, 175)
	recipe:SetRecipeItem(170175, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(170173, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.HUNTER)
	recipe:AddCustom("HONEYBACK_HIVE")

	-- Uncanny Combatant's Etched Vessel -- 305952
	recipe = AddRecipe(305952, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(170, 170, 180, 185, 190)
	recipe:SetCraftedItem(170316, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddTrainer(130399)

	-- Uncanny Combatant's Etched Vessel -- 305953
	recipe = AddRecipe(305953, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 165, 170, 175)
	recipe:SetRecipeItem(171059, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(170316, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddVendor(142552, 142564, 161565)

	-- Uncanny Combatant's Etched Vessel -- 305954
	recipe = AddRecipe(305954, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 165, 170, 175)
	recipe:SetRecipeItem(171058, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(170316, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddVendor(142552, 142564, 161565)

	-- Vantus Rune: Ny'alotha, the Waking City -- 306481
	recipe = AddRecipe(306481, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(165, 165, 175, 175, 175)
	recipe:SetRecipeItem(171200, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(171203, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddMobDrop(158041)

	-- Vantus Rune: Ny'alotha, the Waking City -- 306482
	recipe = AddRecipe(306482, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(165, 165, 175, 175, 175)
	recipe:SetRecipeItem(171202, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(171203, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddMobDrop(158041)

	-- Vantus Rune: Ny'alotha, the Waking City -- 306483
	recipe = AddRecipe(306483, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(165, 165, 175, 175, 175)
	recipe:SetRecipeItem(171201, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(171203, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddMobDrop(158041)

	-- Glyph of Lavish Servings -- 309443
	recipe = AddRecipe(309443, V.BFA, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 150, 162, 175)
	recipe:SetRecipeItem(172450, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(172449, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.MAGE)
	recipe:AddCustom("HONEYBACK_HIVE")

	-- ----------------------------------------------------------------------------
	-- Shadowlands.
	-- ----------------------------------------------------------------------------
	-- Umbral Ink -- 311405
	recipe = AddRecipe(311405, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 15, 20, 25)
	recipe:SetCraftedItem(173058, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Luminous Ink -- 311406
	recipe = AddRecipe(311406, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 15, 20, 25)
	recipe:SetCraftedItem(173059, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Newly Departed Codex -- 311408
	recipe = AddRecipe(311408, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 30, 35, 40)
	recipe:SetCraftedItem(173050, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_OFF_HAND")
	recipe:AddTrainer(156685)

	-- Contract: The Ascended -- 311409
	recipe = AddRecipe(311409, V.SHA, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetRecipeItem(183103, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(173051, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.THE_ASCENDED, REP.REVERED, 160470, 176064)

	-- Contract: The Wild Hunt -- 311410
	recipe = AddRecipe(311410, V.SHA, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetRecipeItem(183093, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(173053, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.THE_WILD_HUNT, REP.REVERED, 158556, 176065)

	-- Contract: The Undying Army -- 311411
	recipe = AddRecipe(311411, V.SHA, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetRecipeItem(183104, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(175924, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.THE_UNDYING_ARMY, REP.REVERED, 173003, 176067)

	-- Contract: Court of Harvesters -- 311412
	recipe = AddRecipe(311412, V.SHA, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 70, 75, 80)
	recipe:SetRecipeItem(183102, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(173062, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.COURT_OF_HARVESTERS, REP.REVERED, 156822, 176066)

	-- Mass Mill Deathblossom -- 311413
	recipe = AddRecipe(311413, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 40, 45, 50)
	recipe:SetCraftedItem(169701, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(156685)

	-- Mass Mill Vigil's Torch -- 311414
	recipe = AddRecipe(311414, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 40, 45, 50)
	recipe:SetCraftedItem(170554, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(156685)

	-- Mass Mill Widowbloom -- 311415
	recipe = AddRecipe(311415, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 40, 45, 50)
	recipe:SetCraftedItem(168583, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(156685)

	-- Mass Mill Marrowroot -- 311416
	recipe = AddRecipe(311416, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 40, 45, 50)
	recipe:SetCraftedItem(168589, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(156685)

	-- Mass Mill Rising Glory -- 311417
	recipe = AddRecipe(311417, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 40, 45, 50)
	recipe:SetCraftedItem(168586, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(156685)

	-- Mass Mill Nightshade -- 311418
	recipe = AddRecipe(311418, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 40, 45, 50)
	recipe:SetCraftedItem(171315, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(156685)

	-- Writ of Grave Robbing -- 311423
	recipe = AddRecipe(311423, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(10, 10, 20, 25, 30)
	recipe:SetCraftedItem(173065, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(156685)

	-- Codex of the Still Mind -- 311424
	recipe = AddRecipe(311424, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 60, 65, 70)
	recipe:SetRecipeItem(183098, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(173048, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.THE_ASCENDED, REP.FRIENDLY, 160470, 176064)

	-- Tome of the Still Mind -- 311425
	recipe = AddRecipe(311425, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 25, 30, 35)
	recipe:SetCraftedItem(173049, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(156685)

	-- Darkmoon Card of Death -- 311441
	recipe = AddRecipe(311441, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(80, 80, 90, 95, 100)
	recipe:SetCraftedItem(173066, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(156685)

	-- Vantus Rune: Castle Nathria -- 311453
	recipe = AddRecipe(311453, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 115, 120, 125)
	recipe:SetRecipeItem(173068, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(173067, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.CASTLE_NATHRIA)

	-- Soul Keeper's Column -- 311688
	recipe = AddRecipe(311688, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(173428, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_STAFF")
	recipe:AddTrainer(156685)

	-- Soul Keeper's Spire -- 311689
	recipe = AddRecipe(311689, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 35, 40, 45)
	recipe:SetCraftedItem(173054, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_STAFF")
	recipe:AddTrainer(156685)

	-- Tranquil Ink -- 321029
	recipe = AddRecipe(321029, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 45, 50, 55)
	recipe:SetCraftedItem(175970, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(156685)

	-- Darkmoon Card of Voracity -- 324035
	recipe = AddRecipe(324035, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(80, 80, 90, 95, 100)
	recipe:SetCraftedItem(177874, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(156685)

	-- Darkmoon Card of Repose -- 324036
	recipe = AddRecipe(324036, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(80, 80, 90, 95, 100)
	recipe:SetCraftedItem(177876, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(156685)

	-- Darkmoon Card of Putrescence -- 324037
	recipe = AddRecipe(324037, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(80, 80, 90, 95, 100)
	recipe:SetCraftedItem(177875, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(156685)

	-- Darkmoon Card of the Indomitable -- 324039
	recipe = AddRecipe(324039, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(80, 80, 90, 95, 100)
	recipe:SetCraftedItem(177873, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(156685)

	-- Missive of Versatility -- 324195
	recipe = AddRecipe(324195, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetCraftedItem(173163, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(156685)

	-- Missive of Mastery -- 324196
	recipe = AddRecipe(324196, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetCraftedItem(173162, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(156685)

	-- Missive of Critical Strike -- 324197
	recipe = AddRecipe(324197, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetCraftedItem(173161, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(156685)

	-- Missive of Haste -- 324198
	recipe = AddRecipe(324198, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 50, 55, 60)
	recipe:SetCraftedItem(173160, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddTrainer(156685)

	-- Fae Revel Masque -- 334537
	recipe = AddRecipe(334537, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(90, 90, 100, 105, 110)
	recipe:SetCraftedItem(180755, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_HEAD")
	recipe:AddVendor(172634)

	-- Novice Crafter's Mark -- 343686
	recipe = AddRecipe(343686, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 50, 55, 60)
	recipe:SetCraftedItem(183942, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(156685)

	-- Crafter's Mark II -- 343689
	recipe = AddRecipe(343689, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 75, 80, 85)
	recipe:SetRecipeItem(183870, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(173382, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddRepVendor(FAC.THE_AVOWED, REP.REVERED, 173705)

	-- Crafter's Mark I -- 343691
	recipe = AddRecipe(343691, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 55, 60, 65)
	recipe:SetCraftedItem(173381, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(156685)

	-- Glyph of the Swift Chameleon -- 344335
	recipe = AddRecipe(344335, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 150, 150, 150)
	recipe:SetRecipeItem(184095, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(184096, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddVendor(128702)

	-- Glyph of the Aquatic Chameleon -- 344340
	recipe = AddRecipe(344340, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 150, 150, 150)
	recipe:SetRecipeItem(184098, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(184097, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddVendor(128702)

	-- Glyph of the Aerial Chameleon -- 344341
	recipe = AddRecipe(344341, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 150, 150, 150)
	recipe:SetRecipeItem(184099, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(184100, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddVendor(128702)

	-- Contract: Death's Advance -- 354000
	recipe = AddRecipe(354000, V.SHA, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 100, 100, 100)
	recipe:SetCraftedItem(186522, "BIND_ON_EQUIP")
	recipe:SetRecipeItem(186724, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.DEATHS_ADVANCE, REP.REVERED, 179321)

	-- Vantus Rune: Sanctum of Domination -- 354394
	recipe = AddRecipe(354394, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 115, 120, 125)
	recipe:SetCraftedItem(186522, "BIND_ON_EQUIP")
	recipe:SetRecipeItem(186671, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.SANCTUM_OF_DOMINATION)

-- 9.2 Recipes

	-- Mass Mill First Flower -- 359490
	recipe = AddRecipe(359490, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 40, 45, 50)
	recipe:SetCraftedItem(187699, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MATERIALS")
	recipe:AddTrainer(156685)

	-- Contract: Enlightened Brokers -- 359786
	recipe = AddRecipe(359786, V.SHA, Q.UNCOMMON)
	recipe:SetSkillLevels(101, 101, 101, 101, 101)
	recipe:SetRecipeItem(187797, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(187796, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddRepVendor(FAC.THE_ENLIGHTENED, REP.REVERED, 182257)

	-- Vantus Rune: Sepulcher of the First Ones -- 359890
	recipe = AddRecipe(359890, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 130, 130, 101)
	recipe:SetRecipeItem(187806, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(187805, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_VANTUS_RUNE")
	recipe:AddWorldDrop(Z.SEPULCHER_OF_THE_FIRST_ONES)

	-- Mark of the Twilight Runestag -- 360539
	recipe = AddRecipe(360539, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 100, 100, 100)
	recipe:SetRecipeItem(187883, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(187884, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddFilters(F.DRUID)
	recipe:AddRepVendor(FAC.THE_WILD_HUNT, REP.REVERED, 158556, 176065)

	-- Mark of the Gloomstalker Dredbat -- 360542
	recipe = AddRecipe(360542, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 100, 100, 100)
	recipe:SetRecipeItem(187886, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(187887, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddFilters(F.DRUID)
	recipe:AddVendor(171808)

	-- Mark of the Shimmering Ardenmoth -- 360545
	recipe = AddRecipe(360545, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 100, 100, 100)
	recipe:SetCraftedItem(187888, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddFilters(F.DRUID)
	recipe:AddCustom("DROMAN")

	-- Mark of the Regal Dredbat -- 360880
	recipe = AddRecipe(360880, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 100, 100, 100)
	recipe:SetRecipeItem(187930, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(187931, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddFilters(F.DRUID)
	recipe:AddMobDrop(158976, 159178)

	-- Mark of the Duskwing Raven -- 360882
	recipe = AddRecipe(360882, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 20, 45, 70)
	recipe:SetRecipeItem(187932, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(187933, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddFilters(F.DRUID)
	recipe:AddRepVendor(FAC.DREAMWEAVERS, REP.HONORED, 106901)

	-- Mark of the Midnight Runestag -- 360885
	recipe = AddRecipe(360885, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 100, 100, 100)
	recipe:SetRecipeItem(187935, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(187934, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddFilters(F.DRUID)
	recipe:AddWorldDrop(Z.ARDENWEALD)

	-- Mark of the Sable Ardenmoth -- 360899
	recipe = AddRecipe(360899, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 100, 100, 100)
	recipe:SetRecipeItem(187937, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(187936, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_CREATED_ITEM")
	recipe:AddFilters(F.DRUID)
	recipe:AddRepVendor(FAC.COURT_OF_NIGHT, REP.HONORED, 162447)

	-- Glyph of the Wild Mushroom -- 362412
	recipe = AddRecipe(362412, V.SHA, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 110, 115, 120)
	recipe:SetCraftedItem(188164, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.DRUID)
	recipe:AddTrainer(156685)

	-- Glyph of the Spectral Lupine -- 367389
	recipe = AddRecipe(367389, V.SHA, Q.RARE)
	recipe:SetSkillLevels(100, 100, 100, 100, 100)
	recipe:SetRecipeItem(190379, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(190378, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.SHAMAN)
	recipe:AddRepVendor(FAC.THE_ENLIGHTENED, REP.REVERED, 182257)

	-- Glyph of the Spectral Vulpine -- 367393
	recipe = AddRecipe(367393, V.SHA, Q.RARE)
	recipe:SetSkillLevels(100, 100, 100, 100, 100)
	recipe:SetRecipeItem(190381, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(190380, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("INSCRIPTION_MINOR_GLYPH")
	recipe:AddFilters(F.SHAMAN)
	recipe:AddQuest(60439)

	self.InitializeRecipes = nil
end

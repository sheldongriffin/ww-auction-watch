-------------------------------------------------------------------------------
-- Localized Lua globals.
-------------------------------------------------------------------------------
local pairs = _G.pairs

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

local LibStub = _G.LibStub
local L = LibStub("AceLocale-3.0"):GetLocale(constants.addon_name)

-------------------------------------------------------------------------------
-- What we're really here for.
-------------------------------------------------------------------------------
module.ITEM_FILTER_TYPES = {
	INSCRIPTION_CREATED_ITEM = true,
	INSCRIPTION_ITEM_ENHANCEMENT = true,
	INSCRIPTION_MATERIALS = true,
	INSCRIPTION_MINOR_GLYPH = true,
	INSCRIPTION_OFF_HAND = true,
	INSCRIPTION_STAFF = true,
	INSCRIPTION_SCROLL = true,
	INSCRIPTION_PET = true,
	INSCRIPTION_TRINKET = true,
	INSCRIPTION_RELIC = true,
	INSCRIPTION_RESEARCH = true,
	INSCRIPTION_VANTUS_RUNE = true,
	INSCRIPTION_WAND = true,
	INSCRIPTION_REAGENT = true,
	INSCRIPTION_HEAD = true,
}

function module:InitializeItemFilters(parent_panel)
	local MainPanel = addon.Frame

	local armor_toggle = _G.CreateFrame("Button", nil, parent_panel)
	armor_toggle:SetWidth(105)
	armor_toggle:SetHeight(20)
	armor_toggle:SetNormalFontObject("QuestTitleFont")
	armor_toggle:SetHighlightFontObject("QuestTitleFontBlackShadow")
	armor_toggle:SetText(_G.ARMOR .. ":")
	armor_toggle:SetPoint("TOP", parent_panel, "TOP", 0, -7)
	armor_toggle:RegisterForClicks("LeftButtonUp", "RightButtonUp")

	addon.SetTooltipScripts(armor_toggle, L["GROUP_TOGGLE_FORMAT"]:format(_G.ARMOR))

	local armor_types = {
		inscription_head 	= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_HEAD),	text = _G.INVTYPE_HEAD,		row = 1, col = 1 },
		inscription_off_hand	= { tt = L["FILTER_DESC_FORMAT"]:format(_G.SECONDARYHANDSLOT),	text = _G.SECONDARYHANDSLOT,	row = 1, col = 2 },
		inscription_staff	= { tt = L["FILTER_DESC_FORMAT"]:format(L["Staff"]), 		text = L["Staff"],		row = 2, col = 1 },
		inscription_wand	= { tt = L["FILTER_DESC_FORMAT"]:format(L["Wand"]), 		text = L["Wand"],		row = 2, col = 2 },
		inscription_trinket	= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_TRINKET),	text = _G.INVTYPE_TRINKET,	row = 3, col = 1 },
	}

	armor_toggle:SetScript("OnClick", function(self, button)
		local toggle = (button == "LeftButton") and true or false

		for item in pairs(armor_types) do
			module.db.profile.filters.item[item] = toggle
			parent_panel[item]:SetChecked(toggle)
		end
		MainPanel:UpdateTitle()
		MainPanel.list_frame:Update(nil, false)
	end)

	parent_panel.armor_toggle = armor_toggle

	local armor_panel = _G.CreateFrame("Frame", nil, parent_panel)
	armor_panel:SetHeight(40)
	armor_panel:SetPoint("TOP", armor_toggle, "BOTTOM")
	armor_panel:SetPoint("LEFT", parent_panel, "LEFT")
	armor_panel:SetPoint("RIGHT", parent_panel, "RIGHT")

	addon.GenerateCheckBoxes(parent_panel, armor_types, armor_panel)

	for item_type in pairs(armor_types) do
		MainPanel.filter_menu.value_map[item_type] = {
			cb = MainPanel.filter_menu.item.items_inscription[item_type],
			svroot = self.db.profile.filters.item
		}
	end

	-------------------------------------------------------------------------------
	-- Create the General toggle and CheckButtons
	-------------------------------------------------------------------------------
	local general_toggle = _G.CreateFrame("Button", nil, parent_panel)
	general_toggle:SetWidth(105)
	general_toggle:SetHeight(20)
	general_toggle:SetNormalFontObject("QuestTitleFont")
	general_toggle:SetHighlightFontObject("QuestTitleFontBlackShadow")
	general_toggle:SetText(_G.GENERAL .. ":")
	general_toggle:SetPoint("TOP", armor_panel, "BOTTOM", 0, -10)
	general_toggle:RegisterForClicks("LeftButtonUp", "RightButtonUp")

	addon.SetTooltipScripts(general_toggle, L["GROUP_TOGGLE_FORMAT"]:format(_G.GENERAL))

	local general_types = {
		inscription_created_item	= { tt = L["FILTER_DESC_FORMAT"]:format(_G.NONEQUIPSLOT),	text = _G.NONEQUIPSLOT,		row = 1, col = 1 },
		inscription_item_enhancement	= { tt = L["FILTER_DESC_FORMAT"]:format(L["Item Enhancement"]),	text = L["Item Enhancement"],	row = 1, col = 2 },
		inscription_vantus_rune		= { tt = L["FILTER_DESC_FORMAT"]:format(L["Vantus Rune"]), 	text = L["Vantus Rune"],	row = 2, col = 1 },
		inscription_materials		= { tt = L["FILTER_DESC_FORMAT"]:format(L["Materials"]), 	text = L["Materials"],		row = 2, col = 2 },
		inscription_minor_glyph		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.MINOR_GLYPHS), 	text = _G.MINOR_GLYPHS,		row = 3, col = 1 },
		inscription_pet			= { tt = L["FILTER_DESC_FORMAT"]:format(_G.PETS),		text = _G.PETS,			row = 3, col = 2 },
		inscription_research		= { tt = L["FILTER_DESC_FORMAT"]:format(L["Research"]),		text = L["Research"],		row = 4, col = 1 },
		inscription_scroll		= { tt = L["FILTER_DESC_FORMAT"]:format(L["Scroll"]), 		text = L["Scroll"],		row = 4, col = 2 },
		inscription_relic		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_RELIC), 	text = _G.INVTYPE_RELIC,	row = 5, col = 1 },
		inscription_reagent		= { tt = L["FILTER_DESC_FORMAT"]:format(L["Crafting Reagent"]), text = L["Crafting Reagent"],	row = 5, col = 2 },
	}

	general_toggle:SetScript("OnClick", function(self, button)
		local toggle = (button == "LeftButton") and true or false

		for item in pairs(general_types) do
			module.db.profile.filters.item[item] = toggle
			parent_panel[item]:SetChecked(toggle)
		end
		MainPanel:UpdateTitle()
		MainPanel.list_frame:Update(nil, false)
	end)

	parent_panel.general_toggle = general_toggle

	local general_panel = _G.CreateFrame("Frame", nil, parent_panel)
	general_panel:SetHeight(70)
	general_panel:SetPoint("TOP", general_toggle, "BOTTOM")
	general_panel:SetPoint("LEFT", parent_panel, "LEFT")
	general_panel:SetPoint("RIGHT", parent_panel, "RIGHT")

	addon.GenerateCheckBoxes(parent_panel, general_types, general_panel)

	for item_type in pairs(general_types) do
		MainPanel.filter_menu.value_map[item_type] = {
			cb = MainPanel.filter_menu.item.items_inscription[item_type],
			svroot = self.db.profile.filters.item
		}
	end

	self.InitializeItemFilters = nil
end

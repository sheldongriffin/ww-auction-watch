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
	TAILORING_BACK = true,
	TAILORING_BAG = true,
	TAILORING_CHEST = true,
	TAILORING_FEET = true,
	TAILORING_HANDS = true,
	TAILORING_HEAD = true,
	TAILORING_ITEM_ENHANCEMENT = true,
	TAILORING_LEGS = true,
	TAILORING_MATERIALS = true,
	TAILORING_MISC = true,
	TAILORING_SHIRT = true,
	TAILORING_SHOULDER = true,
	TAILORING_TRANSMOG = true,
	TAILORING_WAIST = true,
	TAILORING_WRIST = true,
	TAILORING_BANDAGES = true,
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
		tailoring_back		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_CLOAK), 	text = _G.INVTYPE_CLOAK,	row = 1, col = 1 },
		tailoring_chest		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_CHEST), 	text = _G.INVTYPE_CHEST,	row = 1, col = 2 },
		tailoring_feet		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_FEET), 	text = _G.INVTYPE_FEET,		row = 2, col = 1 },
		tailoring_hands		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_HAND), 	text = _G.INVTYPE_HAND,		row = 2, col = 2 },
		tailoring_head		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_HEAD), 	text = _G.INVTYPE_HEAD,		row = 3, col = 1 },
		tailoring_legs		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_LEGS), 	text = _G.INVTYPE_LEGS,		row = 3, col = 2 },
		tailoring_shirt		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_BODY), 	text = _G.INVTYPE_BODY,		row = 4, col = 1 },
		tailoring_shoulder	= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_SHOULDER), 	text = _G.INVTYPE_SHOULDER,	row = 4, col = 2 },
		tailoring_waist		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_WAIST), 	text = _G.INVTYPE_WAIST,	row = 5, col = 1 },
		tailoring_wrist		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_WRIST), 	text = _G.INVTYPE_WRIST,	row = 5, col = 2 },
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
	armor_panel:SetHeight(100)
	armor_panel:SetPoint("TOP", armor_toggle, "BOTTOM")
	armor_panel:SetPoint("LEFT", parent_panel, "LEFT")
	armor_panel:SetPoint("RIGHT", parent_panel, "RIGHT")

	addon.GenerateCheckBoxes(parent_panel, armor_types, armor_panel)

	for item_type in pairs(armor_types) do
		MainPanel.filter_menu.value_map[item_type] = {
			cb = MainPanel.filter_menu.item.items_tailoring[item_type],
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
	general_toggle:SetPoint("TOP", armor_panel, "BOTTOM", 0, 0)
	general_toggle:RegisterForClicks("LeftButtonUp", "RightButtonUp")

	addon.SetTooltipScripts(general_toggle, L["GROUP_TOGGLE_FORMAT"]:format(_G.GENERAL))

	local general_types = {
		tailoring_bag			= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_BAG),	text = _G.INVTYPE_BAG,		row = 1, col = 1 },
		tailoring_item_enhancement	= { tt = L["FILTER_DESC_FORMAT"]:format(L["Item Enhancement"]),	text = L["Item Enhancement"],	row = 1, col = 2 },
		tailoring_materials		= { tt = L["FILTER_DESC_FORMAT"]:format(L["Materials"]),	text = L["Materials"],		row = 2, col = 1 },
		tailoring_misc			= { tt = L["FILTER_DESC_FORMAT"]:format(_G.MISCELLANEOUS),	text = _G.MISCELLANEOUS,	row = 2, col = 2 },
		tailoring_transmog		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.TRANSMOGRIFY),	text = _G.TRANSMOGRIFY,		row = 3, col = 1 },
		tailoring_bandages 		= { tt = L["FILTER_DESC_FORMAT"]:format(L["Bandages"]),		text = L["Bandages"],		row = 3, col = 2 },
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
			cb = MainPanel.filter_menu.item.items_tailoring[item_type],
			svroot = self.db.profile.filters.item
		}
	end
	self.InitializeItemFilters = nil
end

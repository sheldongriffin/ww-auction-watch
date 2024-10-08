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
	JEWELCRAFTING_CREATED_ITEM = true,
	JEWELCRAFTING_FIST_WEAPON = true,
	JEWELCRAFTING_HEAD = true,
	JEWELCRAFTING_MATERIALS = true,
	JEWELCRAFTING_NECK = true,
	JEWELCRAFTING_RING = true,
	JEWELCRAFTING_TRINKET = true,
	JEWELCRAFTING_GEM_BLUE = true,
	JEWELCRAFTING_GEM_GREEN = true,
	JEWELCRAFTING_GEM_META = true,
	JEWELCRAFTING_GEM_ORANGE = true,
	JEWELCRAFTING_GEM_PRISMATIC = true,
	JEWELCRAFTING_GEM_PURPLE = true,
	JEWELCRAFTING_GEM_RED = true,
	JEWELCRAFTING_GEM_YELLOW = true,
	JEWELCRAFTING_MOUNT = true,
	JEWELCRAFTING_PET = true,
	JEWELCRAFTING_ITEM_ENHANCEMENT = true,
	JEWELCRAFTING_STAFF = true,
}

function module:InitializeItemFilters(parent_panel)
	local MainPanel = addon.Frame

	local gem_toggle = _G.CreateFrame("Button", nil, parent_panel)
	gem_toggle:SetWidth(105)
	gem_toggle:SetHeight(20)
	gem_toggle:SetNormalFontObject("QuestTitleFont")
	gem_toggle:SetHighlightFontObject("QuestTitleFontBlackShadow")
	gem_toggle:SetText(L["Gems"] .. ":")
	gem_toggle:SetPoint("TOP", parent_panel, "TOP", 0, -7)
	gem_toggle:RegisterForClicks("LeftButtonUp", "RightButtonUp")

	addon.SetTooltipScripts(gem_toggle, L["GROUP_TOGGLE_FORMAT"]:format(L["Gems"]))

	local gem_types = {
		jewelcrafting_gem_blue		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.BLUE_GEM), 		text = _G.BLUE_GEM,		row = 1, col = 1 },
		jewelcrafting_gem_green		= { tt = L["FILTER_DESC_FORMAT"]:format(L["GREEN_GEM"]), 	text = L["GREEN_GEM"],		row = 1, col = 2 },
		jewelcrafting_gem_meta		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.META_GEM), 		text = _G.META_GEM,		row = 2, col = 1 },
		jewelcrafting_gem_orange	= { tt = L["FILTER_DESC_FORMAT"]:format(L["ORANGE_GEM"]), 	text = L["ORANGE_GEM"],		row = 2, col = 2 },
		jewelcrafting_gem_prismatic	= { tt = L["FILTER_DESC_FORMAT"]:format(L["PRISMATIC_GEM"]), 	text = L["PRISMATIC_GEM"],	row = 3, col = 1 },
		jewelcrafting_gem_purple	= { tt = L["FILTER_DESC_FORMAT"]:format(L["PURPLE_GEM"]), 	text = L["PURPLE_GEM"],		row = 3, col = 2 },
		jewelcrafting_gem_red		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.RED_GEM), 		text = _G.RED_GEM,		row = 4, col = 1 },
		jewelcrafting_gem_yellow	= { tt = L["FILTER_DESC_FORMAT"]:format(_G.YELLOW_GEM), 	text = _G.YELLOW_GEM,		row = 4, col = 2 },
	}

	gem_toggle:SetScript("OnClick", function(self, button)
		local toggle = (button == "LeftButton") and true or false

		for item in pairs(gem_types) do
			module.db.profile.filters.item[item] = toggle
			parent_panel[item]:SetChecked(toggle)
		end
		MainPanel:UpdateTitle()
		MainPanel.list_frame:Update(nil, false)
	end)

	parent_panel.gem_toggle = gem_toggle

	local gem_panel = _G.CreateFrame("Frame", nil, parent_panel)
	gem_panel:SetHeight(90)
	gem_panel:SetPoint("TOP", gem_toggle, "BOTTOM")
	gem_panel:SetPoint("LEFT", parent_panel, "LEFT")
	gem_panel:SetPoint("RIGHT", parent_panel, "RIGHT")

	addon.GenerateCheckBoxes(parent_panel, gem_types, gem_panel)

	for item_type in pairs(gem_types) do
		MainPanel.filter_menu.value_map[item_type] = {
			cb = MainPanel.filter_menu.item.items_jewelcrafting[item_type],
			svroot = self.db.profile.filters.item
		}
	end

	-------------------------------------------------------------------------------
	-- Create the Equippable Items toggle and CheckButtons
	-------------------------------------------------------------------------------
	local equippable_toggle = _G.CreateFrame("Button", nil, parent_panel)
	equippable_toggle:SetWidth(105)
	equippable_toggle:SetHeight(20)
	equippable_toggle:SetNormalFontObject("QuestTitleFont")
	equippable_toggle:SetHighlightFontObject("QuestTitleFontBlackShadow")
	equippable_toggle:SetText(_G.TUTORIAL_TITLE24 .. ":")
	equippable_toggle:SetPoint("TOP", gem_panel, "BOTTOM", 0, 0)
	equippable_toggle:RegisterForClicks("LeftButtonUp", "RightButtonUp")

	addon.SetTooltipScripts(equippable_toggle, L["GROUP_TOGGLE_FORMAT"]:format(_G.TUTORIAL_TITLE24))

	local equippable_types = {
		jewelcrafting_fist_weapon	= { tt = L["FILTER_DESC_FORMAT"]:format(L["Fist Weapon"]),	text = L["Fist Weapon"],	row = 1, col = 1 },
		jewelcrafting_head		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_HEAD),	text = _G.INVTYPE_HEAD,		row = 1, col = 2 },
		jewelcrafting_neck		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_NECK),	text = _G.INVTYPE_NECK,		row = 2, col = 1 },
		jewelcrafting_ring		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_FINGER),	text = _G.INVTYPE_FINGER,	row = 2, col = 2 },
		jewelcrafting_trinket		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.INVTYPE_TRINKET),	text = _G.INVTYPE_TRINKET,	row = 3, col = 1 },
		jewelcrafting_staff 		= { tt = L["FILTER_DESC_FORMAT"]:format(L["Staff"]),		text = L["Staff"],		row = 3, col = 2 },
	}

	equippable_toggle:SetScript("OnClick", function(self, button)
		local toggle = (button == "LeftButton") and true or false

		for item in pairs(equippable_types) do
			module.db.profile.filters.item[item] = toggle
			parent_panel[item]:SetChecked(toggle)
		end
		MainPanel:UpdateTitle()
		MainPanel.list_frame:Update(nil, false)
	end)

	parent_panel.equippable_toggle = equippable_toggle

	local equippable_panel = _G.CreateFrame("Frame", nil, parent_panel)
	equippable_panel:SetHeight(70)
	equippable_panel:SetPoint("TOP", equippable_toggle, "BOTTOM")
	equippable_panel:SetPoint("LEFT", parent_panel, "LEFT")
	equippable_panel:SetPoint("RIGHT", parent_panel, "RIGHT")

	addon.GenerateCheckBoxes(parent_panel, equippable_types, equippable_panel)

	for item_type in pairs(equippable_types) do
		MainPanel.filter_menu.value_map[item_type] = {
			cb = MainPanel.filter_menu.item.items_jewelcrafting[item_type],
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
	general_toggle:SetPoint("TOP", equippable_panel, "BOTTOM", 0, 0)
	general_toggle:RegisterForClicks("LeftButtonUp", "RightButtonUp")

	addon.SetTooltipScripts(general_toggle, L["GROUP_TOGGLE_FORMAT"]:format(_G.GENERAL))

	local general_types = {
		jewelcrafting_created_item	= { tt = L["FILTER_DESC_FORMAT"]:format(_G.NONEQUIPSLOT),	text = _G.NONEQUIPSLOT,		row = 1, col = 1 },
		jewelcrafting_materials		= { tt = L["FILTER_DESC_FORMAT"]:format(L["Materials"]),	text = L["Materials"],		row = 1, col = 2 },
		jewelcrafting_mount		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.MOUNTS),		text = _G.MOUNTS,		row = 2, col = 1 },
		jewelcrafting_pet		= { tt = L["FILTER_DESC_FORMAT"]:format(_G.PETS),		text = _G.PETS,			row = 2, col = 2 },
		jewelcrafting_item_enhancement	= { tt = L["FILTER_DESC_FORMAT"]:format(L["Item Enhancement"]),	text = L["Item Enhancement"],	row = 3, col = 1 },
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
			cb = MainPanel.filter_menu.item.items_jewelcrafting[item_type],
			svroot = self.db.profile.filters.item
		}
	end
	self.InitializeItemFilters = nil
end

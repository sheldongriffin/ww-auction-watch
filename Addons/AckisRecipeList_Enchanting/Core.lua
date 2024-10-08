-------------------------------------------------------------------------------
-- Constants
-------------------------------------------------------------------------------
local MODULE_NAME = "Enchanting"
local MODULE_VERSION = 4

-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local LibStub = _G.LibStub
local addon = LibStub("AceAddon-3.0"):GetAddon("Ackis Recipe List")

if MODULE_VERSION ~= addon.SUPPORTED_MODULE_VERSION then
	addon:SpawnModuleWrongVersionDialog({
		moduleName = MODULE_NAME,
		moduleVersion = MODULE_VERSION
	})

	return
end

private.addon = addon
private.module_name = MODULE_NAME

local module = addon:NewModule(MODULE_NAME)

-------------------------------------------------------------------------------
-- Setup.
-------------------------------------------------------------------------------
function module:OnInitialize()
	self.ModuleName = MODULE_NAME
	self.Name = FOLDER_NAME
	self.Version = MODULE_VERSION
end

function module:OnEnable()
	addon.CreateProfessionFromModule(self)

	self:InitializeMobDrops()
	self:InitializeTrainers()
	self:InitializeVendors()
	self:InitializeQuests()
	self:InitializeRecipes()
end

--[[

@author Esperanza - Everlook/EU-Alliance
@copyright ©2022 The Profession Master Authors. All Rights Reserved.

Licensed under the GNU General Public License, Version 3.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    https://www.gnu.org/licenses/gpl-3.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS-IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

--]]
local addon = _G.professionMaster;

-- define model
LocalesModel = {};
LocalesModel.__index = LocalesModel;

-- Create model.
function LocalesModel:Create()
    return {
        -- define en locale
        ["en"] = {
            -- general
            ["AddonLoaded"] = "Version " .. addon.version .. " loaded. Use /pm for more informations.",
            ["VersionOutdated"] = "Your version is outdated. The latest version can be downloaded from https://www.curseforge.com/wow/addons/profession-master.",
            ["LanguageNotSupported"] = "Unfortunately, the language of your client is not supported by ProfessionMaster.",
            ["You"] = "You",

            -- commands
            ["CommandsTitle"] = "Possible commands:",
            ["CommandsOverview"] = "/pm overview - Show professions overview",
            ["CommandsMinimap"] = "/pm minimap - Toggle professions minimap icon",
            ["CommandsReagents"] = "/pm reagents - Show/Hide missing Reagents",
            ["CommandsPurge"] = "/pm purge - Delete all data",

            -- welcome
            ["WelcomeTitle"] = addon.name .. " - Welcome",
            ["WelcomeDescription"] = addon.name .. " shows you your profession and the professions of all your guild members who also use " .. addon.name .. " in a single overview.\n\n" .. 
                "Use the button on your minimap or the chat command /pm to show or hide the corresponding windows.\n\n" ..
                "|cffd4af37Open your now your profession windows to share your professions.",

            -- minimap button
            ["MinimapButtonTitle"] = addon.shortcut .. addon.name,
            ["MinimapButtonLeftClick"] = "|cff999999Left Click:|cffffffff Show overview|r",
            ["MinimapButtonRightClick"] = "|cff999999Right Click:|cffffffff Show/Hide missing Reagents|r",
            ["MinimapButtonShiftRightClick"] = "|cff999999Shift + Right Click:|cffffffff Hide minimap button|r",

            -- provession view
            ["ProfessionsViewTitle"] = "Profession Master - Overview",
            ["ProfessionsViewProfession"] = "Profession",
            ["ProfessionsViewAllProfessions"] = "All Professions",
            ["ProfessionsViewSearch"] = "Search",
            ["ProfessionsViewItem"] = "Item",
            ["ProfessionsViewEnchantment"] = "Enchantment",
            ["ProfessionsViewPlayers"] = "Players",
            ["ProfessionsViewBucketList"] = "Shopping List",
            ["ProfessionsViewReagentsForBucketList"] = "Reagents for Shopping List",
            ["ProfessionsViewNotOnBucketList"] = "Other",

            -- skill view
            ["SkillViewPlayers"] = "Players",
            ["SkillViewOnBucketList"] = "On Shopping List",
            ["SkillViewOk"] = "OK",

            -- missing reagents view
            ["MissingReagentsViewTitle"] = "Missing Reagents"
        },
        -- define de locale
        ["de"] = {
            -- general
            ["AddonLoaded"] = "Version " .. addon.version .. " geladen. Benutze /pm für weitere Informationen.",
            ["VersionOutdated"] = "Deine Version ist veraltet. Die neueste Version kann unter https://www.curseforge.com/wow/addons/profession-master heruntergeladen werden.",
            ["LanguageNotSupported"] = "Leider wird die Sprache deines Clients nicht von ProfessionMaster unterstützt.",
            ["You"] = "Du",

            -- welcome
            ["WelcomeTitle"] = addon.name .. " - Willkommen",
            ["WelcomeDescription"] = addon.name .. " zeigt dir deine und die Berufe all deiner Gildenmitglieder, die auch " .. addon.name .. " nutzen, in einer einzigen Übersicht an.\n\n" ..
                "Benutze die Schaltfläche an deiner Minimap oder den Chat-Befehl /pm um die entsprechenden Fenster ein- oder auszublenden.\n\n" .. 
                "|cffd4af37Öffne deine jetzt deine Berufsfenster, um deine Berufe zu teilen.",

            -- commands
            ["CommandsTitle"] = "Mögliche Befehle:",
            ["CommandsOverview"] = "/pm overview - Berufsübersicht anzeigen",
            ["CommandsMinimap"] = "/pm minimap - Minimap icon umschalten",
            ["CommandsReagents"] = "/pm reagents - Fehlende Materialien ein-/ausblenden",
            ["CommandsPurge"] = "/pm purge - Lösche alle Daten",

            -- minimap button
            ["MinimapButtonTitle"] = addon.shortcut .. addon.name,
            ["MinimapButtonLeftClick"] = "|cff999999Linksklick:|cffffffff Übersicht anzeigen|r",
            ["MinimapButtonRightClick"] = "|cff999999Rechtsklick:|cffffffff Fehlende Materialien ein-/ausblenden|r",
            ["MinimapButtonShiftRightClick"] = "|cff999999Shift + Rechtsklick:|cffffffff Minimap Schaltfläche ausblenden|r",

            -- provession view
            ["ProfessionsViewTitle"] = "Profession Master - Übersicht",
            ["ProfessionsViewProfession"] = "Beruf",
            ["ProfessionsViewAllProfessions"] = "Alle Berufe",
            ["ProfessionsViewSearch"] = "Suchen",
            ["ProfessionsViewItem"] = "Gegenstand",
            ["ProfessionsViewEnchantment"] = "Verzauberung",
            ["ProfessionsViewPlayers"] = "Spieler",
            ["ProfessionsViewBucketList"] = "Einkaufliste",
            ["ProfessionsViewReagentsForBucketList"] = "Materialien für Einkaufliste",
            ["ProfessionsViewNotOnBucketList"] = "Weitere",

            -- skill view
            ["SkillViewPlayers"] = "Spieler",
            ["SkillViewOnBucketList"] = "Auf Einkaufliste",
            ["SkillViewOk"] = "OK",

            -- missing reagents view
            ["MissingReagentsViewTitle"] = "Fehlende Materialien"
        }
    };
end

-- register model
addon:RegisterModel(LocalesModel, "locales");

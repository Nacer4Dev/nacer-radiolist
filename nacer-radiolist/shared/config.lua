Config = {}

Config.UseRPName = true                                 -- If set to true, it uses either esx-legacy or qb-core built-in function to get players' RP name

Config.LetPlayersChangeVisibilityOfRadioList = true     -- Let players to toggle visibility of the list
Config.RadioListVisibilityCommand = "radiolist"         -- Only works if Config.LetPlayersChangeVisibilityOfRadioList is set to true
Config.HideRadioListVisibilityByDefault = false         -- If set to true and a player joins the server, don't show the radio list until the player execute the Config.RadioListVisibilityCommand command

Config.LetPlayersSetTheirOwnNameInRadio = true          -- Let players to customize how their name is displayed on the list
Config.RadioListChangeNameCommand = "nameinradio"       -- Only works if Config.LetPlayersSetTheirOwnNameInRadio is set to true
Config.ResetPlayersCustomizedNameOnExit = false          -- Resets customized name players set for themselves on their server exit

Config.LetPlayersChangeRadioChannelsName = false         -- Let players to change the name of the radio channels **they are currently joined in**
Config.ModifyRadioChannelNameCommand = "nameofradio"    -- Changes the name of the radio channel **that the player is currently joined in** => this is a validation to prevent normal players from modifying the name of the restricted channels they don't have access to(such as police, & etc)

Config.ShowPlayersServerIdNextToTheirName = false        -- Shows the players' server id next to their name on the radio list
Config.PlayerServerIdPosition = "right"                 -- Position of player's server id next to their name on the radio list ("right" or "left") => Only works if Config.ShowPlayersServerIdNextToTheirName is set to true

Config.RadioListOnlyShowsToGroupsWithAccess = false     -- If true, the radio list only shows to Config.GroupsWithAccessToTheRadioList
Config.GroupsWithAccessToTheRadioList = {               -- For ESX it checks if the players' job name matches with any of these groups - For a2 it checks if the players' gang name matches and/or if the players' job name matches and they are onduty...
    ["police"] = true,
    ["sheriff"] = true,
    ["ambulance"] = true,
    ["judge"] = true,
}

Config.JobsWithCallsign = {                             -- It only detects callsign if the framework is "a2"
    ["police"] = true,
    ["ambulance"] = true,
    ["sheriff"] = true,
}

Config.LetPlayersOverrideRadioChannelsWithName = false  -- Let players change the name of radio channels that are in Config.RadioChannelsWithName => Only works if Config.LetPlayersChangeRadioChannelsName is set to true

Config.RadioChannelsWithName = {
    ["0"] = "Admin",
	["1"] = "Police",
	["2"] = "Opération 1",
    ["3"] = "Opération 2",
	["4"] = "Opération 3",
	["5"] = "Ambulance",
    ["6"] = "Opération 4",
    ["7"] = "Sherif",
    ["8"] = "Opération 5",
    ["9"] = "Justice",
    ["10"] = "Opération 6",
}

Config.Notification = function(source, message, type)
    --TriggerClientEvent("ox_lib:notify", source, {title = message, type = type or "inform", duration = 5000})
    -- TriggerClientEvent("t-notify:client:Custom", source, {title = message, style = type or "info", duration = 5000})
    -- TriggerClientEvent("esx:showNotification", source, message, type or "info", 5000)
     TriggerClientEvent("QBCore:Notify", source, message, type or "primary", 5000)
    -- TriggerClientEvent("okokNotify:Alert", source, message, nil, 5000, type or "info")
end
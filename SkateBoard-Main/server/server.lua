-- Initialisation de ESX
ESX = exports["es_extended"]:getSharedObject()

-- Enregistrement de l'item utilisable
ESX.RegisterUsableItem(Config.ItemName, function(source, item)
    local Player = ESX.GetPlayerFromId(source)
    TriggerClientEvent('astudios-skating:client:start', source, item)
end)

-- Enregistrement de l'événement serveur pour gérer le skateboard
RegisterServerEvent("astudios-skating:server:skate")
AddEventHandler("astudios-skating:server:skate", function(source)
    TriggerClientEvent("astudios-skating:client:skate", -1, source)
end)

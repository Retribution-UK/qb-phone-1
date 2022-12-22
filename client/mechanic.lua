local QBCore = exports['qb-core']:GetCoreObject()

RegisterNUICallback('GetAvailableMechanics', function(_, cb)
    QBCore.Functions.TriggerCallback('qb-phone:server:GetAvailableMechanics', function(mechanics)
        cb(mechanics)
    end)
end)
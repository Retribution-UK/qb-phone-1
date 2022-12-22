local QBCore = exports['qb-core']:GetCoreObject()

RegisterNUICallback('GetAvailableRecovery', function(_, cb)
    QBCore.Functions.TriggerCallback('qb-phone:server:GetAvailableRecovery', function(recovery)
        cb(recovery)
    end)
end)
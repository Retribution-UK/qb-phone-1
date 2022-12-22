local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('qb-phone:server:GetAvailableRecovery', function(_, cb)
    local Recovery = {}

    for i = 1, #Config.RecoveryJob do
        local job = Config.RecoveryJob[i]
        Recovery[job.Job] = {}
        Recovery[job.Job].Players = {}
    end

    for _, v in pairs(QBCore.Functions.GetPlayers()) do
        local Player = QBCore.Functions.GetPlayer(v)
        if Player then
            local job = Player.PlayerData.job.name
            if Recovery[job] and Player.PlayerData.job.onduty then
                Recovery[job].Players[#(Recovery[job].Players)+1] = {
                    Name = Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname,
                    Phone = Player.PlayerData.charinfo.phone,
                }
            end
        end
    end
    cb(Recovery)
end)
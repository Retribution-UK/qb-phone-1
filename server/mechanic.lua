local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('qb-phone:server:GetAvailableMechanics', function(_, cb)
    local Mechanics = {}

    for i = 1, #Config.MechanicJob do
        local job = Config.MechanicJob[i]
        Mechanics[job.Job] = {}
        Mechanics[job.Job].Players = {}
    end

    for _, v in pairs(QBCore.Functions.GetPlayers()) do
        local Player = QBCore.Functions.GetPlayer(v)
        if Player then
            local job = Player.PlayerData.job.name
            if Mechanics[job] and Player.PlayerData.job.onduty then
                Mechanics[job].Players[#(Mechanics[job].Players)+1] = {
                    Name = Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname,
                    Phone = Player.PlayerData.charinfo.phone,
                }
            end
        end
    end
    cb(Mechanics)
end)
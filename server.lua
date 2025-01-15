local junctionsKnown = {}
local leversSpawned = false

RegisterServerEvent('train-junctions:RequestJunctionStatus', function(junctionName)
    local junctionStatus = false

    if junctionsKnown[junctionName] ~= nil then
        junctionStatus = junctionsKnown[junctionName]
    end
    TriggerClientEvent('train-junctions:UpdateJunctionStatus', source, junctionName, junctionStatus)
end)

RegisterServerEvent('train-junctions:SwitchJunctionStatus', function(junctionName, newStatus)
    junctionsKnown[junctionName] = newStatus
    TriggerClientEvent('train-junctions:UpdateJunctionStatus', -1, junctionName, newStatus)
end)

RegisterServerEvent('train-junctions:RequestJunctionLeversObj', function()
    TriggerClientEvent('train-junctions:spawnLeversObj', source, leversSpawned)
end)

RegisterServerEvent('train-junctions:NotifyJunctionLeversObjSpawned', function()
    leversSpawned = true
end)


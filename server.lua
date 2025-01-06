local junctionsKnown = {}

RegisterServerEvent('bcc-train:RequestJunctionStatus', function(junctionName)
    local junctionStatus = false

    if junctionsKnown[junctionName] ~= nil then
        junctionStatus = junctionsKnown[junctionName]
    end
    TriggerClientEvent('bcc-train:UpdateJunctionStatus', source, junctionName, junctionStatus)
end)


RegisterServerEvent('bcc-train:SwitchJunctionStatus', function(junctionName, newStatus)
    junctionsKnown[junctionName] = newStatus
    TriggerClientEvent('bcc-train:UpdateJunctionStatus', -1, junctionName, newStatus)
end)
local alreadyInside = false
local nearJunctions = {}
local debug = false
local junctionsLever = {}

local text = "Press [X] to switch track junction"
local text2 = "This junction seem broken..."

-- Get junction status when enter on juntion area
CreateThread(function()
    --Remove imaps
    if Config.imaps then
        for _, k in pairs(Config.entities) do
            RemoveImap(k)
        end
    end

    --TriggerServerEvent('train-junctions:RequestJunctionLeversObj')
    spawnLeversObj()

    --When near junction, ask server to junction status
    while true do
        for jName, jData in pairs(Config.tracksJunction) do
            if #(GetEntityCoords(PlayerPedId()) - jData.ways.origin) <= jData.radius then
                if not nearJunctions[jName] then
                    TriggerServerEvent('train-junctions:RequestJunctionStatus', jName)
                elseif Config.manualSwitchEnabled and #(GetEntityCoords(PlayerPedId()) - jData.junctionLever.animCoords) <= 2 then
                    junctionBlipUpdate(jName)
                    Wait(100)
                end
            else
                for nearJName, nearJData in pairs(nearJunctions) do
                    if nearJName == jName then
                        junctionBlipRemove(jName)
                        nearJunctions[nearJName] = nil
                    end
                end
            end
        end
        for jName, jData in pairs(Config.tracksJunctionLocked) do
            if #(GetEntityCoords(PlayerPedId()) - jData.coords) <= 2 then
                TriggerServerEvent('train-junctions:RequestJunctionStatus', jName)
            end
        end
        Wait(100)
    end
end)


--Switch junction to the destination way get by the train
CreateThread(function()
    while true do
        for jName, jData in pairs(Config.tracksJunction) do
            if #(GetEntityCoords(PlayerPedId()) - jData.ways.destA) <= 2 then
                TriggerServerEvent('train-junctions:SwitchJunctionStatus', jName, false)
                Wait(1000)
            elseif #(GetEntityCoords(PlayerPedId()) - jData.ways.destB) <= 2 then
                TriggerServerEvent('train-junctions:SwitchJunctionStatus', jName, true)
                Wait(1000)
            end
        end
        Wait(100)
    end
end)


--Update blips
function junctionBlipUpdate(jName)
    local openedWayCoord, closedWayCoord
    local jConfig = Config.tracksJunction[jName]

    junctionBlipRemove(jName)

    if PlayerPedId() == GetDriverOfVehicle(GetLastDrivenVehicle())
    or #(GetEntityCoords(PlayerPedId()) - Config.tracksJunction[jName].junctionLever.animCoords) <= 2 then
        if nearJunctions[jName].status then
            openedWayCoord = jConfig.ways.destB
            closedWayCoord = jConfig.ways.destA
        else
            openedWayCoord = jConfig.ways.destA
            closedWayCoord = jConfig.ways.destB
        end

        -- SPLIT WAYS --
        nearJunctions[jName].splitWayBlip = Citizen.InvokeNative(0x554d9d53f696d002, 1664425300, jConfig.ways.origin) -- BlipAddForCoords
        SetBlipSprite(nearJunctions[jName].splitWayBlip, Config.blip.model.swap, true)
        Citizen.InvokeNative(0x662D364ABF16DE2F, nearJunctions[jName].splitWayBlip, joaat(Config.blip.color.yellowOrange)) -- BlipAddModifier
        Citizen.InvokeNative(0x9CB1A1623062F402, nearJunctions[jName].splitWayBlip, "Train - Split way") -- SetBlipNameFromPlayerString


        -- CLOSED WAY --
        nearJunctions[jName].closedWayBlip = Citizen.InvokeNative(0x554d9d53f696d002, 1664425300, closedWayCoord) -- BlipAddForCoords
        SetBlipSprite(nearJunctions[jName].closedWayBlip, Config.blip.model.cross, true)
        Citizen.InvokeNative(0x662D364ABF16DE2F, nearJunctions[jName].closedWayBlip, joaat(Config.blip.color.red)) -- BlipAddModifier
        Citizen.InvokeNative(0x9CB1A1623062F402, nearJunctions[jName].closedWayBlip, "Train - Closed way") -- SetBlipNameFromPlayerString

        -- OPENED WAY --
        nearJunctions[jName].openedWayBlip = Citizen.InvokeNative(0x554d9d53f696d002, 1664425300, openedWayCoord) -- BlipAddForCoords
        SetBlipSprite(nearJunctions[jName].openedWayBlip, Config.blip.model.arrow, true)
        Citizen.InvokeNative(0x662D364ABF16DE2F, nearJunctions[jName].openedWayBlip, joaat(Config.blip.color.green)) -- BlipAddModifier
        Citizen.InvokeNative(0x9CB1A1623062F402, nearJunctions[jName].openedWayBlip, "Train - Opened way") -- SetBlipNameFromPlayerString
    end
end

--Remove blips
function junctionBlipRemove(jName)
    if nearJunctions[jName].splitWayBlip then
        RemoveBlip(nearJunctions[jName].splitWayBlip)
        nearJunctions[jName].splitWayBlip = nil
    end
    if nearJunctions[jName].openedWayBlip then
        RemoveBlip(nearJunctions[jName].openedWayBlip)
        nearJunctions[jName].openedWayBlip = nil
    end    
    if nearJunctions[jName].closedWayBlip then
        RemoveBlip(nearJunctions[jName].closedWayBlip)
        nearJunctions[jName].closedWayBlip = nil
    end  
end

function GetSwitchObject()
    local size = 0
	local itemSet = CreateItemset(true)
	size = Citizen.InvokeNative(0x59B57C4B06531E1E, GetEntityCoords(PlayerPedId()), 7.5, itemSet, 3, Citizen.ResultAsInteger())

	if size > 0 then
		for index = 0, size do
			local entity = GetIndexedItemInItemset(index, itemSet)
			local model_hash = GetEntityModel(entity)
			if model_hash == joaat(Config.other.leverModel) then
				if IsItemsetValid(itemSet) then
					DestroyItemset(itemSet)
				end
				return entity
			end
		end
	end

	if IsItemsetValid(itemSet) then
		DestroyItemset(itemSet)
	end
end

--Switch junction way
RegisterNetEvent('train-junctions:UpdateJunctionStatus', function(jName, status)
    if Config.tracksJunction[jName] then
        if not nearJunctions[jName] then
            nearJunctions[jName] = {}
        end
        nearJunctions[jName].status = status

        if debug then
            print("---")
            print("Switch " .. Config.tracksJunction[jName].trackHash .. ":" .. Config.tracksJunction[jName].junctionIndex .. " to: " .. tostring(nearJunctions[jName].status))
        end
        SetTrainTrackJunctionSwitch(Config.tracksJunction[jName].trackHash, Config.tracksJunction[jName].junctionIndex, nearJunctions[jName].status)    --SetTrainTrackJunctionSwitch
        junctionBlipUpdate(jName)
    elseif Config.tracksJunctionLocked[jName] then
        SetTrainTrackJunctionSwitch(Config.tracksJunctionLocked[jName].trackHash, Config.tracksJunctionLocked[jName].junctionIndex, Config.tracksJunctionLocked[jName].status)    --SetTrainTrackJunctionSwitch
    end
end)


--RegisterNetEvent('train-junctions:spawnLeversObj', function(alreadySpawned)
function spawnLeversObj()
    if alreadySpawned then
        return
    end

    --Create junction levers
    if Config.manualSwitchEnabled then
        local leverModel = joaat(Config.other.leverModel)
        if not HasModelLoaded(leverModel) then
            RequestModel(leverModel, false)
            repeat Wait(0) until HasModelLoaded(leverModel)
        end
        for _, jData in pairs(Config.tracksJunction) do
            local object = CreateObject(joaat(leverModel), jData.junctionLever.objCoords, true, false, false, false)
            repeat Wait(0) until DoesEntityExist(object)
            --PlaceObjectOnGroundProperly(object, false)
            SetEntityAsMissionEntity(object, true, false)
            SetEntityHeading(object, jData.junctionLever.heading)
            FreezeEntityPosition(object, true)
            SetEntityCollision(object, false, true)
            SetModelAsNoLongerNeeded(leverModel)
            table.insert(junctionsLever, object)
        end
        TriggerServerEvent('train-junctions:NotifyJunctionLeversObjSpawned')
    end
end

--Display message switch junction and check player action.
--Is effective only if train driver is near junction, on the origin way, and on the same track index as junction
CreateThread(function()
    local sleep = 100
    while true do
        sleep = 100
        for jName, jData in pairs(Config.tracksJunction) do
            if (Config.inLocomotivSwitchEnabled  --If is locomotiv switch junction enabled
                and #(GetEntityCoords(PlayerPedId()) - jData.ways.origin) <= jData.radius --Check if on radius
                and #(GetEntityCoords(PlayerPedId()) - jData.ways.destA) - Config.other.sizeOfLoco >= #(jData.ways.origin - jData.ways.destA)   --check position beetween player, origin and destA
                and #(GetEntityCoords(PlayerPedId()) - jData.ways.origin) - Config.other.sizeOfLoco <= #(GetEntityCoords(PlayerPedId()) - jData.ways.destA) - Config.other.sizeOfLoco   --check position beetween player, origin and destA
                and (jData.originTrackIndex == GetTrackIndexFromCoords(GetEntityCoords(PlayerPedId()))) --check track Index
                and PlayerPedId() == GetDriverOfVehicle(GetLastDrivenVehicle()))
            or (Config.manualSwitchEnabled
                and not IsPedInAnyTrain(PlayerPedId())
                and #(GetEntityCoords(PlayerPedId()) - jData.junctionLever.animCoords) <= 1) --Is player driver or near switch lever
            then 
                BgSetTextScale(0.50, 0.40)
                BgSetTextColor(255,255,255,255)
                SetTextCentre(true)
                Citizen.InvokeNative(0xADA9255D, 23) --Loads the font requested
                BgDisplayText(CreateVarString(10, "LITERAL_STRING", text), 0.5, 0.85)
                sleep = 1

                if IsControlJustReleased(0, Config.key) then
                    if not IsPedInAnyTrain(PlayerPedId()) then    --Make animation for manual switch
                        local sound = GetSoundId()
                        switchId = GetSwitchObject()
                        ClearPedTasks(PlayerPedId())
                        RequestAnimDict("script_story@trn3@ig@ig_1_pulllever")
                        while not HasAnimDictLoaded("script_story@trn3@ig@ig_1_pulllever") do
                            Wait(1)
                        end
                        if nearJunctions[jName].status then
                            SetEntityCoords(PlayerPedId(), GetOffsetFromEntityInWorldCoords(switchId, vec3(0.0, 3.425791, 0.0)), false, false, false, false)
                            TaskTurnPedToFaceEntity(PlayerPedId(), switchId, -1)
                            Wait(2000)
                            PlayEntityAnim(switchId, "pulllever_railswitch", "script_story@trn3@ig@ig_1_pulllever", 1.0, false, true,false,0.0,32768)
                            TaskPlayAnim(PlayerPedId(), "script_story@trn3@ig@ig_1_pulllever", "pulllever_arthur", 1.0,	1.0, -1, 0, 0.0, false, false, false, '', false)
                            Wait(1250)
                            Citizen.InvokeNative(0xF1C5310FEAA36B48, sound, "lock_gate", switchId, "MOB1_Sounds", 0)
                        else
                            SetEntityCoords(PlayerPedId(), GetOffsetFromEntityInWorldCoords(switchId, vec3(0.0, 3.425791, 0.0)), false, false, false, false)
                            TaskTurnPedToFaceEntity(PlayerPedId(), switchId, -1)
                            Wait(2000)
                            PlayEntityAnim(switchId, "leverpush_railswitch", "script_story@trn3@ig@ig_1_pulllever", 1.0, false, true,false,0.0,32768)
                            TaskPlayAnim(PlayerPedId(), "script_story@trn3@ig@ig_1_pulllever", "leverpush_arthur", 1.0,	1.0, -1, 0, 0.0, false, false, false, '', false)
                            Wait(1250)
                            Citizen.InvokeNative(0xF1C5310FEAA36B48, sound, "lock_gate", switchId, "MOB1_Sounds", 0)
                        end
                    end

                    local newStatus
                    if nearJunctions[jName].status == true then
                        newStatus = false
                    else
                        newStatus = true
                    end
                    TriggerServerEvent('train-junctions:SwitchJunctionStatus', jName, newStatus)
                    Wait(300)
                end
                break
            end
        end
        Wait(sleep)
    end
end)


-- Cleanup
AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    
    --Remove blips
    for jName, _ in pairs(nearJunctions) do 
        junctionBlipRemove(jName)
    end

    --Remove junctions levers
    for _, obj in pairs(junctionsLever) do 
        DeleteObject(obj)
    end
    
    --Clear junctions status
    SetAllJunctionsCleared()

    --Restore Imaps
    for _, k in pairs(Config.entities) do
        RequestImap(k)
    end
end)

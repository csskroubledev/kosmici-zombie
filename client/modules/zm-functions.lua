ZM = kosmici.modules("zombiemod")
ZM.CheckZone = function(coords) 
    local tier = 1
    for k,v in pairs(ZM.Config.Zones) do
        if #(vec3(v.x, v.y, v.z) - coords) < v.radius then
            tier = v.tier
            break
        end
    end
    return tier
end

ZM.RespawnPed = function(ped, coords, heading)
	SetEntityCoordsNoOffset(ped, coords.x, coords.y, coords.z, false, false, false, true)
	NetworkResurrectLocalPlayer(coords.x, coords.y, coords.z, heading, true, false)
	SetPlayerInvincible(ped, false)
	ClearPedBloodDamage(ped)

	TriggerEvent('playerSpawned')
end

ZM.SetWeaponDrops = function()
	local handle, ped = FindFirstPed()
	local finished = false

	repeat
		if not IsEntityDead(ped) then
			SetPedDropsWeaponsWhenDead(ped, false)
		end
		finished, ped = FindNextPed(handle)
	until not finished

	EndFindPed(handle)
end

ZM.SpawnZombie = function(coords, tier)
    if ZM.Config.DebugMode then
        kosmici.log("spawning zombie with tier "..tier)
    end
    local model = ZM.Config.Models[math.random(1,#ZM.Config.Models)]
    RequestModel(model)
    while not HasModelLoaded(model) do
        Citizen.Wait(100)
    end
    local zombie = CreatePed(4, model, coords, 0.0, false, false)
    table.insert(ZM.Pools.Zombies, {
        id = zombie,
        tier = tier or 1
    })
    RequestAnimSet("move_m@drunk@verydrunk")
    while not HasAnimSetLoaded("move_m@drunk@verydrunk") do
        Citizen.Wait(1)
    end
    SetPedMovementClipset(zombie, "move_m@drunk@verydrunk", 1.0)

    -- wyłączenie headów na 1 hit
    SetPedSuffersCriticalHits(zombie, false)
    -- chodzenie
    TaskWanderStandard(zombie, 1.0, 10)
    -- odpalenie że może atakować swoich
    SetCanAttackFriendly(zombie, true, true)
    -- nie może uciec od nurkowania czy jakoś tak
    SetPedCanEvasiveDive(zombie, false)
    -- ustawienie grupy zombie
    SetPedRelationshipGroupHash(zombie, GetHashKey("zombie"))
    -- wyłączenie default atakowania
    SetPedCombatAbility(zombie, 0) 
    SetPedCombatRange(zombie,0) -- to samo co wyżej
    SetPedCombatMovement(zombie, 0) -- to samo co wyżej
    -- ped nie zwraca uwagi na innych
    SetPedAlertness(zombie,0)
    -- ustawia taki dziwny styl chodzenia
    SetPedIsDrunk(zombie, true)
    -- ustawienie jakieś flagi w configu
    SetPedConfigFlag(zombie,100,1)
    -- wyłączenie ragdolla
	SetPedCanRagdoll(zombie,false)
    -- efekty krwi na ciele
    ApplyPedDamagePack(zombie,"BigHitByVehicle", 0.0, 9.0)
    ApplyPedDamagePack(zombie,"SCR_Dumpster", 0.0, 9.0)
    ApplyPedDamagePack(zombie,"SCR_Torture", 0.0, 9.0)
    -- wyłączenie dźwięków po zadaniu dmg/śmierci
    DisablePedPainAudio(zombie, true)
    -- wyłączenie gadania peda
    StopPedSpeaking(zombie,true)
    -- ustawienie peda jako mission
    SetEntityAsMissionEntity(zombie, true, true)
    -- wyłączenie wywalania się od strzałów gracza
	SetPedCanRagdollFromPlayerImpact(zombie, false)

    local maxH = (tier or 1)*200
    -- ustawienie max hp tier*200
    SetEntityMaxHealth(zombie, maxH)
    -- ustawienie hp na max
    SetEntityHealth(zombie, maxH)
end

ZM.DrawText3D = function(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
	ClearDrawOrigin()
end

ZM.DrawText = function(x,y,text) 
	SetTextFont(0)
	SetTextProportional(1)
	SetTextScale(0.0, 0.3)
	SetTextColour(128, 128, 128, 255)
	SetTextDropshadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end 

local sub_b0b5 = {
    [0] = "MP_Plane_Passenger_1",
    [1] = "MP_Plane_Passenger_2",
    [2] = "MP_Plane_Passenger_3",
    [3] = "MP_Plane_Passenger_4",
    [4] = "MP_Plane_Passenger_5",
    [5] = "MP_Plane_Passenger_6",
    [6] = "MP_Plane_Passenger_7"
}

function sub_b747(ped, a_1)
    if a_1 == 0 then
        SetPedComponentVariation(ped, 0, 21, 0, 0)
        SetPedComponentVariation(ped, 1, 0, 0, 0)
        SetPedComponentVariation(ped, 2, 9, 0, 0)
        SetPedComponentVariation(ped, 3, 1, 0, 0)
        SetPedComponentVariation(ped, 4, 9, 0, 0)
        SetPedComponentVariation(ped, 5, 0, 0, 0)
        SetPedComponentVariation(ped, 6, 4, 8, 0)
        SetPedComponentVariation(ped, 7, 0, 0, 0)
        SetPedComponentVariation(ped, 8, 15, 0, 0)
        SetPedComponentVariation(ped, 9, 0, 0, 0)
        SetPedComponentVariation(ped, 10, 0, 0, 0)
        SetPedComponentVariation(ped, 11, 10, 0, 0)
        ClearPedProp(ped, 0)
        ClearPedProp(ped, 1)
        ClearPedProp(ped, 2)
        ClearPedProp(ped, 3)
        ClearPedProp(ped, 4)
        ClearPedProp(ped, 5)
        ClearPedProp(ped, 6)
        ClearPedProp(ped, 7)
        ClearPedProp(ped, 8)
    elseif a_1 == 1 then
        SetPedComponentVariation(ped, 0, 13, 0, 0)
        SetPedComponentVariation(ped, 1, 0, 0, 0)
        SetPedComponentVariation(ped, 2, 5, 4, 0)
        SetPedComponentVariation(ped, 3, 1, 0, 0)
        SetPedComponentVariation(ped, 4, 10, 0, 0)
        SetPedComponentVariation(ped, 5, 0, 0, 0)
        SetPedComponentVariation(ped, 6, 10, 0, 0)
        SetPedComponentVariation(ped, 7, 11, 2, 0)
        SetPedComponentVariation(ped, 8, 13, 6, 0)
        SetPedComponentVariation(ped, 9, 0, 0, 0)
        SetPedComponentVariation(ped, 10, 0, 0, 0)
        SetPedComponentVariation(ped, 11, 10, 0, 0)
        ClearPedProp(ped, 0)
        ClearPedProp(ped, 1)
        ClearPedProp(ped, 2)
        ClearPedProp(ped, 3)
        ClearPedProp(ped, 4)
        ClearPedProp(ped, 5)
        ClearPedProp(ped, 6)
        ClearPedProp(ped, 7)
        ClearPedProp(ped, 8)
    elseif a_1 == 2 then
        SetPedComponentVariation(ped, 0, 15, 0, 0)
        SetPedComponentVariation(ped, 1, 0, 0, 0)
        SetPedComponentVariation(ped, 2, 1, 4, 0)
        SetPedComponentVariation(ped, 3, 1, 0, 0)
        SetPedComponentVariation(ped, 4, 0, 1, 0)
        SetPedComponentVariation(ped, 5, 0, 0, 0)
        SetPedComponentVariation(ped, 6, 1, 7, 0)
        SetPedComponentVariation(ped, 7, 0, 0, 0)
        SetPedComponentVariation(ped, 8, 2, 9, 0)
        SetPedComponentVariation(ped, 9, 0, 0, 0)
        SetPedComponentVariation(ped, 10, 0, 0, 0)
        SetPedComponentVariation(ped, 11, 6, 0, 0)
        ClearPedProp(ped, 0)
        ClearPedProp(ped, 1)
        ClearPedProp(ped, 2)
        ClearPedProp(ped, 3)
        ClearPedProp(ped, 4)
        ClearPedProp(ped, 5)
        ClearPedProp(ped, 6)
        ClearPedProp(ped, 7)
        ClearPedProp(ped, 8)
    elseif a_1 == 3 then
        SetPedComponentVariation(ped, 0, 14, 0, 0)
        SetPedComponentVariation(ped, 1, 0, 0, 0)
        SetPedComponentVariation(ped, 2, 5, 3, 0)
        SetPedComponentVariation(ped, 3, 3, 0, 0)
        SetPedComponentVariation(ped, 4, 1, 6, 0)
        SetPedComponentVariation(ped, 5, 0, 0, 0)
        SetPedComponentVariation(ped, 6, 11, 5, 0)
        SetPedComponentVariation(ped, 7, 0, 0, 0)
        SetPedComponentVariation(ped, 8, 2, 0, 0)
        SetPedComponentVariation(ped, 9, 0, 0, 0)
        SetPedComponentVariation(ped, 10, 0, 0, 0)
        SetPedComponentVariation(ped, 11, 3, 12, 0)
        ClearPedProp(ped, 0)
        ClearPedProp(ped, 1)
        ClearPedProp(ped, 2)
        ClearPedProp(ped, 3)
        ClearPedProp(ped, 4)
        ClearPedProp(ped, 5)
        ClearPedProp(ped, 6)
        ClearPedProp(ped, 7)
        ClearPedProp(ped, 8)
    elseif a_1 == 4 then
        SetPedComponentVariation(ped, 0, 18, 0, 0)
        SetPedComponentVariation(ped, 1, 0, 0, 0)
        SetPedComponentVariation(ped, 2, 15, 3, 0)
        SetPedComponentVariation(ped, 3, 15, 0, 0)
        SetPedComponentVariation(ped, 4, 2, 5, 0)
        SetPedComponentVariation(ped, 5, 0, 0, 0)
        SetPedComponentVariation(ped, 6, 4, 6, 0)
        SetPedComponentVariation(ped, 7, 4, 0, 0)
        SetPedComponentVariation(ped, 8, 3, 0, 0)
        SetPedComponentVariation(ped, 9, 0, 0, 0)
        SetPedComponentVariation(ped, 10, 0, 0, 0)
        SetPedComponentVariation(ped, 11, 4, 0, 0)
        ClearPedProp(ped, 0)
        ClearPedProp(ped, 1)
        ClearPedProp(ped, 2)
        ClearPedProp(ped, 3)
        ClearPedProp(ped, 4)
        ClearPedProp(ped, 5)
        ClearPedProp(ped, 6)
        ClearPedProp(ped, 7)
        ClearPedProp(ped, 8)
    elseif a_1 == 5 then
        SetPedComponentVariation(ped, 0, 27, 0, 0)
        SetPedComponentVariation(ped, 1, 0, 0, 0)
        SetPedComponentVariation(ped, 2, 7, 3, 0)
        SetPedComponentVariation(ped, 3, 11, 0, 0)
        SetPedComponentVariation(ped, 4, 4, 8, 0)
        SetPedComponentVariation(ped, 5, 0, 0, 0)
        SetPedComponentVariation(ped, 6, 13, 14, 0)
        SetPedComponentVariation(ped, 7, 5, 3, 0)
        SetPedComponentVariation(ped, 8, 3, 0, 0)
        SetPedComponentVariation(ped, 9, 0, 0, 0)
        SetPedComponentVariation(ped, 10, 0, 0, 0)
        SetPedComponentVariation(ped, 11, 2, 7, 0)
        ClearPedProp(ped, 0)
        ClearPedProp(ped, 1)
        ClearPedProp(ped, 2)
        ClearPedProp(ped, 3)
        ClearPedProp(ped, 4)
        ClearPedProp(ped, 5)
        ClearPedProp(ped, 6)
        ClearPedProp(ped, 7)
        ClearPedProp(ped, 8)
    elseif a_1 == 6 then
        SetPedComponentVariation(ped, 0, 16, 0, 0)
        SetPedComponentVariation(ped, 1, 0, 0, 0)
        SetPedComponentVariation(ped, 2, 15, 1, 0)
        SetPedComponentVariation(ped, 3, 3, 0, 0)
        SetPedComponentVariation(ped, 4, 5, 6, 0)
        SetPedComponentVariation(ped, 5, 0, 0, 0)
        SetPedComponentVariation(ped, 6, 2, 8, 0)
        SetPedComponentVariation(ped, 7, 0, 0, 0)
        SetPedComponentVariation(ped, 8, 2, 0, 0)
        SetPedComponentVariation(ped, 9, 0, 0, 0)
        SetPedComponentVariation(ped, 10, 0, 0, 0)
        SetPedComponentVariation(ped, 11, 3, 7, 0)
        ClearPedProp(ped, 0)
        ClearPedProp(ped, 1)
        ClearPedProp(ped, 2)
        ClearPedProp(ped, 3)
        ClearPedProp(ped, 4)
        ClearPedProp(ped, 5)
        ClearPedProp(ped, 6)
        ClearPedProp(ped, 7)
        ClearPedProp(ped, 8)
    end
end

ZM.RunCutscene = function()
	PrepareMusicEvent("FM_INTRO_START")
	TriggerMusicEvent("FM_INTRO_START")
    local plyrId = PlayerPedId()

	RequestCutsceneWithPlaybackList("MP_INTRO_CONCAT", 31, 8)
    while not HasCutsceneLoaded() do Wait(10) end
    RegisterEntityForCutscene(0, 'MP_Male_Character', 3, GetEntityModel(PlayerPedId()), 0)
    RegisterEntityForCutscene(PlayerPedId(), 'MP_Male_Character', 0, 0, 0)
    SetCutsceneEntityStreamingFlags('MP_Male_Character', 0, 1) 
    local female = RegisterEntityForCutscene(0,"MP_Female_Character",3,0,64) 
    NetworkSetEntityInvisibleToNetwork(female, true)
	local ped = {}
	for v_3=0, 6, 1 do
		if v_3 == 1 or v_3 == 2 or v_3 == 4 or v_3 == 6 then
			ped[v_3] = CreatePed(26, `mp_f_freemode_01`, -1117.77783203125, -1557.6248779296875, 3.3819, 0.0, 0, 0)
		else
			ped[v_3] = CreatePed(26, `mp_m_freemode_01`, -1117.77783203125, -1557.6248779296875, 3.3819, 0.0, 0, 0)
		end
        if not IsEntityDead(ped[v_3]) then
			sub_b747(ped[v_3], v_3)
            FinalizeHeadBlend(ped[v_3])
            RegisterEntityForCutscene(ped[v_3], sub_b0b5[v_3], 0, 0, 64)
        end
    end
	
	NewLoadSceneStartSphere(-1212.79, -1673.52, 7, 1000, 0)

    SetWeatherTypeNow("EXTRASUNNY")
    SetArtificialLightsState(false)
    StartCutscene(4)

    Wait(31520)
	for v_3=0, 6, 1 do
		DeleteEntity(ped[v_3])
	end
	PrepareMusicEvent("AC_STOP")
	TriggerMusicEvent("AC_STOP")
    StopCutsceneImmediately()
    CreateThread(function() 
        Citizen.Wait(1000)
        --[[
            Skin
        ]]
        editingSkin = true
        ZM.Temp.SkinOldCrds = vector3(-1035.21, -2733.91, 20.17)
        SetEntityCoordsNoOffset(ZM.Player.Ped, ZM.Config.SkinRoom, false, false, false, true)
        Citizen.Wait(550)
        local skinKeys = {}
        for k,v in pairs(ZM.Config.Skins) do
            table.insert(skinKeys, k)
        end
        SendNUIMessage({type="loadSkins", skins = skinKeys, skin = ""})
        local cam = CreateCam('DEFAULT_SCRIPTED_CAMERA')
        SetEntityHeading(ZM.Player.Ped, 90.0)
        local coordsCam = GetOffsetFromEntityInWorldCoords(ZM.Player.Ped, 0.0, 2.5, 0.35)
        local coordsPly = ZM.Player.Coords
        ZM.Temp.SkinCamPos = coordsCam
        ZM.Temp.SkinRot = 90.0
        ZM.Temp.SkinZ = coordsCam.z
        ZM.Temp.ZOffset = 0.35
        SetCamCoord(cam, coordsCam)
        PointCamAtCoord(cam, coordsPly['x'], coordsPly['y'], coordsPly['z']+0.35)

        SetCamActive(cam, true)
        RenderScriptCams(true, true, 500, true, true)
        ZM.Temp.SkinCam = cam
        SendNUIMessage({type="toggleSkin", toggle=true})
        SetNuiFocus(true,true)
        SetCurrentPedWeapon(ZM.Player.Ped, GetHashKey("WEAPON_UNARMED"), true)
        SetArtificialLightsState(false)
    end)
end


function IsMale(ped)
	if IsPedModel(ped, 'mp_m_freemode_01') then
		return true
	else
		return false
	end
end

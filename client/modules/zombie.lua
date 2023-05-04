ZM = kosmici.modules("zombiemod")

ZM.Selected = false
ZM.Config = {
    DebugMode = false,
    WeaponsDamage = {
        [`WEAPON_RAMMED_BY_CAR`] = 0.0,
        [`WEAPON_RUN_OVER_BY_CAR`] = 0.0,
    },
    DespawnDist = 170.0,
	MinSpawnDist = 30.0,
	MaxSpawnDist = 60.0,
	MaxZombies = 35,
    Zones = {
		{id = 1, x = 202.26, y = -922.09, z = 35.8, radius = 75.0, tier = 3},
		{id = 2, x = -1469.73, y = -652.55, z = 33.05, radius = 50.0, tier = 4},
		{id = 3, x = -1154.59, y = -529.34, z = 35.67, radius = 55.0, tier = 5},
		{id = 4, x = -386.6, y = -112.5, z = 42.1, radius = 60.0, tier = 3},
		{id = 5, x = -313.31, y = -759.79, z = 35.77, radius = 60.0, tier = 2},
		{id = 6, x = -914.67, y = -2518.93, z = 15.79, radius = 80.0, tier = 2},
		{id = 7, x = -1125.69, y = -1986.12, z = 13.74, radius = 40.0, tier = 3},
		{id = 8, x = -489.12, y = -1701.56, z = 22.84, radius = 120.0, tier = 2},
		{id = 9, x = -33.1, y = -1511.53, z = 35.79, radius = 80.0, tier = 2},
		{id = 10, x = 338.27, y = -2037.04, z = 27.58, radius = 90.0, tier = 2},
		{id = 11, x = 48.27, y = -1890.89, z = 25.41, radius = 50.0, tier = 3},
		{id = 12, x = -1092.31, y = -839.49, z = 14.24, radius = 100.0, tier = 3},
		{id = 13, x = 292.83, y = -579.41, z = 46.91, radius = 80.0, tier = 2},
		{id = 14, x = 61.86, y = -402.9, z = 46.35, radius = 80.0, tier = 3},
		{id = 15, x = 982.81, y = -112.11, z = 73.67, radius = 90.0, tier = 3},
		{id = 16, x = 861.5, y = -917.54, z = 29.93, radius = 70.0, tier = 2},
		{id = 17, x = 718.05, y = -1084.84, z = 24.65, radius = 30.0, tier = 3},
		{id = 18, x = 1027.58, y = -1981.13, z = 32.86, radius = 170.0, tier = 3},
		{id = 19, x = -2333.47, y = 3276.87, z = 40.98, radius = 80.0, tier = 3},
		{id = 20, x = 413.77, y = 6489.32, z = 36.85, radius = 80.0, tier = 3},
		{id = 21, x = 3540.9, y = 3779.76, z = 39.13, radius = 160.0, tier = 2},
		{id = 22, x = 2389.58, y = 3099.22, z = 56.85, radius = 70.0, tier = 2},
		{id = 23, x = 1842.1, y = 3672.16, z = 34.38, radius = 80.0, tier = 3},
		{id = 24, x = 1679.37, y = 4842.46, z = 49.76, radius = 90.0, tier = 3},
		{id = 25, x = 1332.06, y = 4357.47, z = 51.82, radius = 60.0, tier = 6},
		{id = 26, x = 2476.49, y = 3779.59, z = 48.56, radius = 60.0, tier = 5},
		{id = 27, x = 2644.42, y = 3277.64, z = 61.77, radius = 40.0, tier = 2},
		{id = 28, x = 2539.75, y = 2617.13, z = 46.35, radius = 50.0, tier = 2},
		{id = 29, x = 2337.36, y = 2547.18, z = 48.14, radius = 90.0, tier = 3}
    },
	SkinRoom = vector3(1004.13,-3199.19,-38.99),
	BlockedHudComponents = {
		1,
		3,
		4,
		5,
		6,
		7,
		8,
		9,
		13,
		15
	},
	Skins = {
		["Mężczyzna #1"] = "a_m_m_eastsa_02",
		["Mężczyzna #2"] = "a_m_m_farmer_01",
		["Mężczyzna #3"] = "a_m_m_fatlatin_01",
		["Mężczyzna #4"] = "a_m_m_genfat_02",
		["Mężczyzna #5"] = "a_m_m_ktown_01",
		["Mężczyzna #6"] = "a_m_m_malibu_01",
		["Mężczyzna #7"] = "a_m_m_mexlabor_01",
		["Mężczyzna #8"] = "a_m_m_skidrow_01",
		["Mężczyzna #9"] = "a_m_m_stlat_02",
		["Mężczyzna #10"] = "a_m_m_tramp_01",
		["Kobieta #1"] = "a_f_y_runner_01",
		["Kobieta #2"] = "a_f_y_scdressy_01",
		["Kobieta #3"] = "a_f_y_hipster_01",
		["Kobieta #4"] = "a_f_y_golfer_01",
		["Kobieta #5"] = "a_f_y_fitness_02",
		["Kobieta #6"] = "a_f_m_soucent_01",
		["Kobieta #7"] = "a_f_y_vinewood_02",
		["Kobieta #8"] = "a_f_y_yoga_01",
		["Kobieta #9"] = "a_f_y_smartcaspat_01",
		["Kobieta #10"] = "a_f_y_indian_01"
	},
	Models = {
		"A_F_M_Beach_01",
		"A_F_M_BevHills_01",
		"A_F_M_BevHills_02",
		"A_F_M_BodyBuild_01",
		"A_F_M_Business_02",
		"A_F_M_Downtown_01",
		"A_F_M_EastSA_01",
		"A_F_M_EastSA_02",
		"A_F_M_FatBla_01",
		"A_F_M_FatCult_01",
		"A_F_M_FatWhite_01",
		"A_F_M_KTown_01",
		"A_F_M_KTown_02",
		"A_F_M_ProlHost_01",
		"A_F_M_Salton_01",
		"A_F_M_SkidRow_01",
		"A_F_M_SouCentMC_01",
		"A_F_M_SouCent_01",
		"A_F_M_SouCent_02",
		"A_F_M_Tourist_01",
		"A_F_M_TrampBeac_01",
		"A_F_M_Tramp_01",
		"A_F_O_GenStreet_01",
		"A_F_O_Indian_01",
		"A_F_O_KTown_01",
		"A_F_O_Salton_01",
		"A_F_O_SouCent_01",
		"A_F_O_SouCent_02",
		"A_F_Y_Beach_01",
		"A_F_Y_BevHills_01",
		"A_F_Y_BevHills_02",
		"A_F_Y_BevHills_03",
		"A_F_Y_BevHills_04",
		"A_F_Y_Business_01",
		"A_F_Y_Business_02",
		"A_F_Y_Business_03",
		"A_F_Y_Business_04",
		"A_F_Y_EastSA_01",
		"A_F_Y_EastSA_02",
		"A_F_Y_EastSA_03",
		"A_F_Y_Epsilon_01",
		"A_F_Y_Fitness_01",
		"A_F_Y_Fitness_02",
		"A_F_Y_GenHot_01",
		"A_F_Y_Golfer_01",
		"A_F_Y_Hiker_01",
		"A_F_Y_Hippie_01",
		"A_F_Y_Hipster_01",
		"A_F_Y_Hipster_02",
		"A_F_Y_Hipster_03",
		"A_F_Y_Hipster_04",
		"A_F_Y_Indian_01",
		"A_F_Y_Juggalo_01",
		"A_F_Y_Runner_01",
		"A_F_Y_RurMeth_01",
		"A_F_Y_SCDressy_01",
		"A_F_Y_Skater_01",
		"A_F_Y_SouCent_01",
		"A_F_Y_SouCent_02",
		"A_F_Y_SouCent_03",
		"A_F_Y_Tennis_01",
		"A_F_Y_Topless_01",
		"A_F_Y_Tourist_01",
		"A_F_Y_Tourist_02",
		"A_F_Y_Vinewood_01",
		"A_F_Y_Vinewood_02",
		"A_F_Y_Vinewood_03",
		"A_F_Y_Vinewood_04",
		"A_F_Y_Yoga_01",
		"A_M_M_AfriAmer_01",
		"A_M_M_Beach_01",
		"A_M_M_Beach_02",
		"A_M_M_BevHills_01",
		"A_M_M_BevHills_02",
		"A_M_M_Business_01",
		"A_M_M_EastSA_01",
		"A_M_M_EastSA_02",
		"A_M_M_Farmer_01",
		"A_M_M_FatLatin_01",
		"A_M_M_GenFat_01",
		"A_M_M_GenFat_02",
		"A_M_M_Golfer_01",
		"A_M_M_HasJew_01",
		"A_M_M_Hillbilly_01",
		"A_M_M_Hillbilly_02",
		"A_M_M_Indian_01",
		"A_M_M_KTown_01",
		"A_M_M_Malibu_01",
		"A_M_M_MexCntry_01",
		"A_M_M_MexLabor_01",
		"A_M_M_OG_Boss_01",
		"A_M_M_Paparazzi_01",
		"A_M_M_Polynesian_01",
		"A_M_M_ProlHost_01",
		"A_M_M_RurMeth_01",
		"A_M_M_Salton_01",
		"A_M_M_Salton_02",
		"A_M_M_Salton_03",
		"A_M_M_Salton_04",
		"A_M_M_Skater_01",
		"A_M_M_Skidrow_01",
		"A_M_M_SoCenLat_01",
		"A_M_M_SouCent_01",
		"A_M_M_SouCent_02",
		"A_M_M_SouCent_03",
		"A_M_M_SouCent_04",
		"A_M_M_StLat_02",
		"A_M_M_Tennis_01",
		"A_M_M_Tourist_01",
		"A_M_M_TrampBeac_01",
		"A_M_M_Tramp_01",
		"A_M_M_TranVest_01",
		"A_M_M_TranVest_02",
		"A_M_O_ACult_01",
		"A_M_O_ACult_02",
		"A_M_O_Beach_01",
		"A_M_O_GenStreet_01",
		"A_M_O_KTown_01",
		"A_M_O_Salton_01",
		"A_M_O_SouCent_01",
		"A_M_O_SouCent_02",
		"A_M_O_SouCent_03",
		"A_M_O_Tramp_01",
		"A_M_Y_ACult_02",
		"A_M_Y_BeachVesp_01",
		"A_M_Y_BeachVesp_02",
		"A_M_Y_Beach_01",
		"A_M_Y_Beach_02",
		"A_M_Y_Beach_03",
		"A_M_Y_BevHills_01",
		"A_M_Y_BevHills_02",
		"A_M_Y_BreakDance_01",
		"A_M_Y_BusiCas_01",
		"A_M_Y_Business_01",
		"A_M_Y_Business_02",
		"A_M_Y_Business_03",
		"A_M_Y_Cyclist_01",
		"A_M_Y_DHill_01",
		"A_M_Y_Downtown_01",
		"A_M_Y_EastSA_01",
		"A_M_Y_EastSA_02",
		"A_M_Y_Epsilon_01",
		"A_M_Y_Epsilon_02",
		"A_M_Y_Gay_01",
		"A_M_Y_Gay_02",
		"A_M_Y_GenStreet_01",
		"A_M_Y_GenStreet_02",
		"A_M_Y_Golfer_01",
		"A_M_Y_HasJew_01",
		"A_M_Y_Hiker_01",
		"A_M_Y_Hippy_01",
		"A_M_Y_Hipster_01",
		"A_M_Y_Hipster_02",
		"A_M_Y_Hipster_03",
		"A_M_Y_Indian_01",
		"A_M_Y_Jetski_01",
		"A_M_Y_Juggalo_01",
		"A_M_Y_KTown_01",
		"A_M_Y_KTown_02",
		"A_M_Y_Latino_01",
		"A_M_Y_MethHead_01",
		"A_M_Y_MexThug_01",
		"A_M_Y_MotoX_01",
		"A_M_Y_MotoX_02",
		"A_M_Y_MusclBeac_01",
		"A_M_Y_MusclBeac_02",
		"A_M_Y_Polynesian_01",
		"A_M_Y_RoadCyc_01",
		"A_M_Y_Runner_01",
		"A_M_Y_Runner_02",
		"A_M_Y_Salton_01",
		"A_M_Y_Skater_01",
		"A_M_Y_Skater_02",
		"A_M_Y_SouCent_01",
		"A_M_Y_SouCent_02",
		"A_M_Y_SouCent_03",
		"A_M_Y_SouCent_04",
		"A_M_Y_StBla_01",
		"A_M_Y_StBla_02",
		"A_M_Y_StLat_01",
		"A_M_Y_StWhi_01",
		"A_M_Y_StWhi_02",
		"A_M_Y_Sunbathe_01",
		"A_M_Y_Surfer_01",
		"A_M_Y_VinDouche_01",
		"A_M_Y_Vinewood_01",
		"A_M_Y_Vinewood_02",
		"A_M_Y_Vinewood_03",
		"A_M_Y_Vinewood_04",
		"A_M_Y_Yoga_01",
		"G_F_Y_ballas_01",
		"G_F_Y_Families_01",
		"G_F_Y_Lost_01",
		"G_F_Y_Vagos_01",
		"G_M_M_ArmBoss_01",
		"G_M_M_ArmGoon_01",
		"G_M_M_ArmLieut_01",
		"G_M_M_ChemWork_01",
		"G_M_M_ChiBoss_01",
		"G_M_M_ChiCold_01",
		"G_M_M_ChiGoon_01",
		"G_M_M_ChiGoon_02",
		"G_M_M_KorBoss_01",
		"G_M_M_MexBoss_01",
		"G_M_M_MexBoss_02",
		"G_M_Y_ArmGoon_02",
		"G_M_Y_Azteca_01",
		"G_M_Y_BallaEast_01",
		"G_M_Y_BallaOrig_01",
		"G_M_Y_BallaSout_01",
		"G_M_Y_FamCA_01",
		"G_M_Y_FamDNF_01",
		"G_M_Y_FamFor_01",
		"G_M_Y_Korean_01",
		"G_M_Y_Korean_02",
		"G_M_Y_KorLieut_01",
		"G_M_Y_Lost_01",
		"G_M_Y_Lost_02",
		"G_M_Y_Lost_03",
		"G_M_Y_MexGang_01",
		"G_M_Y_MexGoon_01",
		"G_M_Y_MexGoon_02",
		"G_M_Y_MexGoon_03",
		"G_M_Y_PoloGoon_01",
		"G_M_Y_PoloGoon_02",
		"G_M_Y_SalvaBoss_01",
		"G_M_Y_SalvaGoon_01",
		"G_M_Y_SalvaGoon_02",
		"G_M_Y_SalvaGoon_03",
		"G_M_Y_StrPunk_01",
		"G_M_Y_StrPunk_02",
		"IG_Abigail",
		"IG_Ashley",
		"IG_Bankman",
		"IG_Barry",
		"IG_BestMen",
		"IG_Beverly",
		"IG_Bride",
		"IG_Car3guy1",
		"IG_Car3guy2",
		"IG_Chef",
		"IG_ChengSr",
		"IG_ChrisFormage",
		"IG_Clay",
		"IG_ClayPain",
		"IG_Cletus",
		"IG_Dale",
		"IG_Dreyfuss",
		"IG_FBISuit_01",
		"IG_Groom",
		"IG_Hao",
		"IG_Hunter",
		"IG_Janet",
		"IG_JewelAss",
		"IG_JimmyBoston",
		"IG_JoeMinuteMan",
		"IG_Josef",
		"IG_Josh",
		"IG_KerryMcIntosh",
		"IG_LifeInvad_01",
		"IG_LifeInvad_02",
		"IG_Magenta",
		"IG_Manuel",
		"IG_Marnie",
		"IG_MaryAnn",
		"IG_Maude",
		"IG_Michelle",
		"IG_MrsPhillips",
		"IG_MRS_Thornhill",
		"IG_Natalia",
		"IG_Nigel",
		"IG_Old_Man1A",
		"IG_Old_Man2",
		"IG_ONeil",
		"IG_Ortega",
		"IG_Paper",
		"IG_Priest",
		"IG_ProlSec_02",
		"IG_Ramp_Gang",
		"IG_Ramp_Hic",
		"IG_Ramp_Hipster",
		"IG_Ramp_Mex",
		"IG_RoccoPelosi",
		"IG_RussianDrunk",
		"IG_Screen_Writer",
		"IG_Talina",
		"IG_Tanisha"
	}
}
ZM.Temp = {}
ZM.Pools = {
    Zombies = {},
    ZombiesLoot = {},
}
ZM.Player = {
    Alive = false,
    Ped = PlayerPedId(),
    Coords = vector3(0,0,0),
    Vehicle = nil,
    Zone = nil
}
ZM.Utils = {
	RequestModel = function(hash) 
		if not HasModelLoaded(hash) then
			RequestModel(hash)

			while not HasModelLoaded(hash) do
				Citizen.Wait(30)
			end
		end
	end
}
ZM.Abilities = {
	{
		name = "Upadek",
		Run = function(entity) 
			UseParticleFxAssetNextCall("core")
			SetParticleFxNonLoopedColour(1.0, 0.0, 0.0)
			StartParticleFxNonLoopedOnEntity("exp_air_grenade", entity, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
			UseParticleFxAssetNextCall("core")
			SetParticleFxNonLoopedColour(1.0, 0.0, 0.0)
			StartParticleFxNonLoopedOnEntity("ent_brk_metal_frag", ZM.Player.Ped, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
			SetPedToRagdoll(ZM.Player.Ped, 3800, 3800, 0, 0, 0, 0)
		end
	},
	{
		name = "Teleport",
		Run = function(entity) 
			UseParticleFxAssetNextCall("core")
			SetParticleFxNonLoopedColour(1.0, 0.0, 0.0)
			StartParticleFxNonLoopedOnEntity("exp_air_molotov", entity, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
			SetEntityCoords(entity, ZM.Player.Coords)
		end
	},
	{
		name = "Porażenie",
		Run = function(entity) 
			UseParticleFxAssetNextCall("core")
			StartParticleFxNonLoopedOnEntity("ent_ray_prologue_elec_crackle_sp", entity, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 15.0, false, false, false, false)
			UseParticleFxAssetNextCall("core")
			StartParticleFxNonLoopedOnEntity("ent_sht_electrical_box", ZM.Player.Ped, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, false, false, false, false)
			local doEffect = false
			doEffect = true
			CreateThread(function() 
				while doEffect do
					Citizen.Wait(3)
					DisableControlAction(0, 22)
					SetPedMoveRateOverride(PlayerPedId(), 0.05)
					SetPedMoveRateOverride(entity, 3.0)
				end
			end)
			Citizen.SetTimeout(8900, function() 
				doEffect = false
				SetPedMoveRateOverride(PlayerPedId(), 1.0)
				SetPedMoveRateOverride(entity, 1.0)
			end)
		end
	},
	{
		name = "Oślepienie",
		Run = function(entity) 
			UseParticleFxAssetNextCall("core")
			StartParticleFxNonLoopedOnEntity("ent_ray_prologue_elec_crackle_sp", entity, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 15.0, false, false, false, false)
			AnimpostfxPlay("DeathFailMPDark", 12500, false)
			ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", 1.0)
		end
	}
}

local editingSkin = false

ZM.Run = function() 
    ZM.Selected = true
    kosmici.log("ZombieMod running")
    functions.changeView("main")
	kosmici.call("ts", "join", {module="zombiemod"})

	local newPlayer = true
	if newPlayer then
		ZM.RunCutscene()
	end

    kosmici.add("thread", "PlayerVariables", function() 
        while ZM.Selected do
            Citizen.Wait(500)
            ZM.Player.Ped = PlayerPedId()
            ZM.Player.Alive = not IsEntityDead(ZM.Player.Ped)
            ZM.Player.Coords = GetEntityCoords(ZM.Player.Ped)
            ZM.Player.Vehicle = GetVehiclePedIsIn(ZM.Player.Ped, false)
            local prevZone = ZM.Player.Zone
            ZM.Player.Zone = ZM.CheckZone(ZM.Player.Coords)
            if prevZone ~= ZM.Player.Zone then
				functions.sendNotification(functions.getTranslation(main.lang, "ENTERING_ZOMBIE_ZONE", ZM.Player.Zone))
            end
        end
    end, {})

    kosmici.add("thread", "HUDSync", function() 
        while ZM.Selected do
            Citizen.Wait(130)
            SendNUIMessage({type="updateHUD", maxhp = 200, hp=GetEntityHealth(ZM.Player.Ped), armor=GetPedArmour(ZM.Player.Ped)})
        end
    end,{})

	kosmici.add("thread", "LootCollect", function() 
		while ZM.Selected do
			Citizen.Wait(3)
			local fnd = false
			for i,v in ipairs(ZM.Pools.ZombiesLoot) do
				if DoesEntityExist(v.id) then
					fnd = true
					local crds = GetEntityCoords(v.id)
					local dist = #(crds - ZM.Player.Coords)
					if dist < 8.0 then
						ZM.DrawText3D(crds[1], crds[2], crds[3], functions.getTranslation(main.lang, "ZOMBIE_COLLECT"))
						if IsControlJustPressed(0, 38) then
							kosmici.call("ts", "collectLoot", {module="zombiemod"}, v.id)
							table.remove(ZM.Pools.ZombiesLoot, i)
							SetEntityAsNoLongerNeeded(v.id)
							DeleteEntity(v.id)
						end
					elseif dist > 150.0 then
						kosmici.call("ts", "removeZombie", {module="zombiemod"}, v.id)
						SetEntityAsNoLongerNeeded(v.id)
						DeleteEntity(v.id)
					end
				else
					kosmici.call("ts", "removeZombie", {module="zombiemod"}, v.id)
				end
			end
			if not fnd then
				Citizen.Wait(450)
			end
		end
	end, {})

    kosmici.add("thread", "Cleaning", function() 
        while ZM.Selected do 
            Citizen.Wait(7500)
            for i,v in ipairs(ZM.Pools.Zombies) do
                local dist = #(GetEntityCoords(v.id) - ZM.Player.Coords)
                if not DoesEntityExist(v.id) or IsEntityDead(v.id) then
					if IsEntityDead(v.id) then
						kosmici.call("ts", "killZombie", {module="zombiemod"}, v, {
							weapon = GetPedCauseOfDeath(v.id),
							tier = v.tier
						})
						table.insert(ZM.Pools.ZombiesLoot, {
							id = v.id
						})
					else
						SetEntityAsNoLongerNeeded(v.id)
						DeleteEntity(v.id)
					end
                    table.remove(ZM.Pools.Zombies, i)
                    if ZM.Config.DebugMode then
                        kosmici.log("zombie "..v.id.." was removed")
                    end
                elseif dist >= ZM.Config.DespawnDist then
                    SetEntityAsNoLongerNeeded(v.id)
                    DeleteEntity(v.id)
                    table.remove(ZM.Pools.Zombies, i)
                    if ZM.Config.DebugMode then
                        kosmici.log("zombie "..v.id.." was too far (at dist "..tonumber(string.format("%.2f", dist)).."), and got removed")
                    end
                end
            end
        end
    end,{})

    kosmici.add("thread", "Main", function() 
		for i = 1, 32 do
			Citizen.InvokeNative(0xDC0F817884CDD856, i, false)
		end
        AddRelationshipGroup("zombie")
        SetRelationshipBetweenGroups(0, GetHashKey("zombie"), GetHashKey("PLAYER"))
        SetRelationshipBetweenGroups(2, GetHashKey("PLAYER"), GetHashKey("zombie"))
        StartAudioScene('CHARACTER_CHANGE_IN_SKY_SCENE')
        SetArtificialLightsState(true)
        SetArtificialLightsStateAffectsVehicles(false)

		SetMaxWantedLevel(0)
        while ZM.Selected do
            Citizen.Wait(2)

			for k,v in pairs(ZM.Config.BlockedHudComponents) do
				HideHudComponentThisFrame(v)
			end

            SetEveryoneIgnorePlayer(ZM.Player.Ped, true)
            SetPlayerHealthRechargeMultiplier(ZM.Player.Ped, 0.0)
    
			--ZM.DrawText(0.005, 0.5, "Znajdujesz się w obrębie zombiaków o tierze "..tostring(ZM.Player.Zone) or "n/a")
    
            DisableControlAction(1, 157)
            DisableControlAction(1, 158)
            DisableControlAction(1, 160)
            DisableControlAction(1, 164)
            DisableControlAction(1, 165)
        end
		SetArtificialLightsState(false)
    end, {})

	kosmici.add("thread", "Spawning", function()
		Citizen.Wait(1300)

		while ZM.Selected do
			if #ZM.Pools.Zombies < ZM.Config.MaxZombies and not editingSkin then
				local x,y,z = table.unpack(ZM.Player.Coords)
				local posX = x
				local posY = y
				local posZ = z + 999.0

				repeat
					Citizen.Wait(1)

					posX = x + math.random(-ZM.Config.MaxSpawnDist, ZM.Config.MaxSpawnDist)
					posY = y + math.random(-ZM.Config.MaxSpawnDist, ZM.Config.MaxSpawnDist)

					_,posZ = GetGroundZFor_3dCoord(posX+.0,posY+.0,z,1)

					playerX, playerY = x,y
					if posX > playerX - ZM.Config.MinSpawnDist and posX < playerX + ZM.Config.MinSpawnDist or posY > playerY - ZM.Config.MinSpawnDist and posY < playerY + ZM.Config.MinSpawnDist then
						canSpawn = false
						break
					else
						canSpawn = true
					end
				until canSpawn
				
				ZM.SpawnZombie(vector3(posX, posY, posZ), ZM.Player.Zone)

				Citizen.Wait(5000)
			else
				Citizen.Wait(15000)
			end
		end
	end,{})

    kosmici.add("thread", "Attack", function() 
        while ZM.Selected do
            Citizen.Wait(1000)
			ZM.SetWeaponDrops()
            for i, v in pairs(ZM.Pools.Zombies) do
                local entity = v.id
                local distance = #(GetEntityCoords(entity) - ZM.Player.Coords)
                if distance <= 55.0 then
                    TaskGoToEntity(entity, ZM.Player.Ped, -1, 0.0, 1.0, 1073741824, 0)
                    if IsPedDeadOrDying(entity, 1) ~= 1 then
                        if distance < 1.2 then
                            RequestAnimDict("misscarsteal4@actor")
                            TaskPlayAnim(entity,"misscarsteal4@actor","stumble",1.0, 1.0, 500, 9, 1.0, 0, 0, 0)
                            local health = GetEntityHealth(ZM.Player.Ped)-(v.tier*10)
                            SetEntityHealth(ZM.Player.Ped, health)
                            Citizen.Wait(2000)
                            TaskGoToEntity(entity, ZM.Player.Ped, -1, 0.0, 1.0, 1073741824, 0)
                        end
                    end
                end
            end
        end
    end, {})
	local abilityCd = 0
	kosmici.add("thread", "Abilities", function() 
		local xxx = 0
		while ZM.Selected do
			Citizen.Wait(15000)
			local time = os.time()
			for i,v in pairs(ZM.Pools.Zombies) do
				local entity = v.id
				local boss = (GetEntityMaxHealth(entity) > 700.0)
				if boss then
                	local distance = #(GetEntityCoords(entity) - ZM.Player.Coords)
					if distance < 30.0 and abilityCd < time then
						xxx = xxx+1
						local ability = ZM.Abilities[xxx]
						--PlaySoundFrontend(-1, "Crash", "DLC_HEIST_HACKING_SNAKE_SOUNDS", 1)
						functions.sendNotification(functions.getTranslation(main.lang, "ZOMBIE_ULT", ability.name))
						ability.Run(entity)
						abilityCd = time + 20000
					end
				end
			end
		end
	end, {})

	kosmici.add("thread", "Zones", ZM.Zones.Show, {})

	kosmici.add("thread", "Drops", ZM.Drops.Run, {})

	CreateThread(function()
		if not HasNamedPtfxAssetLoaded("core") then
			RequestNamedPtfxAsset("core")
			while not HasNamedPtfxAssetLoaded("core") do
				Wait(10)
			end
		end
	end)
    --[[RegisterCommand("spawnzombie", function(src,args,raw) 
        if args[1] then
            if tonumber(args[1]) then
				functions.sendNotification(functions.getTranslation(main.lang, "SPAWN_ZOMBIES", args[1], (args[2] or ZM.Player.Zone)), "gray", 4000)
                for i=0,tonumber(args[1])-1 do
                    ZM.SpawnZombie(ZM.Player.Coords, tonumber(args[2]) or ZM.Player.Zone)
                    Citizen.Wait(100)
                end
            end
        else
			functions.sendNotification(functions.getTranslation(main.lang, "SPAWN_ZOMBIE", tostring((ZM.Player.Zone or 1))))
            ZM.SpawnZombie(ZM.Player.Coords,ZM.Player.Zone or 1)
        end
    end,false)
    RegisterCommand("skin", function(src,args,raw) 
		local oldCoords = ZM.Player.Coords
		ZM.Temp.SkinOldCrds = oldCoords
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
    end,false)]]
end
RegisterNUICallback("moveSkin", function(data) 
    local dir = data.direction
    local angle = ZM.Temp.SkinRot
    if dir == "up" and ZM.Temp.ZOffset <= 0.9 then
        ZM.Temp.SkinZ = ZM.Temp.SkinZ + 0.1
		ZM.Temp.ZOffset = ZM.Temp.ZOffset + 0.1
    elseif dir == "bottom" and ZM.Temp.ZOffset >= 0.1 then
        ZM.Temp.SkinZ = ZM.Temp.SkinZ - 0.1
		ZM.Temp.ZOffset = ZM.Temp.ZOffset - 0.1
    elseif dir == "left" then
        angle = angle - 15.0
    elseif dir == "right" then
        angle = angle + 15.0
    end
    if angle > 360 then
        angle = angle - 360
    elseif angle < 0 then
        angle = angle + 360
    end

    local x,y,z = table.unpack(ZM.Temp.SkinCamPos)
	local coordsPlr = ZM.Player.Coords
    SetCamCoord(ZM.Temp.SkinCam, x,y,ZM.Temp.SkinZ)
    PointCamAtCoord(ZM.Temp.SkinCam, coordsPlr['x'], coordsPlr['y'], coordsPlr['z']+ZM.Temp.ZOffset)
    SetEntityHeading(ZM.Player.Ped, angle)
    ZM.Temp.SkinRot = angle
end)
RegisterNUICallback("selectSkin", function(data) 
	local model = ZM.Config.Skins[data.skin]
	if model and model ~= nil then
		model = GetHashKey(model)
		RequestModel(model)
		while not HasModelLoaded(model) do
			Citizen.Wait(100)
		end
		SetPlayerModel(PlayerId(), model)
		SetPedComponentVariation(PlayerPedId(), 0, 0, 0, 2)
		Citizen.Wait(150)
		SetEntityMaxHealth(PlayerPedId(), 200)
		SetEntityHealth(PlayerPedId(), 200)
	else
		functions.sendNotification(functions.getTranslation(main.lang, "ERROR_INVALID_MODEL", model), "gray", 5000)
	end
end)
RegisterNUICallback("setSkin", function(data) 
	SetCamActive(ZM.Temp.SkinCam, true)
	RenderScriptCams(false, true, 500, true, true)
	DestroyCam(ZM.Temp.SkinCam)
	SetEntityCoordsNoOffset(ZM.Player.Ped, ZM.Temp.SkinOldCrds, false, false, false, true)
	SetNuiFocus(false,false)
	SendNUIMessage({type="toggleSkin", toggle=false})
	SetArtificialLightsState(true)
	editingSkin = false
end)

kosmici.add("event", "selectGM", function() 
    ZM.Run()
end, {net = true, module = "zombiemod"})
main = kosmici.modules("main")

kosmici.add("event", "notify", function(msg, color, timeout) 
	functions.sendNotification(msg, color, timeout)
end, {module = "main", net=true})

-- development stage
main.lang = "PL"
kosmici.translations = {
	["PL"] = {
		["GAMEMODE_NOT_SUPPORTED"] = "Ten tryb nie jest jeszcze wspierany.",
		["ENTERING_ZOMBIE_ZONE"] = "Wszedłeś do strefy z zombiakami tieru %s.",
        ["SPAWN_ZOMBIES"] = "Zrespiono %s zombiaków tieru %s.",
        ["SPAWN_ZOMBIE"] = "Zrespiono zombie tieru %s.",
        ["ZOMBIE_ULT"] = "Zombie użył ulta %s!",
        ["ERROR_INVALID_MODEL"] = "Błędny model: %s.",
        ["ZOMBIE_COLLECT"] = "~w~Naciśnij ~c~E ~w~aby zebrać loot z zombiaka",
		["QUEST_START"] = "Rozpoczęto questa %s",
		["QUEST_PROGRESS"] = "%s: %s",
		["QUEST_END"] = "Ukończono questa %s, otrzymano: %s",
		["DIED_GZ"] = "Umarłeś. Niestracono żadnych przedmiotów.",
		["DIED_RZ"] = "Umarłeś. Twoje przedmioty zostały skradzione przez zombie.",
		["ZONE_ENTER"] = "Wszedłeś do strefy, naciśnij E aby przejąć strefę.",
		["ZONE_EXIT"] = "Opuszczono strefę.",
		["ZONE_START"] = "Zaczęto przejmowanie strefy.",
		["ZONE_CANCEL"] = "Anulowano przejmowanie strefy.",
		["ZONE_END"] = "Zakończono przejmowanie strefy. Zdobyto: %s",
        ["ZONE_PROGRESS"] = "~w~Pozostało ~c~%s ~w~sekund.",
        ["DROP_COLLECT"] = "Naciśnij E aby przejąć zrzut.",
        ["DROP_COLLECTED"] = "Zrzut %s został przejęty.",
        ["DROP_COLLECTED_SELF"] = "Przejęto zrzut %s.",
        ["DROP_NEW"] = "Pojawił się nowy zrzut [%s].",
        ["CLAN_ENTER"] = "Naciśnij E aby wejść do bazy.",
        ["CLAN_EXIT"] = "Naciśnij E aby opuścić bazę.",
        ["ZONE"] = "Strefa %s"
	}
}

kosmici.add("thread", "selectGm", function() 
    Citizen.Wait(300)
    functions.changeView("lobby")
    SetNuiFocus(true, true)
end, {})

RegisterNUICallback("selectGame", function(data) 
    functions.leaveGamemode()
    if data.game == "zombieMod" then
        functions.changeView("loading")
        Citizen.Wait(1500)
        SetNuiFocus(false,false)
        kosmici.call("t", "selectGM", {module = "zombiemod"}, "true",true,1)
        exports.spawnmanager:forceRespawn()
    else
        functions.sendNotification(functions.getTranslation(main.lang,"GAMEMODE_NOT_SUPPORTED"))
    end
end)
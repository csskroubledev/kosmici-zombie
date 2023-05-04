#adi dalej mysli ze nic nie zrobilem pozdro!!

TWORZENIE EVENTÓW (SERVER)


kosmici.add("event", "nazwa", function(argumenty)
    --[[code]]
end, {module = "nazwaModułu", net = true/false --[[true jeśli może być triggerowany z clienta]]})


TWORZENIE EVENTÓW (CLIENT)

kosmici.add("event", "nazwa", function(argumenty)
    --[[code]]
end, {module = "nazwaModułu", net = true/false --[[true jeśli może być triggerowany z servera]]})


CALLOWANIE EVENTÓW (SERVER)

kosmici.call("tc" --[[tc = TriggerClient]], "t" --[[TriggerEvent]], "Nazwa", {module = "nazwa modułu", player = --[[id gracza lub -1 do wszystkich]]}, argumenty)
Przykład: 
kosmici.call("tc", "createdPlayer", {module = "core", player = source}, "true",true,1)


CALLOWANIE EVENTÓW (CLIENT)

kosmici.call("ts" --[[ts = TriggerServer]], "t" --[[TriggerEvent]], "Nazwa", {module = "nazwa modułu"}, argumenty)
Przykład: 
kosmici.call("ts", "createdPlayer", {module = "core"}, "true",true,1)


TWORZENIE THREADA

kosmici.add("event", "nazwaThreada", function()
    --[[code]]
end)


TWORZENIE KOMENDY (SERVER ONLY)

kosmici.add("command", "nazwaKomendy", function(source,args,rawCommand) 
    if IsPlayerAceAllowed(source, "kosmici.ban") then
        --[[code]]
    end
end, {restricted = false/true --[[Czy jest dla admina z permisjami]]})
TWORZENIE MODUŁU

functions = kosmici.modules("functions")
functions.check = function(argumenty)
    --[[code]]
end
functions.onlinePlayers = {}

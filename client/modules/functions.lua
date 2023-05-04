functions = kosmici.modules("functions")
functions.getTranslation = function(lang,translation, ...)
    if not kosmici.translations[lang] then
        return "Can't find your language translation"
    end
    if not kosmici.translations[lang][translation] then
        return "Can't find translation for your language"
    end
    if ... then
        return string.format(kosmici.translations[lang][translation],...)
    else
        return kosmici.translations[lang][translation]
    end
end

functions.changeView = function(view) 
    SendNUIMessage({type="switchView", view=view})
end
functions.sendNotification = function(message, color, duration) 
    SendNUIMessage({type="sendNotification", message=message or "", color=color or "gray", duration=duration or 5000})
end

functions.leaveGamemode = function() 
    ZM.Selected = false
end
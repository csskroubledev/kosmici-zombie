functions = kosmici.modules("functions")
functions.getTranslation = function(lang,translation,...)
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
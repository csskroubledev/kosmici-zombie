fx_version 'bodacious'
game 'gta5'

ui_page 'html/index.html'
files {
    'html/css/*.css',
    'html/fonts/*.woff',
    'html/fonts/*.woff2',
    'html/js/*.js',
    'html/index.html',
}
client_scripts {
    'client/main.lua',
    'client/modules/*.lua',
    'client/modules/*.js'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'server/classes/*.lua',
    'server/modules/*.lua',
    'server/modules/*.js'
}
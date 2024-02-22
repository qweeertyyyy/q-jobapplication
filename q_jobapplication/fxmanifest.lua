fx_version "adamant"
game "gta5"
lua54 'yes'

author 'qweeertyyyy'
version '1.0.0'

client_script "client.lua"
server_script "server.lua"

shared_scripts {
	'@es_extended/imports.lua',
	'@ox_lib/init.lua',
	'config.lua'
}
fx_version  "cerulean"
use_experimental_fxv2_oal   "yes"
lua54       "yes"
game        "gta5"
name        "qb-radiolist"
version     "1.0.1"
description "Nacer Radio List : List of players in each radio channels to be used with PMA-VOICE"

ui_page "web/index.html"

files {
    "web/index.html"
}

shared_scripts {
    "shared/*.lua"
}

server_script {
    "module/**/server.lua",
    "server/*.lua"
}

client_script {
    "module/**/client.lua",
    "client/*.lua"
}
extends Node

# Menu Buttons
export (NodePath) var menu_buttons_path
onready var menu_buttons = get_node(menu_buttons_path)

# Options Screen


# Music Player
#export (NodePath) var music_player_path
#onready var music_player = get_node(music_player_path)

# Music Volume Slider
#export (NodePath) var music_volume_slider_path
#onready var music_volume_slider = get_node(music_volume_slider_path)

# Animations
export (NodePath) var animations_path
onready var animations = get_node(animations_path)

# Current Language Locale
var current_locale = TranslationServer.get_locale()
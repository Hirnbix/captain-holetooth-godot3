extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export (NodePath) var options_screen_path
onready var options_screen = get_node(options_screen_path)

func _ready():
	set_process_input(true)
	
func _on_optionsbutton_pressed():
	get_node("optionsbutton/options_screen").show()

func _on_startbutton_pressed():
	print("Test")
	transition.fade_to("res://src/screens/intro/intro.tscn")

func _on_jump_scn3_pressed():
	print("Transition to Scene 3")
	transition.fade_to("res://src/levels/forest/forest.tscn")

# DEBUG: Jump to scene 4
func _on_jump_scn4_pressed():
	print("Transition to mountain")
	transition.fade_to("res://src/levels/mountain/mountain.tscn")

# DEBUG: Jump to scene 5
func _on_jump_scn5_pressed():
	print("Transition to fly home")
	
# DEBUG: Jump to minigame
func _on_jump_minigame_pressed():
	print("Transition to minigame")
	transition.fade_to("res://src/levels/minigames/yankandy/yankandy.tscn")

func _on_jump_castle_pressed():
	print("Transition to castle")
	transition.fade_to("res://src/levels/castle/castle_outside.tscn")
	
func _on_donate_button_pressed():
	OS.shell_open("https://www.patreon.com/hirnbix")
	pass # replace with function body


func _on_playtime_confirm_pressed():
	global.playtime_limit_minutes = get_node("options_screen/settings/Parental Controls/playtime_settings/playtime_limit").get_text()
	global.playtime_limit_seconds = int(global.playtime_limit_minutes) * 60
	print(global.playtime_limit_seconds)


func _on_charactercardsbutton_pressed():
	print("Transition to character cards")
	transition.fade_to("res://src/screens/character-cards/character-cards.tscn")

#func _on_candy_skull_button_pressed():
#	animations.connect("finished", animations, "play", ["wigglecandy"])
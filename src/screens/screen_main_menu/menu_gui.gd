extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _on_button_start_game_pressed():
	print("START pressed")
	global.switch_scene(global.scene_path_intro_screen)


func _on_button_options_pressed():
	global.switch_scene(global.scene_path_forest_scene)
extends Control

func _ready():
	pass

func _on_TextureButton_pressed():
	global.switch_scene(global.scene_path_forest_scene)
	print("Debug: Jumping to Menu")

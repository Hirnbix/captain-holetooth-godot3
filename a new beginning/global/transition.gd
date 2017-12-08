extends Node2D

export(String, FILE, "*.tscn") var scene_path

# Change to scene path
func goto_scene(scene_path):
	get_tree().change_scene(scene_path)
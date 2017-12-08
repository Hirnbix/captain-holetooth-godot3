extends Control

export(String, FILE, "*.tscn") var scene_path

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_button_start_game_pressed():
	print("START pressed")
	global.switch_scene(scene_path)

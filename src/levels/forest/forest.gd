extends Node2D

# -- START --
func _ready():
	# Get initial player spawn position
	var initial_pos_player = get_node("/root/scn3/world/initial_spawn_player").get_global_position()
	
	# Set player position
	if global.last_pos[0] == Vector2(0,0):
		initial_pos_player = get_node("/root/scn3/world/initial_spawn_player").get_global_position()
	else:
		global.last_pos[0].x -= 100
		initial_pos_player = global.last_pos[0]
	get_node("/root/scn3/player").set_global_position(initial_pos_player)
	# Get enemy group
	#game.open_scene("scn3")
	
	# Debug - Uncomment if you are debugging
	# run_debug()


# -- DEBUG --
# Position for teleportation
var tele2pos

# This will run your debug code. 
# This is used so that other developers know that anything and everything
# run from this function is for debugging purposes.

extends Node

###########
# GLOBALS #
###########

# Audio Data
# Exampel of use: global.music.volume = 0.5 # Stores the music volume globally to 50%

# You will have to make the actual changes in their appropriate scripts

#####################
# Parental Controls #
#####################

var time_elapsed = 0

var playtime_limit_minutes = 15
var playtime_limit_seconds = playtime_limit_minutes * 60

##################
# Fun Statistics #
##################

var times_jumped = 0
var bubbles_popped = 0

###################
# HUD and scoring #
###################

const MAX_ITEMS = 120
var score = 0
var final_score = 0
var high_score = 0
var items_collected = 0

# Scoring Minigame yankandy
var yankandy_score_pins = 0
var yankandy_score_pocket = 0
var yankandy_score_multiplier = 1
var yankandy_score_total = 0

# Scene related
var currentScene = null

# Array for characters the player has met (to display the character cards in the options later)
# Captain Holetooth is in there by default
var characters_met = ["Captain Holetooth", "Yan"]

######################################
#  Dictionary Character descriptions #
######################################

#not yet sure where they belong, maybe better: Dictionary for characters with name, desc etc.

##################
# Items          #
##################

var kills = false
const SCORE_MULTIPLIER = 10 # Standard Score multiplier
const SCORE_MULTIPLIER_KILLS = 5 # Player gets penalty

# SCENES

const scene_path_forest_scene = "res://levels/forest/level_forest.tscn"
const scene_path_intro_screen = "res://screens/screen_cutscenes/intro/intro.tscn"

##################
# Inventory      #
##################

var player_inventory = [] # For now only one item will be stored here, but its good to have it no? :D

func manage_inv(inv_action, inv_item):
	if inv_action == "pickup":
		global.player_inventory.append(inv_item)
		print(str(inv_item) + " added to inventory")
		
	elif inv_action == "drop":
		global.player_inventory.erase(inv_item)
		print(str(inv_item) + " removed from inventory")


##################
# Functions       #
##################


# Change to scene path
func switch_scene(scene_path):
	get_tree().change_scene(scene_path)

#func _ready():
#	score = database.get_key("score", 0)

#func add_score(value=1):
#	score += value
#	database.set_key("score", score)

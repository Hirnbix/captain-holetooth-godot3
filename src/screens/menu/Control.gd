extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process_input(true)
	
func _on_optionsbutton_pressed():
	get_node("options_screen").show()

func _on_startbutton_pressed():
	print("Test")
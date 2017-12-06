
extends Area2D
<<<<<<< HEAD

onready var coin = get_node("random_coin")

var destroyed = false

func destroy(other):
	if destroyed:
		return
		
	destroyed = true
		

	coin.take()
	yield(coin, "taken")
	queue_free()
=======
>>>>>>> 4ea9e7f4c5dccf2ef074e13983a48a269afed4ac

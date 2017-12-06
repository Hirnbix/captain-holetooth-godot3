
extends Area2D

onready var coin = get_node("random_coin")

var destroyed = false

func destroy(other):
	if destroyed:
		return
		
	destroyed = true
		

	coin.take()
	yield(coin, "taken")
	queue_free()
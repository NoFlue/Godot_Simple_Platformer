extends Node

@onready var coin_label = $"../CoinLabel"

var score = 0

func get_coin():
	score += 1
	coin_label.text = "You Collected " + str(score) + " Coins."

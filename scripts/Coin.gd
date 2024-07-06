extends Area2D

func _on_body_entered(body):
	print("Get Coin!")
	queue_free()

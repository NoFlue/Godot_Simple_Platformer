extends Node2D

const SPEED = 60

var direction = 1

@onready var left_ray_cast = $LeftRayCast
@onready var right_ray_cast = $RightRayCast
@onready var animation_sprite = $AnimatedSprite2D

func _process(delta):
	if left_ray_cast.is_colliding():
		direction = 1
		animation_sprite.flip_h = false
	if right_ray_cast.is_colliding():
		direction = -1
		animation_sprite.flip_h = true
		
	position.x += direction * SPEED * delta

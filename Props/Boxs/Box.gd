extends KinematicBody2D

class_name Box

export var WEIGHT = 30

var velocity = Vector2.ZERO

func push(velocity, MAX_SPEED):
	velocity = move_and_slide(velocity * (MAX_SPEED - WEIGHT))
	

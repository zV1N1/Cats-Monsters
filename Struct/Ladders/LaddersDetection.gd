extends Area2D

onready var collisionShape = $CollisionShape2D

func _on_LaddersDetection_body_exited(body):
	var player = body as Player
	var positionLadder = position.y
	
	if player:
		var index = 2 if player.position.y < positionLadder else 1
		player.z_index = index
		player.collision_mask = index

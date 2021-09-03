extends StaticBody2D

var player

func _on_BodyDetection_body_entered(body):
	if body.z_index == 1:
		body.z_index = int(2)
		body.collision_mask = int(2)
		#print('z_index: ', body.z_index)
		#print('collision_mask: ', body.collision_mask)
	else:
		body.z_index = int(1)
		body.collision_mask = int(1)
		#print('z_index: ', body.z_index)
		#print('collision_mask: ', body.collision_mask)

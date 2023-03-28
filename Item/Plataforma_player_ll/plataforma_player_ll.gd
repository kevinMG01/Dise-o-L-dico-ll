extends StaticBody2D






func _process(delta):
	
	pass
func _physics_process(delta):
	
	pass



func _on_Area2D_body_entered(body):
	if body.get_name() == "Player_ll":
		global_Var.vida += 1
		body.queue_free()
	if body.get_name() == "Player_l":
		global_Var.vida += 1
		body.queue_free()

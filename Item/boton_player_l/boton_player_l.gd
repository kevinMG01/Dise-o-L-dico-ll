extends Area2D




func _on_boton_player_l_body_entered(body):
	if body.is_in_group("player_l"):
		global_Var.plat_player_1 = 2
#		self.queue_free()
	pass 


func _on_boton_player_l_body_exited(body):
	if body.is_in_group("player_l"):
		global_Var.plat_player_1 = 1
#			$Area2D/CollisionShape2D.disabled = true
		$CollisionShape2D.disabled = true
		visible = false
		$Timer.start()
	if body.is_in_group("basura"):
		queue_free()
		pass
	pass 


func _on_Timer_timeout():
	
	pass # Replace with function body.

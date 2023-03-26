extends Area2D




func _on_boton_player_l_body_entered(body):
	if body.is_in_group("player_l"):
		global_Var.plat_player_1 = 2
#		self.queue_free()
	pass 


func _on_boton_player_l_body_exited(body):
	if body.is_in_group("player_l"):
		global_Var.plat_player_1 = 1
#		self.queue_free()
	pass 

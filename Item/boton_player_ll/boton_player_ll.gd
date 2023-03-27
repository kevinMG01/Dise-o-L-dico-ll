extends Area2D




func _on_boton_player_ll_body_entered(body):
	if body.is_in_group("player_ll"):
		global_Var.plat_player_2 = 2
#		self.queue_free()
	pass 


func _on_boton_player_ll_body_exited(body):
	if body.is_in_group("player_ll"):
		yield(get_tree().create_timer(3),"timeout")
		global_Var.plat_player_2 = 1
#		self.queue_free()


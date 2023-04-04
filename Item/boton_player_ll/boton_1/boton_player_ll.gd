extends Area2D




func _on_boton_player_ll_body_entered(body):
	if body.is_in_group("player_ll"):
		$animacion_boton.animation = "pre"
		global_Var.plat_player_2 = 2
	if body.is_in_group("player_l"):
		$animacion_boton.animation = "pre"
		global_Var.plat_player_2 = 2
#		self.queue_free()
	pass 


func _on_boton_player_ll_body_exited(body):
	if body.is_in_group("player_ll"):
		$animacion_boton.animation = "no_pre"
		yield(get_tree().create_timer(5),"timeout")
		global_Var.plat_player_2 = 1
	elif body.is_in_group("player_l"):
		$animacion_boton.animation = "no_pre"
		global_Var.plat_player_2 = 1
#		self.queue_free()


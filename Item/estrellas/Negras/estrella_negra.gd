extends Area2D



func _on_estrella_negra_body_entered(body):
	if body.get_name() == "Player_ll":
		global_Var.puntos_player_1 += 1 
		global_Var.camviar_posicion_boton_2 = true
		if global_Var.nivel_4 == true:
			global_Var.puntos_p_2 += 1
		queue_free()
	
	

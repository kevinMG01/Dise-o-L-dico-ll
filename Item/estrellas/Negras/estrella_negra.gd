extends Area2D



func _on_estrella_negra_body_entered(body):
	if body.get_name() == "Player_ll":
		global_Var.puntos_player_1 += 1 
		queue_free()

extends Area2D



func _on_bot_play_l_2_body_entered(body):
	if body.is_in_group("player_l"):
		global_Var.plat_player_1_2 = 2
	pass # Replace with function body.



func _on_bot_play_l_2_body_exited(body):
	if body.is_in_group("player_l"):
		yield(get_tree().create_timer(3),"timeout")
		global_Var.plat_player_1_2 = 1
	pass # Replace with function body.
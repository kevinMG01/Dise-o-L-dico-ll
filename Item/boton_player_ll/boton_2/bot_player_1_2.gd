extends Area2D




func _on_bot_player_1_2_body_entered(body):
	if body.is_in_group("player_ll"):
		$AnimatedSprite.animation = "pre"
		global_Var.plat_player_2_2 = 2
	if body.is_in_group("player_l"):
		$AnimatedSprite.animation = "pre"
		global_Var.plat_player_2_2 = 2
	pass # Replace with function body.


func _on_bot_player_1_2_body_exited(body):
	if body.is_in_group("player_ll"):
		$AnimatedSprite.animation = "no_pre"
		yield(get_tree().create_timer(5),"timeout")
		global_Var.plat_player_2_2 = 1
	if body.is_in_group("player_l"):
		$AnimatedSprite.animation = "no_pre"
		yield(get_tree().create_timer(5),"timeout")
		global_Var.plat_player_2_2 = 1
	pass # Replace with function body.

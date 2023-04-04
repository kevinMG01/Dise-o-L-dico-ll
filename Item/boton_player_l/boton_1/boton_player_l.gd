extends Area2D


var detener = 0

func _on_boton_player_l_body_entered(body):
	if body.is_in_group("player_l"):
		$AnimatedSprite.animation = "pre"
		global_Var.plat_player_1 = 2
	if body.is_in_group("player_ll"):
		$AnimatedSprite.animation = "pre"
		global_Var.plat_player_1 = 2
#		self.queue_free()
	pass 


func _on_boton_player_l_body_exited(body):
	if body.is_in_group("player_l"):
		$AnimatedSprite.animation = "no_pre"
		yield(get_tree().create_timer(5),"timeout")
		global_Var.plat_player_1 = 1
	elif body.is_in_group("player_ll"):
		$AnimatedSprite.animation = "no_pre"
		global_Var.plat_player_1 = 1

#			$Area2D/CollisionShape2D.disabled = true
#		$CollisionShape2D.disabled = true
#		visible = false
#		$Timer.start()
#	if body.is_in_group("basura"):
#		queue_free()
#		pass


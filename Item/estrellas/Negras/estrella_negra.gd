extends Area2D



func _physics_process(delta):
	if global_Var.nivel_cambio_moneda == false:
		$AnimatedSprite.visible = true
		$Sprite.visible = false
	if global_Var.nivel_cambio_moneda == true:
		$AnimatedSprite.visible = false
		$Sprite.visible = true
	

func _on_estrella_negra_body_entered(body):
	if body.get_name() == "Player_ll":
		global_Var.puntos_player_1 += 1 
		global_Var.camviar_posicion_boton_2 = true
		if global_Var.nivel == 4:
			global_Var.puntos_p_2 += 1
			$AudioStreamPlayer.play()
		queue_free()
	
	
	

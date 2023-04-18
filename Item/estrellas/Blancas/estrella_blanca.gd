extends Area2D





func _physics_process(delta):
	if global_Var.nivel_cambio_moneda == false:
		$Sprite2.visible = false
		$Sprite.visible = true
	if global_Var.nivel_cambio_moneda == true:
		$Sprite2.visible = true
		$Sprite.visible = false



func _on_estrella_blanca_body_entered(body):
	if body.get_name() == "Player_l":
		global_Var.puntos_player_1 += 1 
		global_Var.camviar_posicion_boton_1 = true
		if global_Var.nivel_cambio_moneda == true:
			global_Var.puntos_p_1 += 1
			$AudioStreamPlayer.play()
		queue_free()

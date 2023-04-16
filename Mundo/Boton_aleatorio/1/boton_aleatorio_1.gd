extends Area2D





func _ready():
	$AnimatedSprite.animation = "no_pre"
	pass 







func _on_boton_aleatorio_1_body_entered(body):
	if body.is_in_group("player_l"):
		$AnimatedSprite.animation = "pre"
		global_Var.camviar_posicion_1 = true
		queue_free()
		
	pass # Replace with function body.

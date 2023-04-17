extends Area2D



var invocar = preload("res://Enemigo_sin_colicion/lava/salpicadura/salpicadura.tscn")

#res://Player_l/Player_l.tscn
#res://Enemigo_sin_colicion/lava/salpicadura/salpicadura.tscn
func _ready():
	pass 


func _physics_process(delta):
	$AnimatedSprite.playing = true

	pass


func _invocar():
		var newplayer = invocar.instance()
		add_child(newplayer)
		#newplayer.global_position = get_tree().get_nodes_in_group("spawn_lava")[0].global_position






func _on_Enemigo_body_entered(body):
	if body.get_name() == "Player_l":
		global_Var.vida -= 1
		global_Var.cantidad = 0
		$AudioStreamPlayer.play()
		body.queue_free()
	if body.get_name() == "Player_ll":
		global_Var.vida -= 1
		global_Var.cantidad_j_2 = 0
		$AudioStreamPlayer.play()
		body.queue_free()
	pass # Replace with function body.
	


func _on_Timer_timeout():
	_invocar()
	pass # Replace with function body.

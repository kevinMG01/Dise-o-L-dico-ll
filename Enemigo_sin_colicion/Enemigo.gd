extends Area2D



var invocar = preload("res://Enemigo_sin_colicion/lava/salpicadura/salpicadura.tscn")

#res://Player_l/Player_l.tscn
#res://Enemigo_sin_colicion/lava/salpicadura/salpicadura.tscn
func _ready():
	pass 


func _physics_process(delta):
	

	pass


func _invocar():
		var newplayer = invocar.instance()
		add_child(newplayer)
		newplayer.global_position = get_tree().get_nodes_in_group("spawn_lava")[0].global_position






func _on_Enemigo_body_entered(body):
	
	pass # Replace with function body.
	




func _on_Timer_timeout():
	_invocar()
	pass # Replace with function body.

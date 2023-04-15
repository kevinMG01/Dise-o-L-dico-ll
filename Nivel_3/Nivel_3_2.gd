extends Node2D




var invocar = preload("res://Enemigo_sin_colicion/lava/salpicadura/salpicadura.tscn")
var invocar2 = preload("res://Enemigo_sin_colicion/lava/salpicadura/salpicadura.tscn")
#res://Player_l/Player_l.tscn
#res://Enemigo_sin_colicion/lava/salpicadura/salpicadura.tscn
func _ready():
	pass 


func _physics_process(delta):
	_invocar()
	pass


func _invocar():
		var newplayer = invocar.instance()
		add_child(newplayer)
		newplayer.global_position = get_tree().get_nodes_in_group("spawn_posicion_1")[0].global_position

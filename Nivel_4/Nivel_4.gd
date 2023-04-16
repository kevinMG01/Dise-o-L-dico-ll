extends Node2D

var gota_1 = true
var gota_2 = true
var gota_3 = true
var gota_4 = true
var _gotas_1 = preload("res://Enemigo_sin_colicion/lava/salpicadura/salpicadura_cuerpo.tscn")


func _ready():
	pass

func _physics_process(delta):
	pass

func spawn():
	if gota_1 == true:
		var newplayer = _gotas_1.instance()
		add_child(newplayer)
		newplayer.global_position = get_tree().get_nodes_in_group("spawn_gota_1")[0].global_position





func _on_1_timeout():
	spawn()
	if gota_1 == true:
		var newplayer = _gotas_1.instance()
		add_child(newplayer)
		newplayer.global_position = get_tree().get_nodes_in_group("spawn_gota_3")[0].global_position


func _on_2_timeout():
	if gota_1 == true:
		var newplayer = _gotas_1.instance()
		add_child(newplayer)
		newplayer.global_position = get_tree().get_nodes_in_group("spawn_gota_2")[0].global_position
	if gota_1 == true:
		var newplayer = _gotas_1.instance()
		add_child(newplayer)
		newplayer.global_position = get_tree().get_nodes_in_group("spawn_gota_4")[0].global_position
	pass

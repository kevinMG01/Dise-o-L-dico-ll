extends Node

var plat_player_1 = 1
var plat_player_1_2 = 1
var plat_player_1_3 = 1

var plat_player_2 = 1
var plat_player_2_2 = 1
var plat_player_2_3 = 1

var puntos_player_1 = 0
var puntos_player_2 = 0

var tiempo = 50

var vida = 0

func _physics_process(delta):
	pass

func actualizar_tiempo():
	get_tree().get_nodes_in_group("tiempo")[0].text = String(tiempo)

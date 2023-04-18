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

var vida = 5
var cantidad = 1
var cantidad_j_2 = 1



var camviar_posicion_1 = false
var camviar_posicion_2 = false

var camviar_posicion_boton_2 = false
var camviar_posicion_boton_1 = false


var puntos_p_1 = 0
var puntos_p_2 = 0
var nivel_4 = false

var nivel = 1

var nivel_cambio_moneda = false
var vida_nivel_4 = 2

func _physics_process(delta):
	
	pass

func actualizar_tiempo():
	get_tree().get_nodes_in_group("tiempo")[0].text = String(tiempo)
	

	




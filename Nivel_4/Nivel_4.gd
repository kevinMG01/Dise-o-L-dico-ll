extends Node2D

var gota_1 = true
var gota_2 = true
var gota_3 = true
var gota_4 = true
var _gotas_1 = preload("res://Enemigo_sin_colicion/lava/salpicadura/salpicadura_cuerpo.tscn")


#estrella de plarer 1 // instanciamos la estrellas en forma aleatoria
var a
var cuanto
var posicion = ["1", "2", "3", "4", "5", "6"]
var estrella_p_2 = preload("res://Item/estrellas/Negras/estrella_negra.tscn")
#boton de plarer 2 pero el player 1 es el que lo va a tocar // instanciamos la estrellas en forma aleatoria
var b
var cuanto_b_2
var posicion_b_2 = ["1", "2", "3", "4", "5"]
var boton_p_2 = preload("res://Mundo/Boton_aleatorio/2/boton_aleatorio_2.tscn")

var c
var cuanto_p1
var posicion_p1 = ["1", "2", "3", "4", "5", "6"]
var estrella_p_1 = preload("res://Item/estrellas/Blancas/estrella_blanca.tscn")
#boton de plarer 2 pero el player 1 es el que lo va a tocar // instanciamos la estrellas en forma aleatoria
var d
var cuanto_b_1
var posicion_b_1 = ["1", "2", "3", "4", "5"]
var boton_p_1 = preload("res://Mundo/Boton_aleatorio/1/boton_aleatorio_1.tscn")

func _ready():
	randomize()
	var newplayer = boton_p_2.instance()
	add_child(newplayer)
	newplayer.global_position = get_tree().get_nodes_in_group("b_2_1")[0].global_position
	boton_comienzo()
	pass
	
func boton_comienzo():
		var newplayer = boton_p_1.instance()
		add_child(newplayer)
		newplayer.global_position = get_tree().get_nodes_in_group("b_1_1")[0].global_position

func _physics_process(delta):
	posicion_estrella_2()
	posicion_boton_2()
	posicion_estrella_1()
	posicion_boton_1()
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



func posicion_estrella_2():
	if global_Var.camviar_posicion_2 == true:
		cuanto = int(rand_range(0, 6))
		a = posicion[cuanto]
		if a == "1":
				var newplayer = estrella_p_2.instance()
				add_child(newplayer)
				newplayer.global_position = get_tree().get_nodes_in_group("spawn_est_1")[0].global_position
				print("1")
		if a == "2":
			var newplayer = estrella_p_2.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("spawn_est_2")[0].global_position
			print("2")
		if a == "3":
			var newplayer = estrella_p_2.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("spawn_est_3")[0].global_position
			print("3")
		if a == "4":
			var newplayer = estrella_p_2.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("spawn_est_4")[0].global_position
			print("4")
		if a == "5":
			var newplayer = estrella_p_2.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("spawn_est_5")[0].global_position
			print("5")
		if a == "6":
			var newplayer = estrella_p_2.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("spawn_est_6")[0].global_position
			print("6")
		global_Var.camviar_posicion_2 = false
	
func posicion_boton_2():
	if global_Var.camviar_posicion_boton_2 == true:
		cuanto_b_2 = int(rand_range(0, 5))
		b = posicion_b_2[cuanto_b_2]
		if b == "1":
				var newplayer = boton_p_2.instance()
				add_child(newplayer)
				newplayer.global_position = get_tree().get_nodes_in_group("b_2_1")[0].global_position
				print("1")
		if b == "2":
			var newplayer = boton_p_2.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("b_2_2")[0].global_position
			print("2")
		if b == "3":
			var newplayer = boton_p_2.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("b_2_3")[0].global_position
			print("3")
		if b == "4":
			var newplayer = boton_p_2.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("b_2_4")[0].global_position
			print("4")
		if b == "5":
			var newplayer = boton_p_2.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("b_2_5")[0].global_position
			print("5")
		global_Var.camviar_posicion_boton_2 = false

func posicion_estrella_1():
	if global_Var.camviar_posicion_1 == true:
		cuanto_p1 = int(rand_range(0, 6))
		c = posicion_p1[cuanto_p1]
		if c == "1":
				var newplayer = estrella_p_1.instance()
				add_child(newplayer)
				newplayer.global_position = get_tree().get_nodes_in_group("spawn_estrellas_1")[0].global_position
				
		if c == "2":
			var newplayer = estrella_p_1.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("spawn_estrellas_2")[0].global_position
			
		if c == "3":
			var newplayer = estrella_p_1.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("spawn_estrellas_3")[0].global_position
		
		if c == "4":
			var newplayer = estrella_p_1.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("spawn_estrellas_4")[0].global_position
			
		if c == "5":
			var newplayer = estrella_p_1.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("spawn_estrellas_5")[0].global_position
			
		if c == "6":
			var newplayer = estrella_p_1.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("spawn_estrellas_6")[0].global_position
		
		global_Var.camviar_posicion_1 = false

func posicion_boton_1():
	if global_Var.camviar_posicion_boton_1 == true:
		cuanto_b_1 = int(rand_range(0, 5))
		d = posicion_b_1[cuanto_b_1]
		if d == "1":
				var newplayer = boton_p_1.instance()
				add_child(newplayer)
				newplayer.global_position = get_tree().get_nodes_in_group("b_1_1")[0].global_position
				
		if b == "2":
			var newplayer = boton_p_1.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("b_1_2")[0].global_position
		
		if d == "3":
			var newplayer = boton_p_1.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("b_1_3")[0].global_position
			
		if d == "4":
			var newplayer = boton_p_1.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("b_1_4")[0].global_position
			
		if d == "5":
			var newplayer = boton_p_1.instance()
			add_child(newplayer)
			newplayer.global_position = get_tree().get_nodes_in_group("b_1_6")[0].global_position
		global_Var.camviar_posicion_boton_1 = false

extends Node2D


var normal = 9.41
var speed = 0.01

var sumar_p_1 = 0
var rot_fija_1 = 0

var sumar_p_2 = 0
var rot_fija_2 = 0


var spawn_1 = true
var spawn_2 = true



var player_1 = preload("res://Player_l/Player_l.tscn")
var player_2 = preload("res://Player_ll/Player_ll.tscn")

func _process(delta):
	#global_Var.puntos_player_1 = 6
	pass

func _physics_process(delta):
	spawn()
	niveles()
	_rotacion_player_1_1()
	_rotacion_player_1_2()
	_rotacion_player_1_3()
	_rotacion_player_1_4()
	
	_rotacion_player_2_1()
	_rotacion_player_2_2()
	_rotacion_player_2_3()
	_rotacion_player_2_4()
	_rotacion_player_2_5()
	
#rotacion de player 1
func _rotacion_player_1_1():
	if global_Var.plat_player_1 == 1:
		get_node("plat_play_1/Plataforma_player_l").rotation = normal
		sumar_p_1 = 0
	if global_Var.plat_player_1 == 2:
		get_node("plat_play_1/Plataforma_player_l").rotation = speed

func _rotacion_player_1_2():
	if global_Var.plat_player_1_2 == 1:
		get_node("plat_play_1/Plataforma_player_l2").rotation = normal
		sumar_p_1 = 0
	if global_Var.plat_player_1_2 == 2:
		get_node("plat_play_1/Plataforma_player_l2").rotation = speed

func _rotacion_player_1_4():
	if global_Var.plat_player_1 == 1:
		get_node("plat_play_1/Plataforma_player_l4").rotation = speed
	if global_Var.plat_player_1 == 2:
		get_node("plat_play_1/Plataforma_player_l4").rotation = normal

func _rotacion_player_1_3():
	if global_Var.plat_player_1_3 == 1:
		get_node("plat_play_1/Plataforma_player_l3").rotation = normal
		sumar_p_1 = 0
	if global_Var.plat_player_1_3 == 2:
		get_node("plat_play_1/Plataforma_player_l3").rotation = speed
# rotacion de player 2
func _rotacion_player_2_1():
	if global_Var.plat_player_2 == 1:
		get_node("plat_play_2/plataforma_player_ll").rotation = normal
	if global_Var.plat_player_2 == 2:
		get_node("plat_play_2/plataforma_player_ll").rotation = speed

func _rotacion_player_2_2():
	if global_Var.plat_player_2_2 == 1:
		get_node("plat_play_2/plataforma_player_ll2").rotation = normal
	if global_Var.plat_player_2_2 == 2:
		get_node("plat_play_2/plataforma_player_ll2").rotation = speed

func _rotacion_player_2_3():
	if global_Var.plat_player_2_3 == 1:
		get_node("plat_play_2/plataforma_player_ll3").rotation = normal
	if global_Var.plat_player_2_3 == 2:
		get_node("plat_play_2/plataforma_player_ll3").rotation = speed
		
func _rotacion_player_2_4():
	if global_Var.plat_player_2_3 == 1:
		get_node("plat_play_2/plataforma_player_ll4").rotation = normal
	if global_Var.plat_player_2_3 == 2:
		get_node("plat_play_2/plataforma_player_ll4").rotation = speed

func _rotacion_player_2_5():
	if global_Var.plat_player_2_2 == 1:
		get_node("plat_play_2/plataforma_player_ll5").rotation = normal
	if global_Var.plat_player_2_2 == 2:
		get_node("plat_play_2/plataforma_player_ll5").rotation = speed

func spawn():
	if spawn_1 == true:
		var newplayer = player_1.instance()
		add_child(newplayer)
		newplayer.global_position = get_tree().get_nodes_in_group("spawn_1")[0].global_position
		spawn_1 = false
	if global_Var.cantidad == 0:
		spawn_1 = true
		global_Var.cantidad = 1
	
	if spawn_2 == true:
		var newplayer_2 = player_2.instance()
		add_child(newplayer_2)
		newplayer_2.global_position = get_tree().get_nodes_in_group("spawn_2")[0].global_position
		spawn_2 = false
	if global_Var.cantidad_j_2 == 0:
		spawn_2 = true
		global_Var.cantidad_j_2 = 1

func niveles():
	if global_Var.tiempo <= 0:
		get_tree().change_scene("res://Menu/Menu.tscn")
		global_Var.tiempo = 50
		global_Var.puntos_player_1 = 0
		global_Var.vida = 5
		
	if global_Var.puntos_player_1 == 18:
		global_Var.nivel = 4
		get_tree().change_scene("res://Nivel_4/Nivel_4.tscn")
		
	if global_Var.vida == 0:
		global_Var.puntos_player_1 = 0
		get_tree().change_scene("res://Menu/Menu.tscn")
		global_Var.vida = 5

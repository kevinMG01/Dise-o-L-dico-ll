extends Node2D

#palyer 1; rotacion
var speed = 9.41
var normal = 0

#player 2; rotacion 
var vel = 9.41
var nor = 0


func _physics_process(delta):
	_rotacion_player_1()
	_rotacion_player_2()
	pass
	
	
	
func _rotacion_player_1():
	if global_Var.plat_player_1 == 1:
		get_node("plataforma_player_l").rotation = speed
	if global_Var.plat_player_1 == 2:
		get_node("plataforma_player_l").rotation = normal

func _rotacion_player_2():
	if global_Var.plat_player_2 == 1:
		get_node("plataforma_player_ll").rotation = speed
	if global_Var.plat_player_2 == 2:
		get_node("plataforma_player_ll").rotation = normal

extends Node2D

#palyers; rotacion
var normal = 9.41
var speed = 0.01

var sumar_p_1 = 0
var rot_fija_1 = 0

var sumar_p_2 = 0
var rot_fija_2 = 0



# warning-ignore:unused_argument
func _physics_process(delta):
	_rotacion_player_1()
	_rotacion_player_2()
	
	
	
	
func _rotacion_player_1():
	if global_Var.plat_player_1 == 1:
		get_node("plata_player_l/plataforma_player_l").rotation = normal
	
		sumar_p_1 = 0
		
	if global_Var.plat_player_1 == 2:
		get_node("plata_player_l/plataforma_player_l").rotation = speed
	
		
		
		
#		rotacion de plataforma
#	if global_Var.plat_player_1 == 1:
#		get_node("plataforma_player_l").rotation = normal
#		sumar_p_1 = 0
#	if global_Var.plat_player_1 == 2:
#		get_node("plataforma_player_l").rotate(speed)
#		sumar_p_1 += 0.03
#		if sumar_p_1 >= 9.10:
#			get_node("plataforma_player_l").rotation = rot_fija_1

func _rotacion_player_2():
	
		if global_Var.plat_player_2 == 1:
			get_node("plata_player_ll/plataforma_player_ll").rotation = normal
		if global_Var.plat_player_2 == 2:
			get_node("plata_player_ll/plataforma_player_ll").rotation = speed
#	if global_Var.plat_player_2 == 1:
#		get_node("plataforma_player_ll").rotation = normal
#	if global_Var.plat_player_2 == 2:
#		get_node("plataforma_player_ll").rotate(speed)
#		sumar_p_2 += 0.03
#	if sumar_p_2 >= 9.10:
#		get_node("plataforma_player_ll").rotation = rot_fija_2


func _on_Timer_timeout():
	global_Var.tiempo -= 1
	global_Var.actualizar_tiempo()
	pass 

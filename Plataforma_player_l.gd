extends StaticBody2D

var normal = 9.41
var speed = 0.01

var sumar_p_1 = 0
var rot_fija_1 = 0

#var speed = 0.01

func _process(delta):

	
	pass
	

func _physics_process(delta):
	#if Input.is_action_pressed("ui_accept"):
	#	rotate(speed)
#	_rotacion_player_1()
	pass

func _rotacion_player_1():
	if global_Var.plat_player_1 == 1:
		rotation = normal
		sumar_p_1 = 0
	if global_Var.plat_player_1 == 2:
		rotation = speed




func _on_Area2D_body_entered(body):
	if body.get_name() == "Player_l":
		global_Var.vida -= 1
		global_Var.cantidad = 0
		$AudioStreamPlayer.play()
		if global_Var.nivel_cambio_moneda == true:
			global_Var.vida_nivel_4 -= 1
		body.queue_free()
		
		
	if body.get_name() == "Player_ll":
		global_Var.vida -= 1
		global_Var.cantidad_j_2 = 0
		$AudioStreamPlayer.play()
		if global_Var.nivel_cambio_moneda == true:
			global_Var.vida_nivel_4 -= 1
		body.queue_free()
		


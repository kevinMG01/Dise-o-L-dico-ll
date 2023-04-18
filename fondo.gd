extends Node2D


var contador = false
var contador2 = false
var contador3 = false
var contador4 = false


func _physics_process(delta):
	if global_Var.nivel == 1:
		if contador == true:
			$fondo_ani.animation = "1"
			yield(get_tree().create_timer(6),"timeout")
			$fondo_ani.animation = "2"
			contador = false
	if global_Var.nivel == 2:
		if contador2 == true:
			$fondo_ani.animation = "1"
			yield(get_tree().create_timer(4),"timeout")
			$fondo_ani.animation = "2"
			contador2 = false
	if global_Var.nivel == 3:
		if contador3 == true:
			$fondo_ani.animation = "1"
			yield(get_tree().create_timer(3),"timeout")
			$fondo_ani.animation = "2"
			contador3 = false
	if global_Var.nivel == 4:
		if contador4 == true:
			$fondo_ani.animation = "1"
			yield(get_tree().create_timer(1),"timeout")
			$fondo_ani.animation = "2"
			contador4 = false
	

func _on_Timer_timeout():
	contador = true
	pass # Replace with function body.


func _on_dos_timeout():
	contador2 = true
	pass # Replace with function body.


func _on_tres_timeout():
	contador3 = true
	pass # Replace with function body.


func _on_cuatro_timeout():
	contador4 = true
	pass # Replace with function body.

extends Node2D


var contador = false


func _physics_process(delta):
	if global_Var.nivel == 1:
		if contador == true:
			$fondo_ani.animation = "1"
			yield(get_tree().create_timer(6),"timeout")
			$fondo_ani.animation = "2"
			contador = false
	if global_Var.nivel == 2:
		$Timer.wait_time = 4
		if contador == true:
			$fondo_ani.animation = "1"
			yield(get_tree().create_timer(4),"timeout")
			$fondo_ani.animation = "2"
			contador = false
	if global_Var.nivel == 3:
		$Timer.wait_time = 3
		if contador == true:
			$fondo_ani.animation = "1"
			yield(get_tree().create_timer(3),"timeout")
			$fondo_ani.animation = "2"
			contador = false
	if global_Var.nivel == 4:
		$Timer.wait_time = 2
		if contador == true:
			$fondo_ani.animation = "1"
			yield(get_tree().create_timer(2),"timeout")
			$fondo_ani.animation = "2"
			contador = false

func _on_Timer_timeout():
	contador = true
	pass # Replace with function body.

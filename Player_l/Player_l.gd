extends KinematicBody2D

#movimiento
var cantidad = 70
var movimiento = Vector2()
#gravedad
var gravedad = 20.0
var masa = 1

#salto
var speed = 10
var jump_speed = 620

#max daltos
var max_jump = 2
var salto = 0
var suelo = false


var sonido = false


var soni_salto = false


func _ready():
	
	pass 


func _physics_process(delta):
	move()
	jump()
	sonidos()
	movimiento.y = movimiento.y + gravedad
	movimiento = move_and_slide(movimiento, Vector2(0, -1))
	movimiento.x = lerp(movimiento.x,0,0.21)
	pass

func move():
	#movimiento.x = 0
	if Input.is_action_pressed("ui_left"):
		movimiento.x -= cantidad
		
		
	if Input.is_action_pressed("ui_right"):
		movimiento.x += cantidad

func sonidos():
	if Input.is_action_pressed("ui_right"):
		if is_on_floor():
			$Pasos.play()
	if Input.is_action_pressed("ui_left"):
		if is_on_floor():
			$Pasos.play()
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			$salto.play()
	elif is_on_floor():
		$salto.playing = false


func jump():
	if is_on_floor():
		salto = 0
		masa = 1
		if Input.is_action_just_pressed("ui_up") && salto < max_jump:
			
			suelo = false
			#if salto == 0:
	#			#animacion de salto
	#			pass
			salto += 1
			masa = 0
			movimiento.y -= jump_speed
		


func _on_Timer_timeout():
	if is_on_floor():
	
		pass

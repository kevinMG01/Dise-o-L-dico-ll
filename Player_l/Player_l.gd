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
var suelo = true



func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	move()
	jump()
	sonido()
	movimiento.y = movimiento.y + gravedad
	movimiento = move_and_slide(movimiento, Vector2(0, -1))
	movimiento.x = lerp(movimiento.x,0,0.21)
	pass

func move():
	
#	movimiento.x = 0
	if Input.is_action_pressed("ui_left"):
		movimiento.x -= cantidad
		
	if Input.is_action_pressed("ui_right"):
		movimiento.x += cantidad

func sonido():
	if Input.is_action_pressed("ui_left"):
		if is_on_floor():
			$AudioStreamPlayer2D.playing = true
	else:
		$AudioStreamPlayer2D.playing = false
			
	pass

func jump():
	if is_on_floor():
		salto = 0
		suelo = true
		
		if Input.is_action_just_pressed("ui_up") && salto < max_jump:
			suelo = false
	#		if salto == 0:
	#			#animacion de salto
	#			pass
			salto += 1
			movimiento.y -= jump_speed
	#	elif salto == 1:
			#animacion de doble salto
	#		movimiento.y -= jump_doble
	#		salto +=1
	#if !is_on_floor():
	#	if movimiento.y < 1:
	#		pass

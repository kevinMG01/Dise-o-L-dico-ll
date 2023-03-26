extends KinematicBody2D



#movimiento
var cantidad = 100
var movimientos = Vector2()
#gravedad
var gravedad = 20.0
var masa = 1
#salto
const acceleracion = 70
const max_speed = 320

var speed = 10
var jump_speed = 620
var gravity = 22
#max daltos
var max_jump = 2
var salto = 0
var suelo = true
var jump_doble = 720


func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	move()
	jump()
	movimientos.y = movimientos.y + gravedad
	movimientos = move_and_slide(movimientos, Vector2(0, -1))
	movimientos.x = lerp(movimientos.x,0,0.21)
	pass

func move():
#	movimiento.x = 0
	if Input.is_action_pressed("a"):
		movimientos.x -= cantidad
	if Input.is_action_pressed("d"):
		movimientos.x += cantidad

func jump():
	if is_on_floor():
		salto = 0
		suelo = true
		
		if Input.is_action_pressed("w") && salto < max_jump:
			suelo = false
			if salto == 0:
				#animacion de salto
				pass
			salto += 1
			movimientos.y -= jump_speed
		elif salto == 1:
			#animacion de doble salto
			movimientos.y -= jump_doble
			salto +=1
	if !is_on_floor():
		if movimientos.y < 1:
			pass

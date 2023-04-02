extends KinematicBody2D

var movimiento = Vector2()
var velocity = 150
var cantidad = 100
var distancia = 100
var comensar = false


func _ready():
	comensar = true
	pass 


func _physics_process(delta):
	move()
	movimiento = move_and_slide(movimiento)
	movimiento.x = lerp(movimiento.x,0,0.21)
	pass

func move():
	if comensar == true:
		movimiento.x += velocity
		pass
	
	pass

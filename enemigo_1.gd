extends KinematicBody2D

var movimiento = Vector2()
var velocity = 20
#var cantidad = 5
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
		var cantidad = 5
		if cantidad > 1:
			movimiento.x += velocity
			cantidad -= 1
			
		else:
			movimiento.x -= velocity
			cantidad += 1
			pass
	
	pass

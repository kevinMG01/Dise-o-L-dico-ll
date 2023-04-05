extends KinematicBody2D

var movimiento = Vector2()
var velocity = 20
var cantidad = 500
var distancia = 100
var comensar = false
var caminar = false

#rotacion
var speed = 0.08
var comenzar_rot = false


func _ready():
	comensar = true
	comenzar_rot = true
	pass 


func _physics_process(delta):
	move()
	movimiento = move_and_slide(movimiento)
	movimiento.x = lerp(movimiento.x,0,0.21)
	
	
	if comenzar_rot == true:
		get_node("CollisionShape2D").rotate(speed)
	if comenzar_rot == true:
		get_node("Sprite").rotate(speed)
	pass

func move():
#	var cantidad = 5
	if comensar == true:
		
		if caminar == false:
			movimiento.x += velocity
			cantidad -= 1
			print(cantidad)
			if cantidad == 0:
				caminar = true
		if caminar == true:
			movimiento.x -= velocity
			cantidad += 1
			if cantidad == 500:
				caminar = false
			pass
	
	pass

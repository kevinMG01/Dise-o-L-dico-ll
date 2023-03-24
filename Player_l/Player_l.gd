extends KinematicBody2D


var cantidad = 100
var movimiento = Vector2()


func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	move()
	movimiento = move_and_slide(movimiento)
	movimiento.x = lerp(movimiento.x,0,0.21)
	pass

func move():
#	movimiento.x = 0
	if Input.is_action_pressed("ui_left"):
		movimiento.x -= cantidad
	if Input.is_action_pressed("ui_right"):
		movimiento.x += cantidad
	pass

extends KinematicBody2D


var movimiento = Vector2()
var cantidad = 30

var gravity = 5
var salto = 0
var suelo = false
var jump_speed = 900



var comensar = false
var caminar = false
var velocity = 20

# Called when the node enters the scene tree for the first time.
func _ready():
	suelo = true
	comensar = true
	pass # Replace with function body.
	

func _physics_process(delta):
	move()
	movimiento.y = movimiento.y + gravity
	movimiento = move_and_slide(movimiento, Vector2(0, -1))
	movimiento.x = lerp(movimiento.x,0,0.21)
	
func _salto_salir():
	if suelo == true: #Input.is_action_just_pressed("ui_up") 
		salto += 1
		movimiento.y -= jump_speed
	if salto == 1:
		suelo = false
		
func move():
#	var cantidad = 5
	if comensar == true:
		
		if caminar == false:
			movimiento.x += velocity
			cantidad -= 1
			if cantidad == 0:
				caminar = true
		if caminar == true:
			movimiento.x -= velocity
			cantidad += 1
			if cantidad == 200:
				caminar = false
			pass


func _on_Area2D_body_entered(body):
	if body.get_name() == "Player_l":
		global_Var.vida -= 1
		global_Var.cantidad = 0
		if global_Var.nivel_cambio_moneda == true:
			global_Var.vida_nivel_4 -= 1
		body.queue_free()
	if body.get_name() == "Player_ll":
		global_Var.vida -= 1
		global_Var.cantidad_j_2 = 0
		if global_Var.nivel_cambio_moneda == true:
			global_Var.vida_nivel_4 -= 1
		body.queue_free()

	pass # Replace with function body.


func _on_Timer_timeout():
	queue_free()
	pass # Replace with function body.

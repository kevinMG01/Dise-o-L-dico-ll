extends RigidBody2D


var movimiento = Vector2()
var cantidad = 30

var gravity = 20
var salto = 0
var suelo = false
var jump_speed = 40


# Called when the node enters the scene tree for the first time.
func _ready():
	#suelo = true
	pass # Replace with function body.
	

func _physics_process(delta):
	#movimiento.y = movimiento.y + gravity
	




#	func _salto_salir():
		#if suelo == true: #Input.is_action_just_pressed("ui_up") 
	#		salto += 1
	#		movimiento.y -= jump_speed
	#if 	salto == 1:
	#		suelo = false
	pass



func _on_Area2D_body_entered(body):
	if body.get_name() == "suelo":
		self.queue_free()
	if body.get_name() == "Player_l":
		global_Var.vida -= 1
		global_Var.cantidad = 0
		body.queue_free()
	if body.get_name() == "Player_ll":
		global_Var.vida -= 1
		global_Var.cantidad_j_2 = 0
		body.queue_free()

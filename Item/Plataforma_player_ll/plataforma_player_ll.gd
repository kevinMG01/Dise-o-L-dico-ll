extends StaticBody2D


var speed = 9.41

func _physics_process(delta):
	if Input.is_action_just_pressed(""):
		get_node("Sprite").rotation = speed
	pass


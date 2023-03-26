extends StaticBody2D



#var speed = 0.01

func _process(delta):

	
	pass
	

func _physics_process(delta):
	#if Input.is_action_pressed("ui_accept"):
	#	rotate(speed)
	pass


func _on_Area2D_body_entered(body):
	if body.get_name() == "Player_l":
		body.queue_free()
	pass # Replace with function body.

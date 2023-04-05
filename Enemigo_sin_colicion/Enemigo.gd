extends Area2D



var invocar = preload("res://Enemigo_sin_colicion/lava/salpicadura/salpicadura.tscn")


func _ready():
	pass 


func _physics_process(delta):


	pass


func invocar():
		var newplayer = invocar.instance()
		add_child(newplayer)






func _on_Enemigo_body_entered(body):
	
	pass # Replace with function body.
	




func _on_Timer_timeout():
	invocar()
	pass # Replace with function body.

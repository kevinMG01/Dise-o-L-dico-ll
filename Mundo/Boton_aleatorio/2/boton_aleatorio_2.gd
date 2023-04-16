extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.animation = "no_pre"
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_boton_aleatorio_2_body_entered(body):
	if body.is_in_group("player_l"):
		$AnimatedSprite.animation = "pre"
		global_Var.camviar_posicion_2 = true
		queue_free()
	pass # Replace with function body.

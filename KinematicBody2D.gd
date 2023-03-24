extends KinematicBody2D

var rotar = false
var speed = 260

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	rotar = true
	pass

func _physics_process(delta):
	if rotar:
		get_node("Sprite").rotation = speed
func rotar():
	rotar = true

extends Node2D


func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		get_tree().change_scene("res://Mundo/Mundo.tscn")

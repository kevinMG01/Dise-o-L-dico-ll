extends Node2D


var cantidad = 0


func _physics_process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		cantidad += 1
	if cantidad == 0:
		$bonus.visible = false
		$objetivo.visible = true
	if cantidad == 1:
		$bonus.visible = true
		$objetivo.visible = false
	if cantidad == 2:
		get_tree().change_scene("res://Nivel_4/Nivel_4.tscn")

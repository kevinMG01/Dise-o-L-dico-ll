extends Node2D

var cantidad = 0

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		cantidad += 1
	if cantidad == 0:
		$Tuto.visible = false
		$adb.visible = true
	if cantidad == 1:
		$Tuto.visible = true
		$adb.visible = false
	if cantidad == 2:
		get_tree().change_scene("res://Mundo/Mundo.tscn")
	

extends Node2D



func _physics_process(delta):
	if global_Var.puntos_p_1 < global_Var.puntos_p_2 :
		$player_2.visible = false
		$player_2.visible = true
	if global_Var.puntos_p_1 > global_Var.puntos_p_2  :
		$player_2.visible = true
		$player_2.visible = false

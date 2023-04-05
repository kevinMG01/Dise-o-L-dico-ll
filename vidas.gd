extends Node2D






func _physics_process(delta):
	
	if global_Var.vida < 5:
		$vida_1.visible = false
		
	if global_Var.vida < 4:
		$vida_2.visible = false
		
	if global_Var.vida < 3:
		$vida_3.visible = false
		
	if global_Var.vida < 2:
		$vida_4.visible = false
		
	if global_Var.vida < 1:
		$vida_5.visible = false
		
		
		pass
	

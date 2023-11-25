extends Node2D

@export var laser_tscn: PackedScene

func _process(delta):
	
	var mouse_pos = get_global_mouse_position()
	position.x = mouse_pos.x
	
	# player clicks ---> Laser Shoots
	
	if Input.is_action_just_pressed("fire"):
		var new_laser = laser_tscn.instantiate()
		add_sibling(new_laser)
		new_laser.position = self.position

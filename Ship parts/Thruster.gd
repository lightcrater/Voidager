extends Node2D

@export_enum("left","right","up","down") var rotation_dir : String

func _input(event):
	if event.is_action_pressed("editor.rotate_L"):
		match rotation_dir:
			"left":
				rotation_dir = "down"
			"right":
				rotation_dir = "up"
			"up":
				rotation_dir = "left"
			"down":
				rotation_dir = "right"
	
	elif event.is_action_pressed("editor.rotate_R"):
		match rotation_dir:
			"left":
				rotation_dir = "up"
			"right":
				rotation_dir = "down"
			"up":
				rotation_dir = "right"
			"down":
				rotation_dir = "left"

func _physics_process(delta):
	match rotation_dir:
		"left":
			rotation = -PI / 2
		"right":
			rotation = PI / 2
		"up":
			rotation = 0
		"down":
			rotation = PI

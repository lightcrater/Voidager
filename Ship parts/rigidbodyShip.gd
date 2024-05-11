extends RigidBody2D

var accel = 0
var speed = 0
var maxspd = 50

const rotation_speed = 2.5

var hp = 0

func _physics_process(delta):
	print(speed)
	var target_rotation = get_global_mouse_position().angle_to_point(global_position) - deg_to_rad(90)
	rotation = lerp_angle(rotation, target_rotation, rotation_speed * delta)
	
	var dir = Input.get_vector("left", "right", "up", "down")
	
	apply_force(dir.rotated(rotation) * speed)
	
	if dir: 
		speed += accel
		speed = clamp(speed, 0, maxspd)

func update_stats(stats_array):
	hp += stats_array["health"]
	accel += stats_array["accel"]
	maxspd += stats_array["maxspd"]

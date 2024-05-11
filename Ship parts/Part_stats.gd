extends Node2D

@export var stats: Dictionary = {"health": 0, "accel": 0, "maxspd": 0, "decel": 0}
var parent_node

func _ready():
	parent_node = get_parent()
	parent_node.update_stats(stats)

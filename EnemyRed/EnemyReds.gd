extends Node2D

var max_reds = 3
var Red = load("res://EnemyRed/EnemyRed.tscn")

func _ready():
	randomize()

func _physics_process(delta):
	if get_child_count() < max_reds:
		if randf() < 0.01:
			var red = Red.instance()
			red.position.y = -100
			red.position.x = randi() % 1024
			add_child(red)

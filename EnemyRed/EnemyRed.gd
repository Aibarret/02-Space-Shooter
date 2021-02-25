extends Area2D

var speed = 5

func _physics_process(delta):
	position.y += speed
	if position.y >= 620:
		queue_free()



func _on_EnemyRed_body_entered(body):
	body.die(0)

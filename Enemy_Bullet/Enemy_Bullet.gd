extends Area2D

var speed = 5
var velocity = Vector2.ZERO

func _ready():
	pass
	
func _physics_process(_delta):
	position += velocity
	position.y += speed
	if position.y > 620:
		queue_free()




func _on_Enemy_Bullet_body_entered(body):
	body.die(0)
	queue_free()

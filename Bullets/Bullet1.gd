extends Area2D

var speed = 2
var velocity = Vector2.ZERO

func _ready():
	pass
	
func _physics_process(_delta):
	position += velocity
	position.y -= speed
	if position.y < -20:
		queue_free()


func _on_Bullet1_body_entered(body):
	body.die(1)
	queue_free()

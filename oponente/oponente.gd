extends CharacterBody2D

var speed = 500
var ball

func _ready():
	ball = get_parent().get_node("pelota")
	
	if Global.modo_juego == "facil":
		speed = 460
	elif Global.modo_juego == "dificil":
		speed = 580
	elif Global.modo_juego == "1v1":
		speed = 500 

func _physics_process(delta):
	velocity.y = 0 
	
	if Global.modo_juego == "1v1":
		if Input.is_action_pressed("j2_arriba"):
			velocity.y = -1
		elif Input.is_action_pressed("j2_abajo"):
			velocity.y = 1
			
	else:
		if abs(ball.position.y - position.y) > 10: 
			if ball.position.y < position.y:
				velocity.y = -1 
			else:
				velocity.y = 1 
				
	velocity.y *= speed
	move_and_collide(velocity * delta)

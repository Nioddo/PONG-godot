extends Node2D

const center = Vector2(640, 360)
var JUGADOR_PUNT = -2
var OPONENTE_PUNT = -2
func _on_pelota_afuera_body_entered(body):
	OPONENTE_PUNT +=1
	$puntaje_o.text=str(OPONENTE_PUNT)
	reset()

func _on_pelota_afuera_2_body_entered(body):
	JUGADOR_PUNT +=1
	$puntaje_j.text=str(JUGADOR_PUNT)
	reset()
	
func reset():
	$pelota.position = center
	$pelota.call("set_ball_velocity")
	$jugador.position.y = center.y
	$oponente.position.y = center.y

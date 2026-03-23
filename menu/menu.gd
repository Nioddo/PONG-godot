extends Control

func _on_CPU_pressed() -> void:
	Global.modo_juego = "1v1"
	get_tree().change_scene_to_file("res://pong/pong.tscn")

func _on_facil_pressed() -> void:
	Global.modo_juego = "facil"
	get_tree().change_scene_to_file("res://pong/pong.tscn")

func _on_dificil_pressed() -> void:
	Global.modo_juego = "dificil"
	get_tree().change_scene_to_file("res://pong/pong.tscn")

extends CanvasLayer

var cursor_custom = load("res://Assets/PNG/Cursor/Outline/crosshair131.png")

func _ready():
	pass 


func _on_Button_pressed():
	get_node("../").queue_free()
	get_node("/root/Mundo/IconeTarefa").queue_free()
	Global.sinal = 0
	Global.remover_aceitar = 0


func _on_Button_mouse_entered():
	pass

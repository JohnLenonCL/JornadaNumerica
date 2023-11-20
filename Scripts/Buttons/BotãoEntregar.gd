extends CanvasLayer

var cursor_custom = load("res://Assets/PNG/Cursor/Outline/crosshair131.png")

func _ready():
	pass 


func _on_Button_pressed():
	Global.teste = 1
	get_node("../").queue_free()
	get_node("/root/Mundo/IconeTarefa").queue_free()
	Global.sinal = 0
	Global.remover_aceitar = 0
	
	if Global.acerto == 1:
		Global.dinheiro += 10
		Global.acerto = 0
	if Global.acerto == 2:
		Global.dinheiro += 20
		Global.acerto = 0
	if Global.acerto == 3:
		Global.dinheiro += 30
		Global.acerto = 0
	if Global.acerto == 4:
		Global.dinheiro += 100
		Global.acerto = 0


func _on_Button_mouse_entered():
	pass

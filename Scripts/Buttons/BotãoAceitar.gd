extends CanvasLayer

var cursor_custom = load("res://Assets/PNG/Cursor/Outline/crosshair131.png")
var iconetarefa = preload("res://Scenes/Tarefas/IconeTarefa.tscn").instance()
var entregar = preload("res://Scenes/Buttons/BotãoEntregar.tscn").instance()
var sprite
	
func _process(delta):
	sprite = get_node("../")

func _on_Button_button_down():
	Global.sinal = 1
	sprite.set_texture(load("res://Assets/PNG/Emotes/emote_question.png"))
	Global.remover_aceitar = 1
	get_node("/root/Mundo").add_child(iconetarefa)
	$Button.hide()
	$Label.show()
	get_node("Timer").start()


func _on_Timer_timeout():
	$Label.hide()


func _on_Button_button_up():
	pass

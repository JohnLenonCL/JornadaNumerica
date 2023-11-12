extends Sprite

var button = preload("res://Scenes/Buttons/BotãoAceitar.tscn").instance()
var entregar = preload("res://Scenes/Buttons/BotãoEntregar.tscn").instance()

func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		if Global.remover_aceitar == 0:
			add_child(button)
		if Global.sinal == 1 and get_node(".").get_texture() == load("res://Assets/PNG/Emotes/emote_question.png"):
			add_child(entregar)
	
func _on_Area2D_body_exited(body):
	if body.get_name() == "Player":
		if Global.remover_aceitar == 0:
			remove_child(button)
		if Global.sinal == 1 and get_node(".").get_texture() == load("res://Assets/PNG/Emotes/emote_question.png"):
			remove_child(entregar)

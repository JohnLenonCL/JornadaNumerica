extends CanvasLayer

onready var tarefa = preload("res://Scenes/Tarefas/EquaçãoPrimeiroGrau.tscn").instance()
var teste = 0

func _on_Button_pressed():
	teste += 1
	if teste % 2 == 0:
		remove_child(tarefa)
	else:
		add_child(tarefa)

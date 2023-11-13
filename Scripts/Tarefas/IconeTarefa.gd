extends CanvasLayer

onready var tarefa = preload("res://Scenes/Tarefas/EquaçãoPrimeiroGrau.tscn").instance()
onready var tarefa2 = preload("res://Scenes/Tarefas/DeterminateMatriz.tscn").instance()
var teste = 0
var tarefaAplicada
var val = false


func _process(delta):
	tarefaAplicada = randi()%2

func _on_Button_pressed():
	teste += 1
	if teste % 2 == 0:
		if has_node("EquaçãoPrimeiroGrau"):
			tarefa.hide()
		if has_node("DeterminateMatriz"):
			tarefa2.hide()

	else:
		if has_node("EquaçãoPrimeiroGrau"):
			tarefa.show()
		if has_node("DeterminateMatriz"):
			tarefa2.show()
		
		if tarefaAplicada == 0 and val == false:
			add_child(tarefa)
			val = true
		if tarefaAplicada == 1 and val == false:
			add_child(tarefa2)
			val = true

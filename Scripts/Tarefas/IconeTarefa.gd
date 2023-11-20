extends CanvasLayer

onready var tarefa = preload("res://Scenes/Tarefas/EquaçãoPrimeiroGrau.tscn").instance()
onready var tarefa2 = preload("res://Scenes/Tarefas/DeterminateMatriz.tscn").instance()
onready var tarefa3 = preload("res://Scenes/Tarefas/GeometriaAnalitica.tscn").instance()
onready var tarefa4 = preload("res://Scenes/Tarefas/EquacaoSegundoGrau.tscn").instance()
var teste = 0
var tarefaAplicada
var val = false

func _ready():
	$Tarefa.show()
	$TarefaConcluida.hide()
	


func _process(delta):
	tarefaAplicada = randi()%4
	if Global.teste % 2 == 0:
		$Tarefa.hide()
		$TarefaConcluida.show()

func _on_Button_pressed():
	teste += 1
	if teste % 2 == 0:
		if has_node("EquaçãoPrimeiroGrau"):
			tarefa.hide()
		if has_node("DeterminateMatriz"):
			tarefa2.hide()
		if has_node("GeometriaAnalitica"):
			tarefa3.hide()
		if has_node("EquacaoSegundoGrau"):
			tarefa4.hide()

	else:
		if has_node("EquaçãoPrimeiroGrau"):
			tarefa.show()
		if has_node("DeterminateMatriz"):
			tarefa2.show()
		if has_node("GeometriaAnalitica"):
			tarefa3.show()
		if has_node("EquacaoSegundoGrau"):
			tarefa4.show()
		
		if tarefaAplicada == 0 and val == false:
			add_child(tarefa)
			val = true
		if tarefaAplicada == 1 and val == false:
			add_child(tarefa2)
			val = true
		if tarefaAplicada == 2 and val == false:
			add_child(tarefa3)
			val = true
		if tarefaAplicada == 3 and val == false:
			add_child(tarefa4)
			val = true

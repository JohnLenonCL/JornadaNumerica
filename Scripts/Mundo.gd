extends Node2D

var rng = RandomNumberGenerator.new()
var aluno
var posicao_aluno
var cursor_custom = load("res://Assets/PNG/Cursor/Outline/crosshair180.png")
onready var tempo = get_node("Timer")




func _ready():
	Input.set_custom_mouse_cursor(cursor_custom, 0, Vector2(32,32))


func _process(delta):
	aluno = (randi()%9)
	


func _on_Timer_timeout():
	tempo.set_wait_time((randi()%5 + 3))
	
	var exclamasao = preload("res://Scenes/Exclamasão.tscn").instance()
	
	if aluno == 1 and get_node("Alunos/Aluno/Exclamação") == null:
		get_node("Alunos/Aluno").add_child(exclamasao)
		exclamasao.position = exclamasao.position + Vector2(0,-30)
	if aluno == 2 and get_node("Alunos/Aluno2/Exclamação") == null:
		get_node("Alunos/Aluno2").add_child(exclamasao)
		exclamasao.position = exclamasao.position + Vector2(0,-30)
	if aluno == 3 and get_node("Alunos/Aluno3/Exclamação") == null:
		get_node("Alunos/Aluno3").add_child(exclamasao)
		exclamasao.position = exclamasao.position + Vector2(0,-30)
	if aluno == 4 and get_node("Alunos/Aluno4/Exclamação") == null:
		get_node("Alunos/Aluno4").add_child(exclamasao)
		exclamasao.position = exclamasao.position + Vector2(0,-30)
	if aluno == 5 and get_node("Alunos/Aluno5/Exclamação") == null:
		get_node("Alunos/Aluno5").add_child(exclamasao)
		exclamasao.position = exclamasao.position + Vector2(0,-30)
	if aluno == 6 and get_node("Alunos/Aluno6/Exclamação") == null:
		get_node("Alunos/Aluno6").add_child(exclamasao)
		exclamasao.position = exclamasao.position + Vector2(0,-30)
	if aluno == 7 and get_node("Alunos/Aluno7/Exclamação") == null:
		get_node("Alunos/Aluno7").add_child(exclamasao)
		exclamasao.position = exclamasao.position + Vector2(0,-30)
	if aluno == 8 and get_node("Alunos/Aluno8/Exclamação") == null:
		get_node("Alunos/Aluno8").add_child(exclamasao)
		exclamasao.position = exclamasao.position + Vector2(0,-30)
	if aluno == 9 and get_node("Alunos/Aluno9/Exclamação") == null:
		get_node("Alunos/Aluno9").add_child(exclamasao)
		exclamasao.position = exclamasao.position + Vector2(0,-30)


extends KinematicBody2D

export var speed = 50
var velocity := Vector2.ZERO

var player : KinematicBody2D = null
var path : Array = []
var navigation_path: Navigation2D = null


func _ready():
	yield(get_tree(),"idle_frame")
	player = get_parent().get_node("Alunos/Aluno")
	navigation_path = get_parent().get_node("Navigation2D")

func _physics_process(delta):
	if !Engine.editor_hint:
		if player and navigation_path:
			generate_path()
			navigate()
		velocity = move_and_slide(velocity)

func generate_path():
	if player != null and navigation_path != null:
		path = navigation_path.get_simple_path(global_position, player.global_position, false)
	$Sprite.rotation = lerp_angle($Sprite.global_rotation, navigation_path.get_angle_to(velocity), 0.1)

func navigate():
	if path.size() > 0:
		velocity = global_position.direction_to(path[1]) * speed
		if global_position == path[0]:
			path.pop_front()




func _on_Area2D_body_entered(body):
	if body.get_name() == "Player":
		player = get_parent().get_node("Player")
		$Light2D.color = Color(255,0,0,0.01)

func _on_Area2D_body_exited(body):
	if body.get_name() == "Player":
		player = get_parent().get_node("Alunos/Aluno")
		$Light2D.color = Color(1,1,1,0.15)


func _on_Area2DAlunos_body_entered(body):
	if body.get_name() == "Aluno" and player == get_parent().get_node("Alunos/Aluno"):
		player = get_parent().get_node("Alunos/Aluno2")
	if body.get_name() == "Aluno2" and player == get_parent().get_node("Alunos/Aluno2"):
		player = get_parent().get_node("Alunos/Aluno3")
	if body.get_name() == "Aluno3" and player == get_parent().get_node("Alunos/Aluno3"):
		player = get_parent().get_node("Alunos/Aluno4")
	if body.get_name() == "Aluno4" and player == get_parent().get_node("Alunos/Aluno4"):
		player = get_parent().get_node("Alunos/Aluno5")
	if body.get_name() == "Aluno5" and player == get_parent().get_node("Alunos/Aluno5"):
		player = get_parent().get_node("Alunos/Aluno6")
	if body.get_name() == "Aluno6" and player == get_parent().get_node("Alunos/Aluno6"):
		player = get_parent().get_node("Alunos/Aluno7")
	if body.get_name() == "Aluno7" and player == get_parent().get_node("Alunos/Aluno7"):
		player = get_parent().get_node("Alunos/Aluno8")
	if body.get_name() == "Aluno8" and player == get_parent().get_node("Alunos/Aluno8"):
		player = get_parent().get_node("Alunos/Aluno9")
	if body.get_name() == "Aluno9" and player == get_parent().get_node("Alunos/Aluno9"):
		player = get_parent().get_node("Alunos/Aluno")

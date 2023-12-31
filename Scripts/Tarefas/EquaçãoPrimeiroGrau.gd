extends CanvasLayer

onready var equ = get_node("Equação")
onready var res = get_node("Resultado")
var a = str(randi()%15)
var b = str(randi()%15)
var c = str(randi()%15)
var d = str(randi()%15)

var resultado = (int(b) * int(c) + int(d) - int(a))

func _ready():
	print("Resultado: "+str(resultado))
	equ.set_text("X + " + a + " = " + b + " * " + c + " + " + d)

func _on_Button0_pressed():
	res.set_text(res.get_text() + "0")

func _on_Button1_pressed():
	res.set_text(res.get_text() + "1")

func _on_Button2_pressed():
	res.set_text(res.get_text() + "2")

func _on_Button3_pressed():
	res.set_text(res.get_text() + "3")

func _on_Button4_pressed():
	res.set_text(res.get_text() + "4")

func _on_Button5_pressed():
	res.set_text(res.get_text() + "5")

func _on_Button6_pressed():
	res.set_text(res.get_text() + "6")

func _on_Button7_pressed():
	res.set_text(res.get_text() + "7")

func _on_Button8_pressed():
	res.set_text(res.get_text() + "8")

func _on_Button9_pressed():
	res.set_text(res.get_text() + "9")

func _on_ButtonMenos_pressed():
	res.set_text(res.get_text() + "-")

func _on_ButtonApagar_pressed():
	var text = []
	for i in res.get_text():
		text.append(i)
	text.remove(text.size() - 1)
	res.set_text("")
	for i in text:
		res.set_text(res.get_text() + i)


func _on_Finalizar_pressed():
	Global.teste += 1
	if str(resultado) == str(res.get_text()):
		Global.acerto = 1
		queue_free()
	else:
		queue_free()




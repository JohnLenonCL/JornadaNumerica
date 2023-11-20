extends CanvasLayer

onready var equ = get_node("Equacao")
onready var res = get_node("Resultado")
var a = str(randi()%9 + 1)
var b = str(randi()%9)
var c = str(randi()%9)
var d = str(randi()%9)

var bhaskara = (-int(b))*(-int(b))-4*int(a)*(-int(c))

var resultado = (int(b)+sqrt(bhaskara))/(2*int(a))
var resultado2 = (int(b)-sqrt(bhaskara))/(2*int(a))
var resultado3 = resultado + resultado2

func _ready():
	print("X': "+str(resultado))
	print("X'': "+str(resultado2))
	print("resultado: "+str(resultado3))
	equ.set_text(a + "x² - " + b + "x - " + c + " = 0")

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

func _on_ButtonPonto_pressed():
	res.set_text(res.get_text() + ".")
	

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
	if str(resultado) == str(res.get_text()) || str(resultado2) == str(res.get_text()):
		Global.acerto = 1
		queue_free()
	else:
		queue_free()
	




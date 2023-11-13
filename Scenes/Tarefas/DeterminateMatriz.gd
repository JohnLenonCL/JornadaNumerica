extends CanvasLayer

onready var equ = get_node("Matriz")
onready var res = get_node("Resultado")
var a = str(randi()%9)
var b = str(randi()%9)
var c = str(randi()%9)
var d = str(randi()%9)
var e = str(randi()%9)
var f = str(randi()%9)
var g = str(randi()%9)
var h = str(randi()%9)
var i = str(randi()%9)

var resultado = ((int(a)*int(e)*int(i) + int(b)*int(f)*int(g) + int(c)*int(d)*int(h)) - (int(c)*int(e)*int(g) + int(a)*int(f)*int(h) + int(b)*int(e)*int(i)))

func _ready():
	print("Resultado: "+str(resultado))
	equ.set_text(" | " + a + "  " + b + "  " + c + " | " + " \n | " + d + "  " + e + "  " + f + " | " + " \n | " + g + "  " + h + "  " + i + " | ")

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
	if str(resultado) == str(res.get_text()):
		queue_free()
	else:
		print("errou")
	

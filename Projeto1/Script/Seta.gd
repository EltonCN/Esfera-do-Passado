extends Node2D

var direcao = ["Cima","Esquerda","Direita","Baixo"]

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
# warning-ignore:unused_argument
func _process(delta):
	for i in range(4):
		if(Script_global.seta[i] == 0):
			get_node(direcao[i]).set_disabled(true)
			
			get_node(direcao[i]+"/Sprite").hide()
		elif(Script_global.seta[i] == 1):
			get_node(direcao[i]).set_disabled(false)
			get_node(direcao[i]+"/Sprite").show()
		pass	
	pass


func _on_Cima_pressed():
	get_tree().change_scene("res://Cenas/"+Script_global.proxima_cena[0]+".tscn")
	pass # Replace with function body.


func _on_Esquerda_pressed():
	get_tree().change_scene("res://Cenas/"+Script_global.proxima_cena[1]+".tscn")
	pass # Replace with function body.


func _on_Direita_pressed():
	get_tree().change_scene("res://Cenas/"+Script_global.proxima_cena[2]+".tscn")
	pass # Replace with function body.


func _on_Baixo_pressed():
	get_tree().change_scene("res://Cenas/"+Script_global.proxima_cena[3]+".tscn")
	pass # Replace with function body.

extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cena_seta = load("res://Nós/Seta.tscn")
var seta = null

onready var templo1 = preload("res://Sprite/TemploFora/Templo_1.png") 
onready var templo2 = preload("res://Sprite/TemploFora/Templo_2.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	
	Script_global.seta[0] = 0
	Script_global.seta[1] = 0
	Script_global.seta[2] = 1
	Script_global.seta[3] = 0
	
	seta = cena_seta.instance()
	seta.name = "Seta"
	add_child(seta)
	
	if(Script_global.fragmento == 0):
		Script_global.proxima_cena[2] = "Introdução/Introdução_Templo"
	elif(Script_global.fragmento == 1):
		Script_global.proxima_cena[2] = "Templo"
		get_node("Templo").texture = templo1
	else:
		Script_global.proxima_cena[2] = "Templo"
		get_node("Templo").texture = templo2
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

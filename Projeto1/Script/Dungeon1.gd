extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cena_ferramenta = load("res://Nós/Ferramenta.tscn")
var ferramenta = null

var cena_seta = load("res://Nós/Seta.tscn")
var seta = null

# Called when the node enters the scene tree for the first time.
func _ready():

	
	Script_global.seta[0] = 1
	Script_global.seta[1] = 0
	Script_global.seta[2] = 0
	Script_global.seta[3] = 0
	
	seta = cena_seta.instance()
	seta.name = "Seta"
	add_child(seta)
	
	Script_global.proxima_cena[0] = "Dungeon1/Dungeon1_1"
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cena_ferramenta = "res://Nós/Ferramenta"
var ferramenta = null

var cena_seta = "res://Nós/Seta"
var seta = null

# Called when the node enters the scene tree for the first time.
func _ready():
	ferramenta = cena_ferramenta.instance()
	ferramenta.name = "Ferramenta"
	add_child(ferramenta)
	
	seta = cena_seta.instance()
	seta.name = "Seta"
	add_child(seta)
	
	Script_global.seta[0] = 0
	Script_global.seta[1] = 0
	Script_global.seta[2] = 0
	Script_global.seta[3] = 0
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

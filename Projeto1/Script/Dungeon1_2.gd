extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var cena_seta = load("res://Nós/Seta.tscn")
var seta = null

# Called when the node enters the scene tree for the first time.
func _ready():
	seta = cena_seta.instance()
	seta.name = "seta"
	add_child(seta)
	
	Script_global.seta[0] = 0
	Script_global.seta[1] = 0
	Script_global.seta[2] = 0
	Script_global.seta[3] = 0
	
	Script_global.proxima_cena[1] = "Caminho"
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

extends TextureRect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var tipo
var tocando = false
var tempo = 0

onready var apagado = null
onready var aceso = null

func tocar():
	get_node("AudioStreamPlayer2D").play()
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	tipo = self.name[3]
	tipo = int(tipo)
	
	apagado = load("res://Sprite/Gelo/Tom"+str(tipo)+"_Apagado.png")
	aceso = load("res://Sprite/Gelo/Tom"+str(tipo)+"_Aceso.png")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(get_node("AudioStreamPlayer2D").playing == true):
		texture = aceso
	else:
		texture = apagado
	
	
	pass

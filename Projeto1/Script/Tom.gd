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
	tocando = true
	
	texture = aceso
	
	get_node("AudioStreamPlayer2D").play()
	
	pass

# Called when the node enters the scene tree for the first time.
func _ready():
	tipo = self.name[3]
	tipo = int(tipo)
	
	apagado = load("res://Sprite/Tom"+str(tipo)+"_Apagado.png")
	aceso = load("res://Sprite/Tom"+str(tipo)+"_Aceso.png")
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(tocando == true):
		if(tempo<1):
			tempo += 1
		else:
			tempo = 0
			tocando = false
			texture = apagado
	
	
	pass

extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var tempo = 0

onready var consertado = preload("res://Sprite/Prov_Cano.png")
onready var lava = preload("res://Sprite/Prov_Cano.png")
# Called when the node enters the scene tree for the first time.
func _ready():
	disabled = true

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(get_parent().concluido == 1):
		if(tempo < 1.25):
			texture_normal = lava
			tempo += delta
		else:
			texture_normal = consertado
			disabled = false
	pass


func _on_Gema2_pressed():
	Script_global.seta[2] = 1
	hide()
	disabled = true
	pass # Replace with function body.

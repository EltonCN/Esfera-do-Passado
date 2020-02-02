extends TextureRect


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var normal = preload("res://Sprite/Interiores/Interior_Fogo.png")
onready var lava = preload("res://Sprite/Interiores/Interior_FogoL.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(get_parent().concluido == 1 and get_parent().get_node("Gema2").disabled == true):
		texture = lava
	else:
		texture = normal
	pass

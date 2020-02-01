extends Node2D

var cena_ferramenta = load("res://Nós/Ferramenta.tscn")
var ferramenta = null

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	ferramenta = cena_ferramenta.instance()
	ferramenta.name = "Ferramenta"
	add_child(ferramenta)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

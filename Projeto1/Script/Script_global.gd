extends Node

var ferramenta_consquistada = [0,0,0,0]
var ferramenta_uso = 0

var seta = [0,0,0,0]
var proxima_cena = ["","","",""]

var cursor = 0 #0 normal, 1 mão

onready var sprite_normal = preload("res://Sprite/Mão.png")
onready var sprite_cursor = sprite_normal
onready var sprite_mao = preload("res://Sprite/Mão.png")



# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function b	ody.


# Called every frame. 'delta' is the elapsed time since the previous frame.
# warning-ignore:unused_argument
func _process(delta):
	if(cursor == 0):
		sprite_cursor = sprite_normal
	elif(cursor == 1):
		sprite_cursor = sprite_mao
	Input.set_custom_mouse_cursor(sprite_cursor)	
	
	pass

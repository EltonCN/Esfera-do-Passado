extends Node

var ferramenta_consquistada = [0,0,0,0]

var seta = [0,0,0,0]
var proxima_cena = ["","","",""]

var cursor = -1 #-1 normal, 0 mão

var fragmento = 0

onready var sprite_normal = null
onready var sprite_mao = preload("res://Sprite/Mão2.png")
onready var sprite_ferramenta1 = preload("res://Sprite/Mão2.png")
onready var sprite_ferramenta2 = preload("res://Sprite/Mão.png")
onready var sprite_ferramenta3 = preload("res://Sprite/Mão.png")
onready var sprite_ferramenta4 = preload("res://Sprite/Mão.png")

onready var sprite_cursor = sprite_normal
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function b	ody.


# Called every frame. 'delta' is the elapsed time since the previous frame.
# warning-ignore:unused_argument
func _process(delta):
	if(cursor == -1):
		sprite_cursor = sprite_normal
	elif(cursor == 0):
		sprite_cursor = sprite_mao
	elif(cursor == 1):
		sprite_cursor = sprite_ferramenta1
	elif(cursor == 2):
		sprite_cursor = sprite_ferramenta2
	elif(cursor == 3):
		sprite_cursor = sprite_ferramenta3
	elif(cursor == 4):
		sprite_cursor = sprite_ferramenta4
		
	Input.set_custom_mouse_cursor(sprite_cursor)	
	
	pass

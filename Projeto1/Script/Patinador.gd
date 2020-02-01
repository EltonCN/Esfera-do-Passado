extends KinematicBody2D

var velocidade = Vector2(0,0)
var acel = 50
var velocidade_max = 200
var atrito = 30

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


 #Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(get_parent().estagio <3):
	
		if(Input.is_action_pressed("Direita") and !Input.is_action_pressed("Esquerda")):
			velocidade.x += acel*delta
		elif(!Input.is_action_pressed("Direita") and Input.is_action_pressed("Esquerda")):	
			velocidade.x -= acel*delta
			
		if(Input.is_action_pressed("Cima") and !Input.is_action_pressed("Baixo")):
			velocidade.y -= acel*delta
		elif(!Input.is_action_pressed("Cima") and Input.is_action_pressed("Baixo")):	
			velocidade.y += acel*delta
		
	if(velocidade.x>velocidade_max):
		velocidade.x = velocidade_max
	
	if(velocidade.y>velocidade_max):
		velocidade.y = velocidade_max
	
	
	#Computa o atrito
	#Atrito X
	if(velocidade.x > 0):
		velocidade.x -= atrito*delta
		
		if(velocidade.x<0):
			velocidade.x = 0
	elif(velocidade.x < 0):
		velocidade.x += atrito*delta
		
		if(velocidade.x>0):
			velocidade.x = 0
	
	#Atrito Y	
	if(velocidade.y > 0):
		velocidade.y -= atrito*delta
		
		if(velocidade.y<0):
			velocidade.y = 0
	elif(velocidade.y < 0):
		velocidade.y += atrito*delta
		
		if(velocidade.y>0):
			velocidade.y = 0
	
	move_and_slide_with_snap(velocidade, Vector2(0,5),Vector2(0, -1))
		
	pass

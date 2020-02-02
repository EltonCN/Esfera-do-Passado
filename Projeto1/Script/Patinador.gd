extends KinematicBody2D

var velocidade = Vector2(0,0)
var acel = 100
var velocidade_max = 500
var atrito = 40

var bateu = false

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
		else:
			#Atrito X
			if(velocidade.x > 0):
				velocidade.x -= atrito*delta
				
				if(velocidade.x<0):
					velocidade.x = 0
			elif(velocidade.x < 0):
				velocidade.x += atrito*delta
				
				if(velocidade.x>0):
					velocidade.x = 0
			
		if(Input.is_action_pressed("Cima") and !Input.is_action_pressed("Baixo")):
			velocidade.y -= acel*delta
		elif(!Input.is_action_pressed("Cima") and Input.is_action_pressed("Baixo")):	
			velocidade.y += acel*delta
		else:
			#Atrito Y	
			if(velocidade.y > 0):
				velocidade.y -= atrito*delta
				
				if(velocidade.y<0):
					velocidade.y = 0
			elif(velocidade.y < 0):
				velocidade.y += atrito*delta
				
				if(velocidade.y>0):
					velocidade.y = 0
		
	if(velocidade.x>velocidade_max):
		velocidade.x = velocidade_max
	
	if(velocidade.y>velocidade_max):
		velocidade.y = velocidade_max
	
	
	#Computa o atrito
	
	move_and_slide(velocidade, Vector2(0,0))
	
	if(is_on_wall() == true and bateu == false):
		bateu = true
		velocidade.x /= 10
		velocidade.y /= 10
	
	if(is_on_wall() == false):
		bateu = false	
	
	pass


func _on_Area2D_body_entered(body):
	atrito = 0
	pass # Replace with function body.


func _on_Area2D_body_exited(body):
	atrito = 40
	pass # Replace with function body.

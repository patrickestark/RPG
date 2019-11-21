extends Node2D

var speed = 150


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	 #Handle arrow key presses
  if(Input.is_key_pressed(KEY_LEFT)):
    self.position.x-= 1
  if(Input.is_key_pressed(KEY_RIGHT)):
    self.position.x+= 1 
  if(Input.is_key_pressed(KEY_UP)):
    if(Input.is_key_pressed(KEY_SHIFT)):
      self.position.y-= 10
    else:
      self.position.y-= 1

  #Holding SHIFT moves by 10x up and down 
  if(Input.is_key_pressed(KEY_DOWN)):
    if(Input.is_key_pressed(KEY_SHIFT)):
      self.position.y+= 10
    else:
      self.position.y+= 1

  #Quit on Q press      
  if(Input.is_key_pressed(KEY_Q)):
    get_tree().quit()
    
  #Check for mouse movement
  if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
    self.position = get_viewport().get_mouse_position()   


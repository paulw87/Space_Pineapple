class_name prototype_auto_pineapple
extends Control


##referance to the button to start auto creating pineapples
@export var button : Button


##referance to the timer to create a pineapple
@export var timer : Timer


##referance to the user interface
@export var user_interface : User_Interface
##view referance
@export var view : User_Interface.Views


##sets the label at launch
func _ready() -> void:
	
	visible = true
	
	user_interface.navigation_requested.connect(_on_navigation_request)


##creates 1 pineapple
func  create_pineapple() -> void:
	HandlerPineapples.ref.create_pineapple(1)


##start the timer and disabled the button
func start_auto_pineapple() -> void:
	timer.start()
	button.disabled = true


##triggered when the start auto button is pressed
func _on_button_pressed() -> void:
	start_auto_pineapple()


func _on_timer_timeout() -> void:
	create_pineapple()


##watch for naigation request
func _on_navigation_request(requested_view : User_Interface.Views) -> void:
	if requested_view == view:
		visible = true
		return
	
	visible = false

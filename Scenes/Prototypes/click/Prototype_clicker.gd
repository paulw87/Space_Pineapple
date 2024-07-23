class_name Prototype_clicker
extends Control

##referance to the make pineapple button
@export var button : Button

##referance to the user interface
@export var user_interface : User_Interface
##view referance
@export var view : User_Interface.Views


##updates the label at launch
func _ready() -> void:
	visible = false
	
	user_interface.navigation_requested.connect(_on_navigation_request)


## creates pineapple
func create_pineapple() -> void:
	HandlerPineapples.ref.create_pineapple(1)


##triggered when the create pineapple button is pressed
func _on_button_pressed() -> void:
	create_pineapple()

##watch for naigation request
func _on_navigation_request(requested_view : User_Interface.Views) -> void:
	if requested_view == view:
		visible = true
		return
	
	visible = false

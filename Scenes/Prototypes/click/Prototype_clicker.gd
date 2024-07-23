class_name Prototype_clicker
extends Control

##referance to the label displaying the amount of pineapples made.
@export var label : Label

##referance to the make pineapple button
@export var button : Button

##referance to the user interface
@export var user_interface : User_Interface
##view referance
@export var view : User_Interface.Views


##updates the label at launch
func _ready() -> void:
	update_lebel_text()
	
	visible = false
	
	user_interface.navigation_requested.connect(_on_navigation_request)

##temp func to update label
func _process(_delta: float) -> void:
	update_lebel_text()

## creates pineapple
func create_pineapple() -> void:
	Game.ref.data.pineapples += 1
	
##updates the text of the label to refelct a change in pineapples created
func update_lebel_text() -> void:
	label.text = "pineapples : %s" %Game.ref.data.pineapples

##triggered when the create pineapple button is pressed
func _on_button_pressed() -> void:
	create_pineapple()

##watch for naigation request
func _on_navigation_request(requested_view : User_Interface.Views) -> void:
	if requested_view == view:
		visible = true
		return
	
	visible = false

class_name Prototype_clicker
extends Control

##referance to the label displaying the amount of pineapples made.
@export var label : Label

##referance to the make pineapple button
@export var button : Button

##current amount of pineapples
var pineapples : int = 0

##updates the label at launch
func _ready() -> void:
	update_lebel_text()

## creates pineapple
func create_pineapple() -> void:
	pineapples += 1
	update_lebel_text()
	
##updates the text of the label to refelct a change in pineapples created
func update_lebel_text() -> void:
	label.text = "pineapples : %s" %pineapples

##triggered when the create pineapple button is pressed
func _on_button_pressed() -> void:
	create_pineapple()

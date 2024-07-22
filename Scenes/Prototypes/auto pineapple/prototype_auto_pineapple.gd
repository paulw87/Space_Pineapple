class_name prototype_auto_pineapple
extends Control

##referance to the label displaying the amount of pineapples created
@export var label : Label

##referance to the button to start auto creating pineapples
@export var button : Button

##referance to the timer to create a pineapple
@export var timer : Timer

##current amount of pineapples
var pineapples : int = 0

##sets the label at launch
func _ready() -> void:
	update_label_text()

##creates 1 pineapple
func  create_pineapple() -> void:
	pineapples += 1
	update_label_text()

##updates the text of the label to refelct a change in pineapples created
func update_label_text() -> void :
	label.text = "Pineapples: %s" %pineapples

##start the timer and disabled the button
func start_auto_pineapple() -> void:
	timer.start()
	button.disabled = true

##triggered when the start auto button is pressed
func _on_button_pressed() -> void:
	start_auto_pineapple()

func _on_timer_timeout() -> void:
	create_pineapple()

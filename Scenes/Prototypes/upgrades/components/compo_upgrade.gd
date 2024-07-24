class_name CompoUpgrade
extends Control
##componet displying upgrade


## referance to the title label
@export var label_title : Label
## referance to the description rich text label
@export var label_description : RichTextLabel
# referance to the purchanse upgrae button
@export var button : Button


## upgrae display
var upgrade : Up01ClickerUpgrade
 
## upates the title of the upgrade
func update_label_title() -> void:
	var text : String = upgrade.title + " %" %upgrade.level
	label_title.text = text


## updates the upgrae descripton
func update_lebel_description() -> void:
	label_description.text = upgrade.description()

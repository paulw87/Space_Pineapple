class_name User_Interface
extends Control
##main class controlling the user interface


##list of views
enum Views {
	PROTOTYPE_AUTO_PINEAPPLE,
	PROTOTYPE_CLICKER,
	PROTOTYPE_UPGRADES,
}


##emitted when something has requested navigation. includes the view target
signal navigation_requested(view : Views)


##triggered when the auto pineapple link is clicked
func _on_prototype_auto_pineapple_link_pressed() -> void:
	navigation_requested.emit(Views.PROTOTYPE_AUTO_PINEAPPLE)


##triggered when the pineapple clicker link is clicked
func _on_prototype_clicker_link_pressed() -> void:
	navigation_requested.emit(Views.PROTOTYPE_CLICKER)


func _on_prototype_upgrades_link_button_pressed():
	navigation_requested.emit(Views.PROTOTYPE_UPGRADES)

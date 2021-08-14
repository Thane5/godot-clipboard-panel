tool
extends EditorPlugin

var clipboardPanel

func _enter_tree():
	clipboardPanel = preload("res://addons/Clipboard_Panel/Clipboard_Panel.tscn").instance()
	add_control_to_bottom_panel(clipboardPanel, "Clipboard")
	

func _exit_tree():
	remove_control_from_bottom_panel(clipboardPanel)
	clipboardPanel.free()

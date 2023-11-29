extends Control

var current_total = 0
var current_operations = ["add"]
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var numbers = 0
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/9button".button_pressed == true:
		numbers += 9
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/9button".button_pressed == true:
		numbers += 8
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/9button".button_pressed == true:
		numbers += 7
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/9button".button_pressed == true:
		numbers += 6
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/9button".button_pressed == true:
		numbers += 5
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/9button".button_pressed == true:
		numbers += 4
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/9button".button_pressed == true:
		numbers += 3
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/9button".button_pressed == true:
		numbers += 2
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/9button".button_pressed == true:
		numbers += 1
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/9button".button_pressed == true:
		numbers == numbers*10
	
	
	
	
	if $Panel/ColorRect/compContainer/allbutton/bottombutton/solve.button_pressed == true:
		match current_operations:
			"add":
				current_total+=numbers
			"sub":
				current_total-=numbers
			"mul":
				current_total*=numbers 
			"div":
				if numbers == 0:
					current_total == "E"
				else :
					current_total /= numbers
		if $Panel/ColorRect/compContainer/allbutton/topbutton/clr.button_pressed == true:
			current_total = 0
	$Panel/ColorRect/compContainer/DisplayContainer/MarginContainer/VBoxContainer/Label.text = str(current_total)

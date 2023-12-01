extends Control

var current_total = 0
var err_flag = false

# Called when the node enters the scene tree for the first time.




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var numbers = 0
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/9button".button_pressed == true:
		numbers += 9
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/8button".button_pressed == true:
		numbers += 8
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/7button".button_pressed == true:
		numbers += 7
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/6button".button_pressed == true:
		numbers += 6
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/5button".button_pressed == true:
		numbers += 5
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/4button".button_pressed == true:
		numbers += 4
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/3button".button_pressed == true:
		numbers += 3
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/2button".button_pressed == true:
		numbers += 2
	if $"Panel/ColorRect/compContainer/allbutton/topbutton/1button".button_pressed == true:
		numbers += 1
	if $"Panel/ColorRect/compContainer/allbutton/bottombutton/0button".button_pressed == true:
		numbers = numbers*10
	if $Panel/ColorRect/compContainer/allbutton/topbutton/negate.button_pressed == true:
		numbers = numbers*-1
	if $Panel/ColorRect/compContainer/allbutton/bottombutton/deci.button_pressed == true:
		numbers = numbers * 0.01
	
	if $Panel/ColorRect/compContainer/allbutton/topbutton/del.button_pressed == true:
		if !err_flag:
				if current_total > 0:
					current_total -= 1
				elif current_total <0:
					current_total += 1
	if $Panel/ColorRect/compContainer/allbutton/bottombutton/solve.button_pressed == true:
		if err_flag:
			$Panel/ColorRect/compContainer/DisplayContainer/MarginContainer/VBoxContainer/PrevWork.text ="E"
			
		else:
			
			if $Panel/ColorRect/compContainer/allbutton/topbutton/add.button_pressed == true:
					current_total+=numbers
			if $Panel/ColorRect/compContainer/allbutton/topbutton/sub.button_pressed == true:
					current_total-=numbers
			if $Panel/ColorRect/compContainer/allbutton/topbutton/mul.button_pressed == true:
					current_total*=numbers 
			if $Panel/ColorRect/compContainer/allbutton/topbutton/div.button_pressed == true:
					if numbers == 0:
						err_flag = true
						
					else :
						current_total /= numbers
	if $Panel/ColorRect/compContainer/allbutton/topbutton/clr.button_pressed == true:
		err_flag = false
		$Panel/ColorRect/compContainer/DisplayContainer/MarginContainer/VBoxContainer/PrevWork.text =""
		current_total = 0
	$Panel/ColorRect/compContainer/DisplayContainer/MarginContainer/VBoxContainer/Label.text = str(current_total)

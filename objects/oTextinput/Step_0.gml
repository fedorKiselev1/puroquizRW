if string_length(keyboard_string) > 0 {
	keyboard_string = ""
	input_string = string_insert(keyboard_lastchar, input_string, string_length(input_string) + 1)
}
if keyboard_check(vk_backspace) {
	t++
	if t >= 7 {
	input_string = string_delete(input_string, string_length(input_string), 1)
	t = 0
	}
}
if keyboard_check_released(vk_backspace) {
	t = 7
}
if string_width(input_string) > 1056 {
	input_string = string_insert("\n", input_string, string_length(input_string) - 1)
}
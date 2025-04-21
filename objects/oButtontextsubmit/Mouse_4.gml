if oTextinput.input_string == "42" {
	room_goto_next();
} else {
	wrong = true
	audio_play_sound(sndWarning, 10, 0)
}
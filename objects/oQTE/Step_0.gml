if keyboard_check_pressed(ord(options)) {
		audio_play_sound(sndCorrect, 1, 0)
		room_goto_next()
}
width -= 2
if width < 300 / 3 * 2 {
	drawmode = 1
	shake = random_range(-4,4)
	shake2 = random_range(-4,4)
} else {
	drawmode = 0
	shake = random_range(-1,1)
	shake2 = random_range(-1,1)
}
if width < 300 / 3 {
	drawmode = 2
	shake = random_range(-10,10)
	shake2 = random_range(-10,10)
}
if width < 0 {
	oWorld.KillHeart()
	width = 300
}

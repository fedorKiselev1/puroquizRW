if (confirm == true) {
	if correct == true {
		audio_play_sound(sndCorrect, 1, 0)
		room_goto_next()
	} else {
		oWorld.KillHeart()
	}
}
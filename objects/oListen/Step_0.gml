if (activated && f == 0) {
	f = 1
}
if (f == 1) {
	f = 2
	playing = Musiclisten(listen)
}
if (playing != noone) {
	if (!audio_is_playing(playing)) {
		audio_resume_sound(global.CurrentMusic)
		activated = false
		f = 0
	}
}
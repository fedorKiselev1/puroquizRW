t = 0
t2 = 0
Move = false
if room = MainMenu {
	if audio_is_playing(Death) {
		audio_stop_sound(Death)
	}
}
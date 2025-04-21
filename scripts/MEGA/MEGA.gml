function MusicMEGA(Mus, BPM, loop, offset){
	audio_stop_sound(global.CurrentMusic)
	global.CurrentMusic = audio_play_sound(Mus, 1, loop, 1, offset)
	global.CurrentMusicBPM = BPM
}

function Musiclisten(Mus) {
	audio_pause_sound(global.CurrentMusic)
	var listen = audio_play_sound(Mus, 1, 0)
	return listen
}
if scary == 1 {
	depth = -999
	if (alpha == 0) {
		sound = audio_play_sound(sndTransition, 1, 0)
	}
	alpha = lerp(alpha, 1.2, 0.02)
}
if alpha >= 1 {
	scary = 2
	alpha2 = lerp(alpha2, 1.2, 0.02)
}
if scary != 0 {
	view_yport = vY
	view_xport = vX
	view_xport = random_range(view_xport-alpha*12,view_xport+alpha*12)
	view_yport = random_range(view_yport-alpha*12,view_yport+alpha*12)
}
if sound != noone {
	if !audio_is_playing(sound) {
		room_goto(Room)
	}
}
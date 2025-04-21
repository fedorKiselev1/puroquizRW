image_alpha = (sin(t) + 1) / 2
t += pi / 50
if t >= pi * 2 {
	t = 0
}
if t == 0 {
	audio_play_sound(sndWarning2, 1, 0)
}
if die instance_destroy()
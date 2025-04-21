t++
if t >= 60 && timer > 0 {
	t = 0
	timer--
	audio_play_sound(sndTimer, 1, 0)
}
y = lerp(y, 260, 0.02)
if timer <= 0 {
	t2++
	if t2 % 3 == 0 {
		var parry = instance_create_layer(random_range(0,room_width), random_range(0,room_height), "Instances_Above", oParry)
		parry.image_xscale = 3
		parry.image_yscale = 3
		audio_play_sound(sndParry, 1, 0, 0.5, 0, 1.3)
		if t2 >= 100 {
			room_goto(HLDeath)
			audio_play_sound(sndDeath, 2, 0)
		}
	}
}

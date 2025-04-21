if !once {
	visible = true
	var parry = instance_create_layer(512+128, 608+48, "Instances_Above", oParry)
	parry.image_xscale = 2
	parry.image_yscale = 2
	audio_play_sound(sndParry, 1, 0)
	corr = instance_create_layer(512, 608, "Instances", oButtoninhell)
	corr.text = "Saddam Hussein's hiding place"
	corr.correct = true
	corr.image_xscale = 4
	corr.image_yscale = 1.5
	once = true
}

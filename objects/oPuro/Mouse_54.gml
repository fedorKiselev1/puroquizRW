if Mute != noone {
	instance_destroy(Mute)
	instance_destroy(Ask)
	Mute = noone
	Ask = noone
}
if (instance_position(mouse_x, mouse_y, oPuro)) {
	Mute = instance_create_layer(mouse_x,mouse_y,"Instances_Above",oMute)
	Mute.image_xscale = (84 / Mute.sprite_width)
	Mute.image_yscale = (84 / Mute.sprite_height)
	Mute.muted = Muted
	Mute.activated = Muted
	Ask = instance_create_layer(mouse_x,mouse_y + 84,"Instances_Above",oAskme)
	Ask.image_xscale = (84 / Ask.sprite_width)
	Ask.image_yscale = (84 / Ask.sprite_height)
	Ask.asked = Asked
	Ask.activated = Asked
}
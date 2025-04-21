if start {
	if t == 0 {
		MusicMEGA(sndScary, 0, 0, 0)
	}
	t++
	if t == 50 {
		instance_create_layer(BX+64, BY+48, "Instances_Above", oParry)
	}
	if t == 52 {
		HELL = instance_create_layer(BX, BY, "Instances", oButtonhell)
		HELL.image_xscale = 2
		HELL.image_yscale = 1.5
		HELL.text = "Hell pit"
		HELL.Room = HL1
	}
}
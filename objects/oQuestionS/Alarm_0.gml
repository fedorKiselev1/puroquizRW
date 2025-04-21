function SpawnButtons(buttontype) {
	for (i = 0; i < array_length(Answers); i++) {
		Butt = instance_create_layer(96 + Offsetx, 224 + Offsety, "Instances", buttontype)
		Butt.text = Answers[i][0]
		Butt.correct = Answers[i][1]
		Butt.image_xscale = 4.5
		Butt.image_yscale = 1.5
		Offsety += 128
		row++
		if row >= 4 {
			row = 0
			Offsety = 0
			Offsetx += 328
		}
	}
}
if image != noone {
	guess = instance_create_layer(416, 224, "Instances", oGuessimage)
	guess.sprite_index = image
	plus = instance_create_layer(416+198, 224+234, "Instances", oScale)
	plus.text = "+"
	minus = instance_create_layer(416+211, 224+234, "Instances", oScale)
	minus.text = "-"
	if imageTutorial {
		oGuessimage.tutorial = true
	}
}
if sound != noone {
	listen = instance_create_layer(416, 224, "Instances", oListen)
	listen.image_xscale = 2.3
	listen.image_yscale = 2.3
	listen.listen = sound
}
if hell = true {
	SpawnButtons(oButtoninhell)
} else {
	SpawnButtons(oButton)
}
if confirm {
	if(instance_exists(oGuessimage)) {
		if (text = "+" && oGuessimage.image_xscale < 1.5) {
			oGuessimage.image_xscale += 0.01
			oGuessimage.image_yscale += 0.01
		}
		if (text = "-" && oGuessimage.image_xscale > 0.9) {
			oGuessimage.image_xscale -= 0.01
			oGuessimage.image_yscale -= 0.01
		}
	}
	image_index = 1
}
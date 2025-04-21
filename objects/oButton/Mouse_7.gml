if (confirm == true) {
	if correct == true {
		switch(global.typeroom) {
			case "RW":
				global.Points++
				break;
			case "RWL":
				global.LPoints++
				break;
			case "DWG":
				global.DWPoints++
				break;
			case "VRT":
				global.VRTPoints++
				break;
			case "VRTV":
				global.VRTVPoints++
				break;
		}
	}
	room_goto_next()
}
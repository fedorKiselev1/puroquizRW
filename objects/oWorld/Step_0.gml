if !audio_is_playing(global.CurrentMusic) {
	global.CurrentMusic = noone
} else {
	
}

if room == MainMenu {
	if  t < 70 {
		t++
		if t == 50 {
			//var parry = instance_create_layer(950, 500, "Instances_Above", oParry)
			//parry.image_xscale = 2
			//parry.image_yscale = 2
			//audio_play_sound(sndParry, 1, 0)
			MusicMEGA(sndTitle, 140, 0, 3.38)
			if global.HLWin = 1 {
				instance_create_layer(1280, 160, "Instances_Above", oParry)
				var win = instance_create_layer(1280, 160, "Instances_Above", oWinner)
				win.image_xscale = 0.4
				win.image_yscale = 0.4
			}
			
			RWGQ = instance_create_layer(-256, 352, "Instances", oButtonMain)
			RWGQ.text = "Rain world gameplay quiz"
			RWGQ.image_xscale = 3
			RWGQ.image_yscale = 1.5
			
			RWLQ = instance_create_layer(-256, 480, "Instances", oButtonMain)
			RWLQ.text = "Rain world lore quiz"
			RWLQ.Room = RWLQuestion1
			RWLQ.image_xscale = 3
			RWLQ.image_yscale = 1.5
			
			DWGQ = instance_create_layer(-256, 608, "Instances", oButtonMain)
			DWGQ.text = "Downpour gameplay quiz"
			DWGQ.Room = DWGQuestion1
			DWGQ.image_xscale = 3
			DWGQ.image_yscale = 1.5
			
			VRT = instance_create_layer(448, 800, "Instances", oButtonMain)
			VRT.text = "variety quiz"
			VRT.Room = VRTQuestion1
			VRT.image_xscale = 3
			VRT.image_yscale = 1.5
			
			VRTV = instance_create_layer(736, 800, "Instances", oButtonMain)
			VRTV.text = "variety quiz vanilla"
			VRTV.Room = VRTVQuestion1
			VRTV.image_xscale = 3
			VRTV.image_yscale = 1.5
			
			HELL = instance_create_layer(1280, -128, "Instances", oTroll)
			
			SAVE = instance_create_layer(1376, 672, "Instances", oSave)
			SAVE.image_xscale = 2
			
			CRED = instance_create_layer(416, -96, "Instances", oButtonMain)
			CRED.text = "Credits"
			CRED.Room = Credits
			CRED.image_xscale = 3
			CRED.image_yscale = 1.5
			
			Move = true
		}
		if !instance_exists(oPuro) {
			if t == 53 {
				var puro = instance_create_layer(950, 500, "Instances", oPuro)
				puro.image_xscale = 2
				puro.image_yscale = 2
				puro.iXscale = 2
				puro.iYscale = 2
			}
		}
		if t == 60 {
			//Rendersign = true
			//var parry = instance_create_layer(800, 500, "Instances_Above", oParry)
			//audio_play_sound(sndParry, 1, 0, 0.8, 0, 0.9)
		}
		
	}
} else {
	Rendersign = false
}
if Move = true {
	t2++
	RWGQ.x = lerp(RWGQ.x, 100, 0.4)
	if t2 > 5 {
		RWLQ.x = lerp(RWLQ.x, 100, 0.4)
	}
	if t2 > 10 {
		DWGQ.x = lerp(DWGQ.x, 100, 0.4)
	}
	if t2 > 15 {
		VRT.y = lerp(VRT.y, 608, 0.4)
	}
	if t2 > 30 {
		HELL.y = lerp(HELL.y, 20, 0.05)
	}
	if t2 > 20 {
		SAVE.x = lerp(SAVE.x, 1216, 0.4)
	}
	if t2 > 25 {
		VRTV.y = lerp(VRTV.y, 608, 0.4)
	}
	if t2 > 30 {
		CRED.y = lerp(CRED.y, 64, 0.4)
	}
	if t2 == 20 {
		instance_create_layer(384-64, 384+32, "Instances_Above", oParry)
		audio_play_sound(sndParry, 1, 0, 0.75, 0, 0.85)
		RWGS = instance_create_layer(384-96, 384-16, "Instances", oRank)
		RWGS.Point = global.Points
		if (global.Points >= 10) {
			RWGS.scale = 0.3
		}
	}
	if t2 == 22 {
		instance_create_layer(384-64, 480+64, "Instances_Above", oParry)
		audio_play_sound(sndParry, 1, 0, 0.7, 0, 0.8)
		RWLS = instance_create_layer(384-96, 480+16, "Instances", oRank)
		RWLS.Point = global.LPoints
		if (global.LPoints >= 10) {
			RWLS.scale = 0.3
		}
	}
	if t2 == 24 {
		instance_create_layer(384-64, 608+64, "Instances_Above", oParry)
		audio_play_sound(sndParry, 1, 0, 0.65, 0, 0.75)
		DWGS = instance_create_layer(384-96, 608+16, "Instances", oRank)
		DWGS.Point = global.DWPoints
		if (global.DWPoints >= 10) {
			DWGS.scale = 0.3
		}
	}
	if t2 == 26 {
		instance_create_layer(780-96, 608+64, "Instances_Above", oParry)
		audio_play_sound(sndParry, 1, 0, 0.6, 0, 0.7)
		VRTS = instance_create_layer(780-128, 608+16, "Instances", oRank)
		VRTS.Point = global.VRTPoints
		if (global.VRTPoints >= 10) {
			VRTS.scale = 0.3
		}
	}
	if t2 == 28 {
		instance_create_layer(780-96+288, 608+64, "Instances_Above", oParry)
		audio_play_sound(sndParry, 1, 0, 0.5, 0, 0.6)
		VRTVS = instance_create_layer(780-128+288, 608+16, "Instances", oRank)
		VRTVS.Point = global.VRTVPoints
		if (global.VRTVPoints >= 10) {
			VRTVS.scale = 0.3
		}
	}
}
	
if room == RWQuestion1 {
	if t < 1 {
		t++
		MusicMEGA(sndRWtheme, 120, 1, 0)
		global.Points = 0
	}
}

if room == RWLQuestion1 {
	if t < 1 {
		t++
		MusicMEGA(sndRWtheme, 120, 1, 0)
		global.LPoints = 0
	}
}

if room == DWGQuestion1 {
	if t < 1 {
		t++
		MusicMEGA(sndDWtheme, 105, 1, 0)
		global.DWPoints = 0
	}
}

if room == VRTQuestion1 {
	if t < 1 {
		t++
		MusicMEGA(sndVRTtheme, 116, 1, 0)
		global.VRTPoints = 0
	}
}

if room == VRTVQuestion1 {
	if t < 1 {
		t++
		MusicMEGA(sndVRTVtheme, 0, 1, 0)
		global.VRTVPoints = 0
	}
}

if room == Credits {
	if t < 1 {
		t++
		MusicMEGA(sndCredits, 0, 1, 0)
	}
}
if room == HL1 {
	if t < 1 {
		t++
		lnx = 0
		lny = 0
		fF = 0
		MusicMEGA(sndHelltheme, 120, 1, 0)
		global.HLHealth = 3
		heart1 = instance_create_layer(1120, 64, "Instances", oHeart)
		heart2 = instance_create_layer(1216, 64, "Instances", oHeart)
		heart3 = instance_create_layer(1312, 64, "Instances", oHeart)
		hearts = [heart1, heart2, heart3]
	}
}
if room == HLWARNING {
	if t < 1800 {
		t++
	}
	if t < 2 {
		MusicMEGA(sndFnal, 0, 0, 0)
		War = instance_create_layer(0, 0, "Instances_Above", oWarning)
	}
	if t > 200 && t < 351 && t % 5 == 0 {
		Lon = instance_create_layer(lnx,lny,"Instances", oLong)
		lnx += oLong.sprite_width
		audio_play_sound(sndTroll, 0, 0)
		if lnx >= room_width {
			lny += oLong.sprite_height
			lnx = 0
		}
	}
	if t == 400 {
		repeat(global.HLHealth) {
			KillHeart()
		}
	}
	if t > 550 && t < 1000 && t % 7 = 0 {
		var Warn = instance_create_layer(0-407,random_range(0,room_height-152), "Instances_Middle", oWarning2)
		Warn.hspeed = random_range(10,20)
	}
	if t > 1200 && t < 1300 {
		War.y += 20
		oLong.move = true
	}
	if t == 1300 {
		oLong.die = true
		War.die = true
		instance_create_layer(0,0,"Instances_Above",oFinaltext)
	}
	if audio_sound_get_track_position(global.CurrentMusic) > 32 && fF == 0 {
		room_goto(HLFINAL)
		fF = 1
	}
}
if room = HLFINAL {
	if audio_sound_get_track_position(global.CurrentMusic) > 41.19 && fF == 1 {
		fF = 2
		instance_create_layer(1088, -200, "Instances", oBomb)
		
	}
}

if global.HLHealth = 0 && global.typeroom = "HL" {
	room_goto(HLDeath)
	Death = audio_play_sound(sndDeath, 2, 0)
	audio_stop_sound(global.CurrentMusic)
}

if room == HLDeath {
	if keyboard_check_pressed(ord("R")) {
		room_goto(MainMenu)
	}
}

function KillHeart() {
	if hearts != [] && global.HLHealth > 0 {
		hearts[global.HLHealth - 1].die = true
		audio_play_sound(sndLoseheart, 2, 0)
		audio_play_sound(sndMajorfracture, 1, 0)
		global.HLHealth--
	}
	 
}
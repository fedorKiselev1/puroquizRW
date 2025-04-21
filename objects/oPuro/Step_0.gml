function PlayOrMute(playingthesound, pitch, gain) {
	if (Muted == false) {
		audio_play_sound(playingthesound, 1, 0, gain, 0, pitch)
	}
}

if audio_sound_get_track_position(Music) < CheckLooped {
next_beat_time = beat_duration	
}

	
Music = global.CurrentMusic
if Music != Pmusic {
	if Music != noone {
		bpm = global.CurrentMusicBPM;
		beat_duration = 60/bpm;
		next_beat_time = audio_sound_get_track_position(Music) + beat_duration - audio_sound_get_track_position(Music) % beat_duration
	}
}
Pmusic = global.CurrentMusic
CheckLooped = audio_sound_get_track_position(Music)

if (Mute != noone) {
	Muted = Mute.muted 
}


if (instance_position(mouse_x, mouse_y, oUltimatebuttonparent)) {
	Disallow = true
} else {
	Disallow = false
}

if bpm != 0 {
	if Music != noone {
		if (audio_sound_get_track_position(Music) >= next_beat_time ) {
			next_beat_time += beat_duration
			if (holding == false) {
				image_xscale = image_xscale/Stretchx
				image_yscale = image_yscale*Stretchy
				y -= (sprite_height - iHeight) / 2
				y -= 40
				PlayOrMute(sndJump, random_range(0.8,1.2), 1)
			}
		}
	}
	
}
if (holding == false) {
	image_yscale = lerp(image_yscale, iYscale, 0.2)
	image_xscale = lerp(image_xscale, iYscale, 0.1)
	


	if (floorpos > y) {
		accel += 0.25 * (clamp(beat_duration, 0.1, 2) * 6)
		y += accel
	} else {
		accel = 0
		y = floorpos
	}
}
if cursor_sprite != sGun {
	if (instance_position(mouse_x, mouse_y, self) && Disallow == false) {
		if (mouse_check_button_pressed(mb_left)) {
			treading = false
			holding = true
			image_xscale = iXscale
			image_yscale = iYscale
			t = 0
			accel = 0
			sprite_index = sPuroGrab
			PlayOrMute(sndPick, 1, 1)
		}
	}
	mDiff = mX - mouse_x
	mX = mouse_x
	if (holding == true) {
		floorpos = y + 90
		x = clamp(mouse_x, sprite_width/2, room_width - sprite_width/2)
		y = clamp(mouse_y, 30, room_height - 121)
		image_angle = clamp(lerp(image_angle, mDiff, 0.4), -80, 80)
		if (mouse_check_button_released(mb_left)) {
			holding = false
			sprite_index = sPuro
			y += 90
			PlayOrMute(sndDrop, 1, 1)
			image_angle = 0
		}
	}
} else {
	if (instance_position(mouse_x, mouse_y, self) && Disallow == false) {
		if (mouse_check_button_pressed(mb_left)) {
			var parry = instance_create_layer(mouse_x, mouse_y, "Instances_Above", oParry)
			parry.image_xscale = 2
			parry.image_yscale = 2
			audio_play_sound(sndParry, 1, 0)
			instance_create_layer(mouse_x, mouse_y, "Instances_Above", oParried)
			oWorld.KillHeart()
		}
	}
}

if global.typeroom = "VRTV" {
	if sleept == 0 {
	sleept++
	} else {
		if audio_sound_get_track_position(global.CurrentMusic) > 6.3 {
			sleept++
			if sleept == 2 {
				image_index = 1
			}
			if sleept % 180 = 0 {
				instance_create_layer(x+10, y-45, "Instances_Above", oSleepy)
			}
			if holding {
				image_index = 0
				sleept = -80
			}
		}
	}
}

if (Ask != noone) {
	Asked = Ask.asked
}

if (Asked == true) {
	tAsk++
	if (tAsk > 0 && tAsk < 60) {
		Askscale = lerp(Askscale, 3, 0.2)
		Askrotate = lerp(Askrotate, 0, 0.2)
	}
	if (tAsk == 60) {
		if outta {outta2 = true}
		txtdraw = true
		if txtImage != noone {
			Image = instance_create_layer(x+100, floorpos-280, "Instances_Above", txtImage)
			Image.image_xscale = 0.3886331
			Image.image_yscale = 0.3886331
		}
	}
	if txtImage == noone {
		if (tAsk > 60 && tAsk < 60 + string_length(txt) * 2 + 1 && tAsk % 2 == 0) {
			txtscroll++
			txtreal += string_char_at(txt, txtscroll)
			if (string_char_at(txt, txtscroll) != " " || string_char_at(txt, txtscroll) != ".") {
				PlayOrMute(sndTalk, random_range(1.2 - pitchoffset,1.4 - pitchoffset), talkgain)
			}
		}
	} else {
		Disallow = true
		if instance_exists(Image) {
			if (tAsk > 60 && tAsk <= 120 && tAsk % 4 == 0) {
				Image.occlude += Image.sprite_width / 15
				PlayOrMute(sndTalk, random_range(1.2,1.4), 1)
			}
		}
		if tAsk > 120 {
			Disallow = false
		}
	}
} else {
	Disallow = false
	tAsk = 0
	txtdraw = false
	txtscroll = 0
	txtreal = ""
	Askscale = 0
	Askrotate = -180
	if (instance_exists(Image)) {
		Image.die = true
		Image = noone
	}
}

if outta2 {
t2++
if t2 > 100 {
	var parry = instance_create_layer(x, y, "Instances_Above", oParry)
	parry.image_xscale = 2
	parry.image_yscale = 2
	audio_play_sound(sndParry, 1, 0)
	instance_destroy()
}
}
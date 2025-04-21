iHeight = sprite_height
iXscale= image_xscale
iYscale = image_yscale
floorpos = y
t = 0
Stretchy = 1.25
Stretchx = 1.5
accel = 0
holding = false
mX = 0
mDiff = 0

Mute = noone
Disallow = false
Muted = false

outta = false
outta2 = false
t2 = 0

sleept = 0
talkgain = 1
pitchoffset = 0

treading = false

Ask = noone
Asked = false
tAsk = 0
Askscale = 0
Askrotate = -180
txtscroll = 0
txt = "i can only help with hell pit questions! :3"
txtreal = ""
txtdraw = false

txtImage = noone
Image = noone

Music = noone
Pmusic = noone
next_beat_time = noone
bpm = global.CurrentMusicBPM;
if bpm != 0 {beat_duration = 60/bpm;} else {beat_duration = 2147483647}

CheckLooped = audio_sound_get_track_position(Music)

if room = MainMenu {
	Asked = true
	txt = "Welcome to the quiz! you can drag me with left mouse button or access extra options with right mouse button."
}
Mute = noone
Ask = noone
Asked = false
tAsk = 0
txtdraw = false
txtscroll = 0
txtreal = ""
Askscale = 0
Askrotate = -180
outta = false
talkgain = 1
pitchoffset = 0
treading = false
Disallow = false
sprite_index = sPuro
if (instance_exists(Image)) {
	Image.die = true
	Image = noone
}

txtImage = noone

switch (room) {
	case MainMenu:
		txt = "Welcome to the quiz again! As always you can drag me with left mouse button or access extra options with right mouse button but you already know that, right?"
		break
	case HLDeath:
		Asked = true
		txt = "Welp.. better luck next time!"
		break
	case HL1:
		txt = "Ha! Simple geometrics! its 4."
		break
	case HL2:
		txt = "quite the conundrum, the result might be destructive."
		break
	case HL3:
		txt = "Where is the cocainer?"
		break
	case HL4:
		txt = "Thats gore...  gore of me..."
		break
	case HL5:
		txtImage = oHuus
		break
	case HL6:
		txt = "Try me bitch."
		break
	case HL7:
		txt = "Don't worry! There are no wrong answers!"
		break
	case HL8:
		txt = "Check out Matthew W. on youtube!"
		break
	case HL9:
		txt = "Check that game out on Steam! Do not worry if you havent heard of this game before."
		break
	case HL10:
		Asked = true
		txt = "QUICK PRESS THE BUTTON!!!!"
		break
	case HL11:
		txt = "Thats.. uhh.. i wanna be the best guy 1-4 on delicious fruit."
		break
	case HL12:
		Asked = true
		txt = "therefore i.. uhhhh.... ummm...."
		break
	case HL13:
		txt = "Oh yeah, thats Caves of Qud. We love caves of qud!"
		break
	case HL14:
		txt = "The highwayman only appears in Fallout 2, and as a mod in new vegas."
		break
	case HL15:
		txt = "Go by your heart, i believe in you!"
		break
	case HL16:
		txt = "I know about dark trash more than you, buddy, im a meta PVPer, buddy."
		break
	case HL17:
		txt = "you went far.. i havent heard of these questions in a while.."
		break
	case HL18:
		txt = "Oh, that might be from peaks of yore. The final mountain."
		break
	case HL19:
		txt = "ну что, безумный коновал? раздолбал свой мехос? ну и иди ты к бибуратам..."
		break
	case HL20:
		txt = "The end is nigh, my friend, I will be brave. Pick up the pieces of a dream I save..."
		break
	case HLWARNING:
		txt = "I don't know! I don't fucking know!"
		break
	case HLFINAL:
		txt = "OH! By the way, i have to go, REALLY URGENT!"
		outta = true
		break
	case HLWIN:
		txt = "Congrats! im so proud of you."
		break
	case Credits:
		txt = "Treadmill, treadmill, TREADMILLL!!!!"
		break
	default:
		txt = "i can only help with hell pit questions! :3"
		break
}

if global.typeroom = "VRTV" {
	txt = "Honnk.. shooooooooo.... Honnk.. shooooooooo.... mmm mmmmmmmmm mmmm mmmmm.........             hhhhhh hhhh nnn nnnnnn....."
	talkgain = 0.5
	pitchoffset = 0.4
} else {
	image_index = 0
	sleept = 0
}
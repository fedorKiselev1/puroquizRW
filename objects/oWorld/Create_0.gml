if instance_number(oWorld) > 1 instance_destroy()
ini_open("SaveData.ini")
global.Points = ini_read_real("Variables", "RWG", 0)
global.LPoints = ini_read_real("Variables", "RWL", 0)
global.DWPoints = ini_read_real("Variables", "DWG", 0)
global.VRTPoints = ini_read_real("Variables", "VRT", 0)
global.VRTVPoints = ini_read_real("Variables", "VRTV", 0)
global.HLWin = ini_read_real("Variables", "HL", 0)
global.HLHealth = 3
global.CurrentMusic = noone
global.CurrentMusicBPM = 140
global.typeroom = "main"

t = 0
t2 = 0

lnx = 0
lny = 0

fF = 0

Death = noone

Rendersign = false
Move = false
hearts = []
global.P_System=part_system_create_layer(layer, true)
global.Particle1 = part_type_create()
part_type_speed(global.Particle1, 3, 10, 0, 0)
part_type_scale(global.Particle1, 5, 5)
part_type_shape(global.Particle1, pt_shape_pixel)
part_type_color1(global.Particle1, c_red)
part_type_direction(global.Particle1, 0, 360, 0, 0)
part_type_gravity(global.Particle1, 0.4, -90)
part_type_alpha2(global.Particle1, 1, 0)
part_type_life(global.Particle1, 120, 160)
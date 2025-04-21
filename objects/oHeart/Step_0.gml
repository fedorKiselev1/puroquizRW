t += pi / 30
image_angle = sin(t) * 20
if t >= pi*2 t = 0
if die == true {
	part_particles_create(global.P_System, x, y, global.Particle1, 50);
	instance_destroy()
}
if !(global.typeroom == "HL" || global.typeroom == "FINAL") instance_destroy()
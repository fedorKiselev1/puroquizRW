t++
if t = 60 {
	rX = random_range(0, room_width)
	rY = random_range(0, room_height)
	repeat(40) {
		part_type_color1(global.Particle1, choose(c_red, c_aqua, c_green, c_lime, c_orange, c_purple, c_yellow))
		part_particles_create(global.P_System, rX, rY, global.Particle1, 1)
	}
	t = 0
	part_type_color1(global.Particle1, c_red)
}
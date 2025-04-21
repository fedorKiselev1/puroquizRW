repeat(40) {
	part_type_color1(global.Particle1, choose(c_red, c_aqua, c_green, c_lime, c_orange, c_purple, c_yellow))
	part_particles_create(global.P_System, mouse_x, mouse_y, global.Particle1, 1)
}
part_type_color1(global.Particle1, c_red)
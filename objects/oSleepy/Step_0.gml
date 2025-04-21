t++
y -= 1.5
x = lerp(x, iX+moveoffset, 0.1)
if t < 40 {
	image_alpha = lerp(image_alpha, 1.2, 0.1)
}
if t >= 100 {
	image_alpha -= 0.01
}

if image_alpha <= 0 {
instance_destroy()
}
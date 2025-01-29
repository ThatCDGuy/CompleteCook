draw_set_halign(fa_left)
draw_set_valign(fa_bottom)

x = 121 //+ irandom_range(-collect_shake, collect_shake)
y = 90 // + irandom_range(-collect_shake, collect_shake) + hud_posY

draw_sprite(spr_pizzascore, 0, x, y)

draw_set_font(global.scorefont)
draw_set_alpha(1)
draw_set_color(c_white)

var str = string(global.score)
var num = string_length(str)
var w = string_width(str)
var xx = x - (w / 2)

/*if lastcollect != sc
{
	color_array = array_create(num, 0)
	for (i = 0; i < array_length(color_array); i++)
		color_array[i] = choose(irandom(3))
	lastcollect = sc
}

shader_set(global.Pal_Shader)
draw_set_alpha(alpha)*/

var text_y = 0;

for (var i = 0; i < num; i++)
{
	var yy = (((i + 1) % 2) == 0) ? -5 : 0
	//var c = color_array[i]
	//pal_swap_set(spr_font_palette, c, false)
	draw_text(floor(xx), floor((y) + text_y + yy), string_char_at(str, i + 1))
	xx += (w / num)
}

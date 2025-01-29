if !global.panic
	exit;

draw_set_color(c_white)
draw_set_alpha(1)

draw_set_font(font_console)
var m = string(floor(global.panic_timer / 720))
var s = string(floor((global.panic_timer / 12) mod 60))

draw_text(screen_w / 2, screen_h - 100, m + ":" + s)
global.score += 10
instance_destroy()
scr_sound_3d(sfx_collect, x, y)
global.combo.timer = min(global.combo.timer + 10, 60)
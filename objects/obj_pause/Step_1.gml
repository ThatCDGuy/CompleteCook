with obj_shell
{
	if isOpen
		exit;
}

if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_enter))
{
	if (!pause)
	{
		pause = true
		pause_image = make_pause_image()
		instance_deactivate_all(true)
		audio_pause_all()
	}
	else
	{
		pause = false
		instance_activate_all()
		audio_resume_all()
	}
}

if !instance_exists(parent)
{
	instance_destroy()
}

if instance_exists(parent)
{
	x = parent.x
	y = parent.y
	stun = parent.state = e_states.stun or parent.state = e_states.scared or parent.state = e_states.grabbed
}

visible = !stun
/// @description Insert description here
// You can write your code in this editor
for(var i = 0; i < 25; i++)
{
instance_activate_all()
	if light_[i] != 0
	{
	instance_activate_all()
	instance_destroy(light_[i])
	instance_activate_all()
	}
}

instance_activate_all()
instance_destroy(lab_hider)
instance_destroy(lab_door)
instance_destroy(lab_generater)
instance_activate_all()
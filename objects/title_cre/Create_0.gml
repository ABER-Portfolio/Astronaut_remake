/// @description 타이틀 생성

////////////////////////////////////////////타이틀 생성////////////////////////////////////

instance_activate_all()
if instance_number(code) = 0
{
instance_create(x,y,code)	
}
	
instance_activate_all()
if instance_number(obj_camera) = 0
{
instance_create(0,0,obj_camera)
}
	
instance_activate_all()
if instance_number(obj_mouse) = 0
{
instance_create(x,y,obj_mouse)
}
	
instance_activate_all()
if instance_number(ui_inv) = 0
{
instance_create(x,y,ui_inv)
}
	
instance_activate_all()
if instance_number(monster_creator) = 0
{
instance_create(x,y,monster_creator)
}



instance_destroy()
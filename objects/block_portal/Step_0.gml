/// @description Insert description here
// You can write your code in this editor
move_snap(32,32);
depth = -(y+20);
image_angle += (0.1*angle);

if alpha_return = 0
{
	image_xscale -= 0.001
	image_yscale -= 0.001
	if alpha < 1
	{
	alpha += 0.01;
	};
}
else if alpha_return = 1
{
	image_xscale += 0.001
	image_yscale += 0.001
	if alpha > 0
	{
	alpha -= 0.01;
	};
};

t_plus_y += (t_t_plus_y - t_plus_y)*0.01;
plus_y += t_plus_y;




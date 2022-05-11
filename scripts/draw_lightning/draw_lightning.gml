///@description draw_lightning (x1, y1, x2, y2, xmin, xmax, ymin, ymax, color) 
// 0 1 2 3 4 5 6 7 
// ** 점 사이에 번개를 그립니다. 
///@param x1
///@param y1
///@param x2
///@param y2
///@param xmin
///@param xmax
///@param ymin
///@param ymax
///@param color
///@param duration(step)

// * @ x1 : 소스 X 
// * @ y1 : 소스 Y 
// * @ x2 : 목적지 X 
// * @ y2 : 목적지 Y 
// * @xmin : 최소 거리 스텝 (> 0) 
// * @xmax : 최대 거리 스텝 (> xmin) 
// * @ymin : 최소 "side"단계 (번개 "너비") 
// * @ymax : 최대 "side"단계 (번개 "너비") 
// * @ 그린 세그먼트 수를 반환합니다. 
//* / 

var i, r, c, l, dx, dy, sx, sy, px, py, cx, cy, alpha;
var view_wview_ = global._came_vx_p_w;
var view_hview_ = global._came_vy_p_h;

// avoid drawing outside view:
if (max(argument0, argument2) < view_xview() - 10) return 0
if (max(argument1, argument3) < view_yview() - 10) return 0
if (min(argument0, argument2) > view_xview() + view_wview_ + 10) return 0
if (min(argument1, argument3) > view_yview() + view_hview_ + 10) return 0
// find distance between points (used for loop)
l = point_distance(argument0, argument1, argument2, argument3)
if (l == 0) return 0
// main direction:
i = point_direction(argument0, argument1, argument2, argument3)
dx = lengthdir_x(1, i); dy = lengthdir_y(1, i)
// side direction:
i += 90
sx = lengthdir_x(1, i); sy = lengthdir_y(1, i)
// first point coordinates:
px = argument0; py = argument1
c = 0
i = random_range(argument4, argument5)
if point_distance(0,sparking_time,0,argument9)/5 < 1
{
alpha = point_distance(0,sparking_time,0,argument9)/5
}
else
{
alpha = 1
}


repeat (5000) 
{ // edit for line segment limit
    r = choose(-1, +1) * (argument6 + (argument7 - argument6)
        * lengthdir_y(random(1), i / l * 180)) // this part makes lightning "wider" near middle
    // current point coordinates:
    if (i < l) {
        cx = argument0 + dx * i + sx * r
        cy = argument1 + dy * i + sy * r
    } else { cx = argument2; cy = argument3 } // end point
    // line drawing code here:
    // can be just a single draw_line or something fancy like this:
	draw_set_color(argument8)
    draw_set_alpha(alpha * 0.3)
    draw_line_width_color(px, py, cx, cy, 3.7,argument8,c_white)
    draw_set_alpha(alpha * 0.7)
    draw_line_width_color(px, py, cx, cy, 1.3,argument8,c_white)
	draw_circle(argument2,argument3,alpha*2,false)
	
	
	
	//draw_set_color(c_white)
    //draw_set_alpha(elec_alpha * 0.6)
    //draw_line_width(px, py, cx, cy, 3.7)
    //draw_set_alpha(elec_alpha * 1)
    //draw_line_width(px, py, cx, cy, 1.3)
	draw_circle_color(argument2,argument3,elec_alpha*3,c_white,argument8,true)
    // exit condition:
    if (i >= l) break
    // update previous point coordinates:
    px = cx; py = cy
    // increments:
    c += 1
    i += random_range(argument4, argument5)
}
draw_set_alpha(alpha)
sparking_time ++

if sparking_time > argument9
{
sparking = 0
sparking_time = 0
elec_alpha = 2
}

return c
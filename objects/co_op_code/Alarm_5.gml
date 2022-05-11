/// @description Insert description here
// You can write your code in this editor
if server_port != "Port"
{
server = network_create_socket(network_socket_tcp);
global.server_open = true

if server_ip = "IP"
{
server_ip = "127.0.0.1"
}

var res = network_connect(server, server_ip, server_port);
		
	if (res >= 0) 
	{
	is_server = false
	obj_camera.setting_blind = 2
	room_goto(ingame)
	}
	else
	{
	var _text_bar = instance_create(x,y,draw_debug_text)
	_text_bar.text = "Can not find the server"
	}
instance_destroy(BG_blind)
}




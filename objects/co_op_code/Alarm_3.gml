/// @description Insert description here
// You can write your code in this editor
global.co_op_mode = 1
server = network_create_server(network_socket_tcp, server_port, 1);

if (server < 0) 
{
var _text_bar = instance_create(x,y,draw_debug_text)
_text_bar.text = "Can not open the server"
alarm[6] = 300
}

code.alarm[11] = 1;
var _get_code = "IP : "+string(global.my_ip)+"Port : "+string(co_op_code.server_port)

if global.language = 0
{
_text_bar_ip = instance_create(x,y,draw_debug_text)
_text_bar_ip.text = string(_get_code)+"\n(Press 'Q' to copy ip and port)"
}
if global.language = 1
{
_text_bar_ip = instance_create(x,y,draw_debug_text)
_text_bar_ip.text = string(_get_code)+"\n('Q' 키를 눌러 아이피와 포트를 복사할 수 있습니다)"
}

alarm[10] = 1800
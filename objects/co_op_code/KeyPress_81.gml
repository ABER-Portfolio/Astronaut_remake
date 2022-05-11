/// @description Insert description here
// You can write your code in this editor
if global.co_op_mode = 1
{
var _get_code = "IP : "+string(global.my_ip)+"Port : "+string(co_op_code.server_port)
clipboard_set_text(string(_get_code));
}
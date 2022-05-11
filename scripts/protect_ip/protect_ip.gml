///@param ip
///@param port
///@param read

var _ip = argument0
var _port = argument1
var _read = argument2


if _read = 0
{
var splitted_text = 0
splitted_text = string_explode(".",string(_ip));

for(var i = 0; i < 4; i ++)
{
	if string_length(splitted_text[i]) < 2
	{
	splitted_text[i] = string_insert(splitted_text[i],"00",1)
	}

	if string_length(splitted_text[i]) < 3
	{
	splitted_text[i] = string_insert(splitted_text[i],"0",2)
	}
}

var calculated = (splitted_text[3]+splitted_text[2]+splitted_text[1]+splitted_text[0]);
var retrun_val = string_insert(_port,calculated,0)
return string(retrun_val);
}

if _read = 1
{
var _calculated_num = string_delete(_ip,1,1)
var _port = string_delete(_ip,1,11)
if _port = 0
{
_port = 13634
}
if _port = 1
{
_port = 16572
}
if _port = 2
{
_port = 12184
}
if _port = 3
{
_port = 12367
}
if _port = 4
{
_port = 18468
}

var _fir_line = string_delete(_calculated_num,4,9)

var _sec_line = string_delete(_calculated_num,7,6)
_sec_line = string_delete(_calculated_num,1,3)

var _thi_line = string_delete(_calculated_num,1,6)
_thi_line = string_delete(_calculated_num,4,3)

var _fou_line = string_delete(_calculated_num,1,9)

var retrun_val = (string(_fir_line)+"."+string(_sec_line)+"."+string(_thi_line)+"."+string(_fou_line))

return retrun_val;
}


if _read = 2
{
var _calculated_num = string_delete(_ip,1,1)
var _port = string_delete(_ip,2,10)
if _port = 0
{
_port = 13634
}
if _port = 1
{
_port = 16572
}
if _port = 2
{
_port = 12184
}
if _port = 3
{
_port = 12367
}
if _port = 4
{
_port = 18468
}

return string(_port);
}
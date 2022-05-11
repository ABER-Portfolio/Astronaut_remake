///string_explode(delimiter,string)
///@param delimiter
///@param string
///string_explode(delimiter,string)
var arr;
var del = argument0;
var str = argument1 + del;
var len = string_length(del);
var ind = 0;
repeat (string_count(del, str)) {
var pos = string_pos(del, str) - 1;
arr[ind] = string_copy(str, 1, pos);
str = string_delete(str, 1, pos + len);
ind++;
}
return arr;
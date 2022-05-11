/// @description Insert description here
// You can write your code in this editor
if image_index = 0
{
_img_ble = $FF839A9C&$ffffff
}

if image_index = 18
{
_img_ble = $FF4141DD&$ffffff
}

if image_index = 36
{
_img_ble = $FF825766&$ffffff
}

if image_index = 54
{
_img_ble = $FFFFF0B2&$ffffff
}

if image_index = 72
{
_img_ble = $FF62B6FE&$ffffff
}

if image_index = 90
{
_img_ble = $FF59454D&$ffffff
}

if image_index = 108
{
_img_ble = $FF434B50&$ffffff
}

if image_index = 126
{
_img_ble = $FF92857E&$ffffff
}

if image_index = 144
{
_img_ble = $FF8894CD&$ffffff
}

if image_index = 162
{
_img_ble = $FF8885B2&$ffffff
}

if image_index = 217
{
_img_ble = $FFC2BCB2&$ffffff
}

if image_index = 236
{
_img_ble = $FFFF9838&$ffffff
}

var _bottom_m = position_meeting(x,y+32,fl_parents)
if !_bottom_m
{
draw_water = 1
}
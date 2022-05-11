///ore_break()

///////////////////////이펙트 생성////////////////////////
if global.co_op_mode = 1
{
global.stop_chunk = 1
}

if shake_block_time > 13
{
shake_block_time = 0
}

if sprite_index = item_sp
{

if item_num = 0 && block_num = -1 && global.pickaxe_power >= 67 //구리광석
{
txscale -= global.pickaxe_power/1400
tyscale -= global.pickaxe_power/1400
}

if item_num = 1 && block_num = -1 && global.pickaxe_power >= 100 //철광석
{
txscale -= global.pickaxe_power/1600
tyscale -= global.pickaxe_power/1600
}

if item_num = 2 && block_num = -1 && global.pickaxe_power >= 100 //금광석
{
txscale -= global.pickaxe_power/1600
tyscale -= global.pickaxe_power/1600
}

if item_num = 3 && block_num = -1 && global.pickaxe_power >= 113 //티타늄광석
{
txscale -= global.pickaxe_power/2000
tyscale -= global.pickaxe_power/2000
}

if item_num = 4 && block_num = -1 && global.pickaxe_power >= 133 //달광석
{
txscale -= global.pickaxe_power/2200
tyscale -= global.pickaxe_power/2200
}

if item_num = 5 && block_num = -1 && global.pickaxe_power >= 115 //코발트광석
{
txscale -= global.pickaxe_power/2400
tyscale -= global.pickaxe_power/2400
}

if item_num = 6 && block_num = -1 && global.pickaxe_power >= 165 //테란광석
{
txscale -= global.pickaxe_power/2600
tyscale -= global.pickaxe_power/2600
}

if item_num = 7 && block_num = -1 && global.pickaxe_power >= 15 //돌
{
txscale -= global.pickaxe_power/1000
tyscale -= global.pickaxe_power/1000
}

if item_num = 8 && block_num = -1 && global.pickaxe_power >= 20 //석탄
{
txscale -= global.pickaxe_power/1100
tyscale -= global.pickaxe_power/1100
}

if item_num = 9 && block_num = -1 && global.pickaxe_power >= 165 //오염된 테란광석
{
txscale -= global.pickaxe_power/2600
tyscale -= global.pickaxe_power/2600
}

if item_num = 10 && block_num = -1 && global.pickaxe_power >= 165 //피에물든 테란광석
{
txscale -= global.pickaxe_power/2600
tyscale -= global.pickaxe_power/2600
}

if item_num = 11 && block_num = -1 && global.pickaxe_power >= 25 && global.pickaxe_power <= 100  //얼음광석
{
txscale -= global.pickaxe_power/6000
tyscale -= global.pickaxe_power/6000
}

if item_num = 12 && block_num = -1 && global.pickaxe_power >= 200  //크로퍼광석
{
txscale -= global.pickaxe_power/2800
tyscale -= global.pickaxe_power/2800
}

if item_num = 13 && block_num = -1 && global.pickaxe_power >= 210  //올그리드 광석
{
txscale -= global.pickaxe_power/3000
tyscale -= global.pickaxe_power/3000
}

if item_num = 14 && block_num = -1 && global.pickaxe_power >= 220  //아이로직 광석
{
txscale -= global.pickaxe_power/3200
tyscale -= global.pickaxe_power/3200
}


if item_num = 15 && block_num = -1 && global.pickaxe_power >= 230  //코브 광석
{
txscale -= global.pickaxe_power/3400
tyscale -= global.pickaxe_power/3400
}



if item_num = 16 && block_num = -1 && global.pickaxe_power >= 100  //메테오 광석
{
txscale -= global.pickaxe_power/3600
tyscale -= global.pickaxe_power/3600
}


if item_num = 17 && block_num = -1 && global.pickaxe_power >= 30  //유황 광석
{
txscale -= global.pickaxe_power/1200
tyscale -= global.pickaxe_power/1200
}



if (item_num = 18 || item_num = 19 || item_num = 20) && block_num = -1 && global.pickaxe_power >= 40  //크리스탈 광석
{
txscale -= global.pickaxe_power/600
tyscale -= global.pickaxe_power/600
}





}
else if sprite_index = spr_tree
{
txscale -= global.axe_power/1200
tyscale -= global.axe_power/1200
}

if global.co_op_mode = 1
{
buffer_seek(chat_buffer, buffer_seek_start, 0);
buffer_write(chat_buffer, buffer_u8, DATA.BL_ORE_STATE);
buffer_write(chat_buffer, buffer_string, txscale);
buffer_write(chat_buffer, buffer_string, tyscale);
buffer_write(chat_buffer, buffer_string, x);
buffer_write(chat_buffer, buffer_string, y);
buffer_write(chat_buffer, buffer_string, auto_picking);
buffer_write(chat_buffer, buffer_string, co_op_code.is_server);

send_all(chat_buffer);
}
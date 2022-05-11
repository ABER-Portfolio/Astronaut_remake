chat_buffer = buffer_create(2, buffer_grow, 1);
if instance_number(obj_chatbar) > 1
{
instance_destroy()
}
else
{
image_speed = 0;
image_index = global.chat_activity;
image_alpha = 0.7
keyboard_string = ""

chat = array_create(10, "");
cli_num = 0;
for(var i = 0; i < 10; i++) 
{
chat[i] = "";
}

text = ""

alpha_1 = 1
alpha_2 = 0
}
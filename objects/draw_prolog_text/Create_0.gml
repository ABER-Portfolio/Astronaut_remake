/// @description Insert description here
// You can write your code in this editor
time = 0
image_alpha = 0


line = instance_number(draw_debug_text)
text_now = 0
text_cool_time = 0
des = 0

if global.language = 0
{
text[0] = "This is a world of apocalypse, where everything has changed due to environmental pollution"
text[1] = "There is poison in the air, and only outlaws exist"
text[2] = "The only purpose here is survival"
text[3] = "Protect yourself from other outlaws and sometimes survive by killing and plundering"
}

if global.language = 1
{
text[0] = "이곳은 환경 오염으로 모든 것이 변해버린 종말의 세계 입니다"
text[1] = "공기 중에 독이 퍼져있으며, 오직 무법자들만이 존재하고 있습니다"
text[2] = "이곳의 단 하나의 목적은 생존입니다"
text[3] = "다른 무법자들로 부터 자신을 지키고 때로는 죽이고 약탈하며 살아남으세요"
}



alarm[1] = 1
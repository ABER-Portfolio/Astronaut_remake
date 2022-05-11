///@description k_item_info_log(sprite_index,image_index)

///@param sprite_index
///@param image_index
///@param only_get_name

var argu0 = argument0
var argu1 = argument1
var argu2 = argument2

if argu0 != noone && argu0 != none_sprite && argu1 >= 0
{
if argu2 = false
{
	if instance_number(item_info_log) = 0
	{
	var item_desc_log = instance_create(-500,-500,item_info_log)
	item_desc_log.item_name = ""
	item_desc_log.item_desc = ""
	item_desc_log.rating = 0
	item_desc_log.height = 0
	item_desc_log.width = 0
	}
}
else
{
var item_desc_log = instance_create(-500,-500,item_info_log)
item_desc_log.item_name = ""
item_desc_log.item_desc = ""
item_desc_log.rating = 0
item_desc_log.height = 0
item_desc_log.width = 0
}

if global.language = 0
{
	if argu0 = spr_pickaxe_center_origin
	{
		if argu1 = 0
		{
		item_info_log.item_name = "Iron hammer"
		item_info_log.item_desc = " 3 damage \n 89% pickaxe power \n 67% axe power \n 7 knockback \n 52 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 1
		{
		item_info_log.item_name = "Copper pickaxe"
		item_info_log.item_desc = " 3 damage \n 100% pickaxe power \n 8 knockback \n 40 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 2
		{
		item_info_log.item_name = "Iron pickaxe"
		item_info_log.item_desc = " 4 damage \n 113% pickaxe power \n 9 knockback \n 38 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 3
		{
		item_info_log.item_name = "Golden pickaxe"
		item_info_log.item_desc = " 4 damage \n 105% pickaxe power \n 8 knockback \n 34 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 4
		{
		item_info_log.item_name = "Titanium pickaxe"
		item_info_log.item_desc = " 5 damage \n 115% pickaxe power \n 9 knockback \n 37 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 5
		{
		item_info_log.item_name = "Moon pickaxe"
		item_info_log.item_desc = " 8 damage \n 165% pickaxe power \n 7 knockback \n 52 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 6
		{
		item_info_log.item_name = "Cobalt pickaxe"
		item_info_log.item_desc = " 3 damage \n 133% pickaxe power \n 6 knockback \n 36 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 7
		{
		item_info_log.item_name = "Meteor pickaxe"
		item_info_log.item_desc = " 6 damage \n 120% pickaxe power \n 2 knockback \n 29 speed \n Automatic attack"
		item_info_log.rating = 2
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 8
		{
		item_info_log.item_name = "Ice crystal pickaxe"
		item_info_log.item_desc = " 7 damage \n 140% pickaxe power \n 3 knockback \n 32 speed \n Automatic attack"
		item_info_log.rating = 2
		item_info_log.height = 0
		item_info_log.width = 23
		}
		
		if argu1 = 9
		{
		item_info_log.item_name = "Polluted terran pickaxe"
		item_info_log.item_desc = " 1 damage \n 58% pickaxe power \n 8% axe power \n 3 knockback \n 13 speed \n Automatic attack \n Polluted crystal breakable"
		item_info_log.rating = 1
		item_info_log.height = 24
		item_info_log.width = 24
		}
		
		if argu1 = 10
		{
		item_info_log.item_name = "Iron drill"
		item_info_log.item_desc = " 1 damage \n 32% pickaxe power \n 8% axe power \n 1 knockback \n 7 speed \n Automatic attack \n increase finding cave +5%"
		item_info_log.rating = 0
		item_info_log.height = 20
		item_info_log.width = 10
		}
		
		if argu1 = 11
		{
		item_info_log.item_name = "Cobalt drill"
		item_info_log.item_desc = " 1 damage \n 33% pickaxe power \n 8% axe power \n 7 knockback \n 7 speed \n Automatic attack \n increase finding cave +5%"
		item_info_log.rating = 0
		item_info_log.height = 20
		item_info_log.width = 10
		}
		
		if argu1 = 12
		{
		item_info_log.item_name = "Terran pickaxe"
		item_info_log.item_desc = " 9 damage \n 200% pickaxe power \n 6 knockback \n 60 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 13
		{
		item_info_log.item_name = "Crimson pickaxe"
		item_info_log.item_desc = " 10 damage \n 143% pickaxe power \n 6 knockback \n 80 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 24
		}
		
		if argu1 = 14
		{
		item_info_log.item_name = "Portal gun"
		item_info_log.item_desc = " 4 knockback \n 30 speed \n Projectile weapon"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 3
		}
		
		if argu1 = 15
		{
		item_info_log.item_name = "Wooden hammer"
		item_info_log.item_desc = " 5 knockback \n 20 speed \n can break placed things"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 16
		{
		item_info_log.item_name = "Flash light"
		item_info_log.item_desc = " 1 damage \n 3 knockback \n 45 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 17
		{
		item_info_log.item_name = "Cropper pickaxe"
		item_info_log.item_desc = " 10 damage \n 210% pickaxe power \n 4 knockback \n 57 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 18
		{
		item_info_log.item_name = "Orgrid pickaxe"
		item_info_log.item_desc = " 12 damage \n 220% pickaxe power \n 3.89 knockback \n 45 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 19
		{
		item_info_log.item_name = "Irogic pickaxe"
		item_info_log.item_desc = " 13 damage \n 230% pickaxe power \n 4.2 knockback \n 50 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 20
		{
		item_info_log.item_name = "Corb pickaxe"
		item_info_log.item_desc = " 14 damage \n 240% pickaxe power \n 5 knockback \n 48 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 21
		{
		item_info_log.item_name = "Copper dagger"
		item_info_log.item_desc = " 5 damage \n 2 knockback \n 38 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 22
		{
		item_info_log.item_name = "Golden sword"
		item_info_log.item_desc = " 7 damage \n 4 knockback \n 68 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 23
		{
		item_info_log.item_name = "Iron sword"
		item_info_log.item_desc = " 7 damage \n 4 knockback \n 70 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 24
		{
		item_info_log.item_name = "Titanium sword"
		item_info_log.item_desc = " 8 damage \n 4 knockback \n 70 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 25
		{
		item_info_log.item_name = "Cobalt spear"
		item_info_log.item_desc = " 14 damage \n 6 knockback \n 95 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 14
		}
		
		if argu1 = 26
		{
		item_info_log.item_name = "Meteor spear"
		item_info_log.item_desc = " 15 damage \n 6 knockback \n 90 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 14
		}
		
		if argu1 = 27
		{
		item_info_log.item_name = "Moon spear"
		item_info_log.item_desc = " 16 damage \n 6 knockback \n 95 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 28
		{
		item_info_log.item_name = "Frozen sword"
		item_info_log.item_desc = " 17 damage \n 5 knockback \n 40 speed \n Automatic attack"
		item_info_log.rating = 2
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 29
		{
		item_info_log.item_name = "Polluted terran sickle"
		item_info_log.item_desc = " 22 damage \n 3 knockback \n 55 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 30
		{
		item_info_log.item_name = "Terran dagger"
		item_info_log.item_desc = " 22 damage \n 2 knockback \n 25 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 31
		{
		item_info_log.item_name = "Cropper dagger"
		item_info_log.item_desc = " 43 damage \n 2 knockback \n 24 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 32
		{
		item_info_log.item_name = "Orgrid sickle"
		item_info_log.item_desc = " 48 damage \n 5 knockback \n 50 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 33
		{
		item_info_log.item_name = "Corb spear"
		item_info_log.item_desc = " 55 damage \n 8 knockback \n 74 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 34
		{
		item_info_log.item_name = "True hero sword"
		item_info_log.item_desc = " 64 damage \n 6 knockback \n 47 speed \n Automatic attack"
		item_info_log.rating = 3
		item_info_log.height = 0
		item_info_log.width = 12
		}
		
		if argu1 = 35
		{
		item_info_log.item_name = "Copper combat axe"
		item_info_log.item_desc = " 5 damage \n 3 knockback  \n 47 speed \n 100% axe power"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 36
		{
		item_info_log.item_name = "Iron combat axe"
		item_info_log.item_desc = " 6 damage \n 3 knockback \n 50 speed \n 110% axe power"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 13
		}
		
		if argu1 = 37
		{
		item_info_log.item_name = "Golden combat axe"
		item_info_log.item_desc = " 6 damage \n 3 knockback \n 53 speed \n 108% axe power"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 13
		}
		
		if argu1 = 38
		{
		item_info_log.item_name = "Frozen combat axe"
		item_info_log.item_desc = " 8 damage \n 3 knockback \n 43 speed \n 112% axe power"
		item_info_log.rating = 2
		item_info_log.height = 0
		item_info_log.width = 13
		}
		
		if argu1 = 39
		{
		item_info_log.item_name = "Blade glove"
		item_info_log.item_desc = " 2 damage \n 1 knockback \n 30 speed"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 40
		{
		item_info_log.item_name = "Golden blade glove"
		item_info_log.item_desc = " 3 damage \n 1 knockback \n 30 speed"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 41
		{
		item_info_log.item_name = "Spike glove"
		item_info_log.item_desc = " 5 damage \n 2 knockback \n 29 speed"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 42
		{
		item_info_log.item_name = "Shadow spike glove"
		item_info_log.item_desc = " 7 damage \n 1 knockback \n 25 speed"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 43
		{
		item_info_log.item_name = "Blade nail glove"
		item_info_log.item_desc = " 9 damage \n 1 knockback \n 40 speed"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 44
		{
		item_info_log.item_name = "Iron spear"
		item_info_log.item_desc = " 13 damage \n 3 knockback \n 60 speed"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 45
		{
		item_info_log.item_name = "Golden spear"
		item_info_log.item_desc = " 15 damage \n 4 knockback \n 60 speed"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 11
		}
		
		if argu1 = 46
		{
		item_info_log.item_name = "Double blade sword"
		item_info_log.item_desc = " 14 damage \n 2 knockback \n 45 speed"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 17
		}
		
		if argu1 = 47
		{
		item_info_log.item_name = "Wooden bat"
		item_info_log.item_desc = " 22 damage \n 6 knockback \n 90 speed"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 48
		{
		item_info_log.item_name = "Iron bat"
		item_info_log.item_desc = " 29 damage \n 6 knockback \n 110 speed"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 49
		{
		item_info_log.item_name = "Copper axe"
		item_info_log.item_desc = " 3 damage \n 100% axe power \n 2 knockback \n 60 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 50
		{
		item_info_log.item_name = "Iron axe"
		item_info_log.item_desc = " 4 damage \n 110% axe power \n 3 knockback \n 60 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 51
		{
		item_info_log.item_name = "Golden axe"
		item_info_log.item_desc = " 3 damage \n 108% axe power \n 3 knockback \n 60 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 52
		{
		item_info_log.item_name = "Titanium axe"
		item_info_log.item_desc = " 5 damage \n 120% axe power \n 3 knockback \n 60 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 53
		{
		item_info_log.item_name = "Moon axe"
		item_info_log.item_desc = " 8 damage \n 145% axe power \n 4 knockback \n 60 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 54
		{
		item_info_log.item_name = "Cobalt axe"
		item_info_log.item_desc = " 6 damage \n 130% axe power \n 4 knockback \n 60 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 55
		{
		item_info_log.item_name = "Meteor axe"
		item_info_log.item_desc = " 7 damage \n 128% axe power \n 3.5 knockback \n 55 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 56
		{
		item_info_log.item_name = "Ice crystal axe"
		item_info_log.item_desc = " 6 damage \n 86% axe power \n 2 knockback \n 40 speed \n Automatic attack"
		item_info_log.rating = 2
		item_info_log.height = 0
		item_info_log.width = 5
		}
		
		if argu1 = 57
		{
		item_info_log.item_name = "Polluted terran axe"
		item_info_log.item_desc = " 2.7 damage \n 10% pickaxe power \n 60% axe power \n 1 knockback \n 30 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 18
		}
		
		if argu1 = 58
		{
		item_info_log.item_name = "Terran axe"
		item_info_log.item_desc = " 10 damage \n 150% axe power \n 6 knockback \n 60 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 59
		{
		item_info_log.item_name = "Crimson axe"
		item_info_log.item_desc = " 9 damage \n 20% pickaxe power \n 140% axe power \n 6 knockback \n 60 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 17
		}
		
		if argu1 = 60
		{
		item_info_log.item_name = "Cropper axe"
		item_info_log.item_desc = " 11.5 damage \n 160% axe power \n 6 knockback \n 60 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 61
		{
		item_info_log.item_name = "Orgrid axe"
		item_info_log.item_desc = " 12 damage \n 163% axe power \n 6 knockback \n 60 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 62
		{
		item_info_log.item_name = "Irogic pickaxe"
		item_info_log.item_desc = " 13 damage \n 170% axe power \n 4 knockback \n 60 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 63
		{
		item_info_log.item_name = "Corb pickaxe"
		item_info_log.item_desc = " 18 damage \n 175% axe power \n 5 knockback \n 60 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 64
		{
		item_info_log.item_name = "Pistol"
		item_info_log.item_desc = " 8 damage \n 1 knockback \n 25 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 65
		{
		item_info_log.item_name = "Revolver"
		item_info_log.item_desc = " 12 damage \n 2 knockback \n 30 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 66
		{
		item_info_log.item_name = "SMG"
		item_info_log.item_desc = " 5 damage \n 1 knockback \n 5 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 67
		{
		item_info_log.item_name = "Assault rifle"
		item_info_log.item_desc = " 11.5 damage \n 11.5 knockback \n 10 speed \n Automatic attack"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 68
		{
		item_info_log.item_name = "Semi automatic rifle"
		item_info_log.item_desc = " 11.5 damage \n 2 knockback \n 19 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 69
		{
		item_info_log.item_name = "Space pistol"
		item_info_log.item_desc = " 10 damage \n 0.45 knockback \n 10 speed"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 70
		{
		item_info_log.item_name = "Alien shotgun"
		item_info_log.item_desc = " 25 damage \n 6 knockback \n 45 speed"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 71
		{
		item_info_log.item_name = "Pump shotgun"
		item_info_log.item_desc = " 15 damage \n 5 knockback \n 60 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 72
		{
		item_info_log.item_name = "Alien revolver"
		item_info_log.item_desc = " 23 damage \n 3 knockback \n 32 speed"
		item_info_log.rating = 2
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 73
		{
		item_info_log.item_name = "Alien assault rifle"
		item_info_log.item_desc = " 17 damage \n 1.6 knockback \n 12 speed \n Automatic attack"
		item_info_log.rating = 2
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 74
		{
		item_info_log.item_name = "Iron hoe"
		item_info_log.item_desc = " 1 damage \n 1 knockback \n 38 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 75
		{
		item_info_log.item_name = "Telescope"
		item_info_log.item_desc = " 0 damage \n 0 knockback \n 30 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 76
		{
		item_info_log.item_name = "Bone"
		item_info_log.item_desc = " 1.5 damage \n 1 knockback \n 20 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 77
		{
		item_info_log.item_name = "Wooden bow"
		item_info_log.item_desc = " 1 damage \n 1 knockback \n 20 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 78
		{
		item_info_log.item_name = "Crimson wooden bow"
		item_info_log.item_desc = " 1.5 damage \n 1 knockback \n 20 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 79
		{
		item_info_log.item_name = "polluted wooden bow"
		item_info_log.item_desc = " 1.5 damage \n 1 knockback \n 20 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 80
		{
		item_info_log.item_name = "Improvised bow"
		item_info_log.item_desc = " 2 damage \n 1 knockback \n 20 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 81
		{
		item_info_log.item_name = "Crystal bow"
		item_info_log.item_desc = " 3.5 damage \n 1 knockback \n 20 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 82
		{
		item_info_log.item_name = "Wooden crossbow"
		item_info_log.item_desc = " 3 damage \n 1 knockback \n 40 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 83
		{
		item_info_log.item_name = "Crimson wooden crossbow"
		item_info_log.item_desc = " 3.5 damage \n 1 knockback \n 40 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 84
		{
		item_info_log.item_name = "Polluted wooden crossbow"
		item_info_log.item_desc = " 3.5 damage \n 1 knockback \n 40 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 25
		}
		
		if argu1 = 85
		{
		item_info_log.item_name = "Improvised crossbow"
		item_info_log.item_desc = " 4 damage \n 1 knockback \n 40 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 86
		{
		item_info_log.item_name = "Crystal crossbow"
		item_info_log.item_desc = " 5 damage \n 1 knockback \n 40 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 17
		}
		
		if argu1 = 87
		{
		item_info_log.item_name = "Torch"
		item_info_log.item_desc = " 1 damage \n 1 knockback \n 40 speed"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 17
		}
	}
	
	
	
	
	if argu0 = spr_placeable_center_origin
	{
		if argu1 = 0
		{
		item_info_log.item_name = "Oxygen pressure Plater"
		item_info_log.item_desc = " Placeable \n\n When stepped on, it supplies oxygen"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 1
		{
		item_info_log.item_name = "Explosion pressure Plater"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 30
		}
		
		if argu1 = 2
		{
		item_info_log.item_name = "Giant explosion pressure Plater"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 30
		}
		
		if argu1 = 2
		{
		item_info_log.item_name = "Unknown pressure Plater"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 30
		}
		
		if argu1 = 4
		{
		item_info_log.item_name = "Biome changer pressure Plater"
		item_info_log.item_desc = " Placeable \n\n Change all of biomes to original"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 5
		{
		item_info_log.item_name = "Wooden workbench"
		item_info_log.item_desc = " Placeable \n\n It makes you can craft more things"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 6
		{
		item_info_log.item_name = "Furnace"
		item_info_log.item_desc = " Placeable \n\n It makes you can make ingots"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 7
		{
		item_info_log.item_name = "Tree seed"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 8
		{
		item_info_log.item_name = "Crimson tree seed"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 9
		{
		item_info_log.item_name = "Polluted tree seed"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 10
		{
		item_info_log.item_name = "Bloody wooden workbench"
		item_info_log.item_desc = " Placeable \n\n It makes you can craft more things"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 11
		{
		item_info_log.item_name = "Polluted wooden workbench"
		item_info_log.item_desc = " Placeable \n\n It makes you can craft more things"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 12
		{
		item_info_log.item_name = "Purifier"
		item_info_log.item_desc = " Placeable \n\n It purify polluted water"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 13
		{
		item_info_log.item_name = "Recycler"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 14
		{
		item_info_log.item_name = "Wood chest"
		item_info_log.item_desc = " Placeable \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 15
		{
		item_info_log.item_name = "Living wood chest"
		item_info_log.item_desc = " Placeable \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 16
		{
		item_info_log.item_name = "Gold chest"
		item_info_log.item_desc = " Placeable \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 17
		{
		item_info_log.item_name = "Frozen chest"
		item_info_log.item_desc = " Placeable \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 18
		{
		item_info_log.item_name = "Demon chest"
		item_info_log.item_desc = " Placeable \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 19
		{
		item_info_log.item_name = "Croper chest"
		item_info_log.item_desc = " Placeable \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 20
		{
		item_info_log.item_name = "Lab chest"
		item_info_log.item_desc = " Placeable \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 21
		{
		item_info_log.item_name = "Sticky chest"
		item_info_log.item_desc = " Placeable \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 22
		{
		item_info_log.item_name = "Armored chest"
		item_info_log.item_desc = " Placeable \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 23
		{
		item_info_log.item_name = "Plastic chest"
		item_info_log.item_desc = " Placeable \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 24
		{
		item_info_log.item_name = "Green splant"
		item_info_log.item_desc = " Placeable \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 25
		{
		item_info_log.item_name = "Crimson splant"
		item_info_log.item_desc = " Placeable \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 26
		{
		item_info_log.item_name = "Polluted splant"
		item_info_log.item_desc = " Placeable \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 27
		{
		item_info_log.item_name = "Frozen splant"
		item_info_log.item_desc = " Placeable \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 28
		{
		item_info_log.item_name = "Fungi splant"
		item_info_log.item_desc = " Placeable \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 29
		{
		item_info_log.item_name = "TNT"
		item_info_log.item_desc = " Placeable \n\n Low radius"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 30
		{
		item_info_log.item_name = "C4"
		item_info_log.item_desc = " Placeable \n\n Medium radius"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 30
		}
		
		if argu1 = 31
		{
		item_info_log.item_name = "Iron sprinkler"
		item_info_log.item_desc = " Placeable \n\n It helps growing for normal seeds"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 32
		{
		item_info_log.item_name = "Polluted terran sprinkler"
		item_info_log.item_desc = " Placeable \n\n It helps growing for polluted seeds"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 33
		{
		item_info_log.item_name = "Crimson sprinkler"
		item_info_log.item_desc = " Placeable \n\n It helps growing for crimson seeds"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 34
		{
		item_info_log.item_name = "Red paint"
		item_info_log.item_desc = " Placeable \n\n It make the ground red"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 35
		{
		item_info_log.item_name = "Orange paint"
		item_info_log.item_desc = " Placeable \n\n It make the ground orange"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 36
		{
		item_info_log.item_name = "Yellow paint"
		item_info_log.item_desc = " Placeable \n\n It make the ground orange"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 37
		{
		item_info_log.item_name = "Green paint"
		item_info_log.item_desc = " Placeable \n\n It make the ground green"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 38
		{
		item_info_log.item_name = "Blue paint"
		item_info_log.item_desc = " Placeable \n\n It make the ground blue"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 39
		{
		item_info_log.item_name = "Indigo paint"
		item_info_log.item_desc = " Placeable \n\n It make the ground indige"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 40
		{
		item_info_log.item_name = "Purple paint"
		item_info_log.item_desc = " Placeable \n\n It make the ground purple"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 41
		{
		item_info_log.item_name = "Black paint"
		item_info_log.item_desc = " Placeable \n\n It make the ground black"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 42
		{
		item_info_log.item_name = "Cut cactus"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 43
		{
		item_info_log.item_name = "Crimson cut cactus"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 44
		{
		item_info_log.item_name = "Polluted cut cactus"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 45
		{
		item_info_log.item_name = "Normal biome landfill"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 25
		}
		
		if argu1 = 46
		{
		item_info_log.item_name = "Crimson biome landfill"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 25
		}
		
		if argu1 = 47
		{
		item_info_log.item_name = "Polluted biome landfill"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 25
		}
		
		if argu1 = 48
		{
		item_info_log.item_name = "Ice biome landfill"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 49
		{
		item_info_log.item_name = "Desert biome landfill"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 25
		}
		
		if argu1 = 50
		{
		item_info_log.item_name = "Polluted desert biome landfill"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 51
		{
		item_info_log.item_name = "Crimson desert biome landfill"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 52
		{
		item_info_log.item_name = "Polluted ice biome landfill"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 53
		{
		item_info_log.item_name = "Crimson ice biome landfill"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 54
		{
		item_info_log.item_name = "Meteorite biome landfill"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 25
		}
		
		if argu1 = 55
		{
		item_info_log.item_name = "Concrete landfill"
		item_info_log.item_desc = " Placeable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 17
		}
		
		if argu1 = 56
		{
		item_info_log.item_name = "Research table"
		item_info_log.item_desc = " Placeable \n Can research the items with this\n and can get intelligence coin"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 25
		}
	}
	
	
	
	
	
	
	
	if argu0 = spr_potion_center_origin
	{
		if argu1 = 0
		{
		item_info_log.item_name = "Medical potion"
		item_info_log.item_desc = " Usable\n 60s potion cooltime \n\n HP +20"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 30
		}
		
		if argu1 = 1
		{
		item_info_log.item_name = "Great medical potion"
		item_info_log.item_desc = " Usable\n 60s potion cooltime \n\n HP +40"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 2
		{
		item_info_log.item_name = "Medical syringe"
		item_info_log.item_desc = " Usable\n 8s potion cooltime \n\n HP +10"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 3
		{
		item_info_log.item_name = "Poison resistance potion"
		item_info_log.item_desc = " Usable\n 60s potion cooltime \n\n Poison resistance 60s"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 65
		}
		
		if argu1 = 4
		{
		item_info_log.item_name = "Poison resistance medical syringe"
		item_info_log.item_desc = " Usable\n 8s potion cooltime \n\n Poisoning addiction treatment"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 84
		}
		
		if argu1 = 5
		{
		item_info_log.item_name = "Radiation resistance potion"
		item_info_log.item_desc = " Usable\n 60s potion cooltime \n\n Radiation resistance 60s"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 68
		}
		
		if argu1 = 6
		{
		item_info_log.item_name = "Radiation resistance medical syringe"
		item_info_log.item_desc = " Usable\n 8s potion cooltime \n\n Radiation addiction treatment"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 95
		}
		
		if argu1 = 7
		{
		item_info_log.item_name = "Damage increase potion"
		item_info_log.item_desc = " Usable\n 10s potion cooltime \n\n Damage increase 60s"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 43
		}
		
		if argu1 = 8
		{
		item_info_log.item_name = "Swing speed increase potion"
		item_info_log.item_desc = " Usable\n 10s potion cooltime \n\n Speed increase 60s"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 50
		}
		
		if argu1 = 9
		{
		item_info_log.item_name = "Painkiller potion"
		item_info_log.item_desc = " Usable\n 30s potion cooltime \n\n HP recovery 20s"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 10
		{
		item_info_log.item_name = "Night vision potion"
		item_info_log.item_desc = " Usable\n 20s potion cooltime \n\n Night vision 120s"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 45
		}
		
		if argu1 = 11
		{
		item_info_log.item_name = "Movement speed increase potion"
		item_info_log.item_desc = " Usable\n 60s potion cooltime \n\n Movement speed increase 60s"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 50
		}
		
		if argu1 = 12
		{
		item_info_log.item_name = "oxygen syringe"
		item_info_log.item_desc = " Usable\n 8s potion cooltime \n\n oxygen +80"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 13
		{
		item_info_log.item_name = "Oxygen healing syringe"
		item_info_log.item_desc = " Usable\n 30s potion cooltime \n\n healing oxygen 120s \n It has side effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 43
		}
		
		if argu1 = 14
		{
		item_info_log.item_name = "Hyper syringe"
		item_info_log.item_desc = " Usable\n 170s potion cooltime \n\n Ignore low oxygen 120s\n Ignore low hp 120s \n It has side effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 15
		{
		item_info_log.item_name = "Purified water"
		item_info_log.item_desc = " Usable\n 10s potion cooltime \n\n Stemina +3"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 16
		{
		item_info_log.item_name = "Polluted water"
		item_info_log.item_desc = " Usable\n 10s potion cooltime\n\n Stemina +2\n poisoning +20"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 17
		{
		item_info_log.item_name = "Wormhole potion"
		item_info_log.item_desc = " Usable\n 10s potion cooltime\n\n Teleport to the random place"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 18
		{
		item_info_log.item_name = "Shine potion"
		item_info_log.item_desc = " Usable\n 40s potion cooltime\n\n Make you shine for 180s"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 19
		{
		item_info_log.item_name = "Cactus fruit"
		item_info_log.item_desc = " Usable\n\n HP +20\n Stemina +1"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 20
		{
		item_info_log.item_name = "Crimson cactus fruit"
		item_info_log.item_desc = " Usable\n\n HP -10\n Stemina -1\n Radiation -5"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 21
		{
		item_info_log.item_name = "Polluted cactus fruit"
		item_info_log.item_desc = " Usable\n\n HP -10\n Stemina -1\n Poisoning -5"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
	}
	
	
	
	
	
	
	
	
	if argu0 = spr_clothes_center_origin
	{
		if argu1 = 0
		{
		item_info_log.item_name = "Hazmat suit"
		item_info_log.item_desc = "Protects poisoning air \n Right click to Equippable"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 1
		{
		item_info_log.item_name = "Radiation hazmat suit"
		item_info_log.item_desc = " Defense power +1 \n Right click to Equippable \n\n It protects you from radiation \n Recycling able"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 2
		{
		item_info_log.item_name = "Coldness hazmat suit"
		item_info_log.item_desc = " Defense power +3 \n Right click to Equippable \n\n It protects you from coldness \n Recycling able"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 3
		{
		item_info_log.item_name = "Poison hazmat suit"
		item_info_log.item_desc = " Defense power +2 \n Right click to Equippable \n\n It protects you from poison \n Recycling able"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 55
		}
		
		if argu1 = 4
		{
		item_info_log.item_name = "High temperature hazmat suit"
		item_info_log.item_desc = " Defense power +2 \n Right click to equippable \n\n It protects you from high temperature \n Recycling able"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 75
		}
	}
	
	
	
	if argu0 = spr_accessories
	{
		if argu1 = 0
		{
		item_info_log.item_name = "Survival guide book"
		item_info_log.item_desc = " Max HP +40 \n Max stemina +4 \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 1
		{
		item_info_log.item_name = "Slime jelly ring"
		item_info_log.item_desc = " Damage increase +5% \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 2
		{
		item_info_log.item_name = "Iron ring"
		item_info_log.item_desc = " Defense power +1 \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 3
		{
		item_info_log.item_name = "Ruby ring"
		item_info_log.item_desc = " Max HP +10 \n Max oxygen +10 \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 4
		{
		item_info_log.item_name = "Terran ring"
		item_info_log.item_desc = " Max HP +10 \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 5
		{
		item_info_log.item_name = "Crimson ring"
		item_info_log.item_desc = " Radiation decrease speed +10% \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 6
		{
		item_info_log.item_name = "Polluted ring"
		item_info_log.item_desc = " Poisoning decrease speed +10% \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 7
		{
		item_info_log.item_name = "Meteorite ring"
		item_info_log.item_desc = " Temperature recovery speed +10% \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 8
		{
		item_info_log.item_name = "Bone ring"
		item_info_log.item_desc = " Damage increase +5% \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 9
		{
		item_info_log.item_name = "Cobalt ring"
		item_info_log.item_desc = " Max oxygen +10 \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 10
		{
		item_info_log.item_name = "Shining ring"
		item_info_log.item_desc = " Make you shine \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 11
		{
		item_info_log.item_name = "Copper ring"
		item_info_log.item_desc = " Max oxygen +5 \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 12
		{
		item_info_log.item_name = "Frozen ring"
		item_info_log.item_desc = " Max stemina +3 \n Max oxygen +3 \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 13
		{
		item_info_log.item_name = "Green splant ring"
		item_info_log.item_desc = " Defense power +1 \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 14
		{
		item_info_log.item_name = "Crimson splant ring"
		item_info_log.item_desc = " Decrease radiation damage 10% \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 15
		{
		item_info_log.item_name = "Polluted splant ring"
		item_info_log.item_desc = " Decrease poisoning damage 10% \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 16
		{
		item_info_log.item_name = "Frozen splant ring"
		item_info_log.item_desc = " Max stemina +1 \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 17
		{
		item_info_log.item_name = "Fungi splant ring"
		item_info_log.item_desc = " Max stemina +2 \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 18
		{
		item_info_log.item_name = "Work groves"
		item_info_log.item_desc = " Ignore poisoning and radiation\n when you break blocks \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 19
		{
		item_info_log.item_name = "Small case"
		item_info_log.item_desc = " Max inventory size +9 \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 20
		{
		item_info_log.item_name = "Giant case"
		item_info_log.item_desc = " Max inventory size +18 \n Possession effect"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
	}












	if argu0 = spr_inv_item || argu0 = spr_only_items
	{
		if argu1 = 0
		{
		item_info_log.item_name = "Copper ore"
		item_info_log.item_desc = " Meltable"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 1
		{
		item_info_log.item_name = "Copper ingot"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 2
		{
		item_info_log.item_name = "Iron ore"
		item_info_log.item_desc = " Meltable"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 3
		{
		item_info_log.item_name = "Iron ingot"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 4
		{
		item_info_log.item_name = "Gold ore"
		item_info_log.item_desc = " Meltable"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 5
		{
		item_info_log.item_name = "Gold ingot"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 6
		{
		item_info_log.item_name = "Titanium ore"
		item_info_log.item_desc = " Meltable"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 7
		{
		item_info_log.item_name = "Titanium ingot"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 8
		{
		item_info_log.item_name = "Moon ore"
		item_info_log.item_desc = " Meltable"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 9
		{
		item_info_log.item_name = "Moon ingot"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 10
		{
		item_info_log.item_name = "Cobalt ore"
		item_info_log.item_desc = " Meltable"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 11
		{
		item_info_log.item_name = "Cobalt ingot"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 12
		{
		item_info_log.item_name = "Terran ore"
		item_info_log.item_desc = " Meltable"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 13
		{
		item_info_log.item_name = "Terran ingot"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 14
		{
		item_info_log.item_name = "Cobblestone"
		item_info_log.item_desc = " "
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 15
		{
		item_info_log.item_name = "Cobblestone"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 16
		{
		item_info_log.item_name = "Coal"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 17
		{
		item_info_log.item_name = "Coal"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 18
		{
		item_info_log.item_name = "Polluted terran ore"
		item_info_log.item_desc = " Meltable"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 12
		}
		
		if argu1 = 19
		{
		item_info_log.item_name = "Polluted terran ingot"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 15
		}
		
		if argu1 = 20
		{
		item_info_log.item_name = "Crimson ore"
		item_info_log.item_desc = " Meltable"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 11
		}
		
		if argu1 = 21
		{
		item_info_log.item_name = "Crimson ingot"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 14
		}
		
		if argu1 = 22
		{
		item_info_log.item_name = "Ice crystal"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}
		
		if argu1 = 23
		{
		item_info_log.item_name = "Ice crystal"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 13
		}
		
		if argu1 = 24
		{
		item_info_log.item_name = "Cropper ore"
		item_info_log.item_desc = " Meltable"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 25
		{
		item_info_log.item_name = "Cropper ingot"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 26
		{
		item_info_log.item_name = "Orgrid ore"
		item_info_log.item_desc = " Meltable"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 27
		{
		item_info_log.item_name = "Orgrid ingot"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 28
		{
		item_info_log.item_name = "Irogic ore"
		item_info_log.item_desc = " Meltable"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 29
		{
		item_info_log.item_name = "Irogic ingot"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 30
		{
		item_info_log.item_name = "Corb ore"
		item_info_log.item_desc = " Meltable"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 31
		{
		item_info_log.item_name = "Corb ingot"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 32
		{
		item_info_log.item_name = "Meteor ore"
		item_info_log.item_desc = " Meltable"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 33
		{
		item_info_log.item_name = "Meteor ingot"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 34
		{
		item_info_log.item_name = "Sulfer ore"
		item_info_log.item_desc = " Meltable"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 35
		{
		item_info_log.item_name = "Sulfer powder"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 36
		{
		item_info_log.item_name = "Wood"
		item_info_log.item_desc = " Recycling able"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 37
		{
		item_info_log.item_name = "Crimson wood"
		item_info_log.item_desc = " Recycling able"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 38
		{
		item_info_log.item_name = "Polluted wood"
		item_info_log.item_desc = " Recycling able"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 39
		{
		item_info_log.item_name = "Crystal"
		item_info_log.item_desc = " Research able"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 40
		{
		item_info_log.item_name = "5.56mm ammo"
		item_info_log.item_desc = " Recycling able"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 41
		{
		item_info_log.item_name = "9mm ammo"
		item_info_log.item_desc = " Recycling able"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 42
		{
		item_info_log.item_name = "Slug ammo"
		item_info_log.item_desc = " Recycling able"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 43
		{
		item_info_log.item_name = "Paracord"
		item_info_log.item_desc = " It makes you can climb up\n when you fall down to the hole"
		item_info_log.rating = 0
		item_info_log.height = -20
		item_info_log.width = 30
		}
		
		if argu1 = 44
		{
		item_info_log.item_name = "Tech trash"
		item_info_log.item_desc = " Recycling able"
		item_info_log.rating = 0
		item_info_log.height = -20
		item_info_log.width = 30
		}
		
		if argu1 = 45
		{
		item_info_log.item_name = "Unknown keycard"
		item_info_log.item_desc = " Lab keycard \n Recycling able"
		item_info_log.rating = 0
		item_info_log.height = -20
		item_info_log.width = 30
		}
		
		if argu1 = 46
		{
		item_info_log.item_name = "Green keycard"
		item_info_log.item_desc = " Lab keycard \n Recycling able"
		item_info_log.rating = 0
		item_info_log.height = -20
		item_info_log.width = 30
		}
		
		if argu1 = 47
		{
		item_info_log.item_name = "Blue keycard"
		item_info_log.item_desc = " Lab keycard \n Recycling able"
		item_info_log.rating = 0
		item_info_log.height = -20
		item_info_log.width = 30
		}
		
		if argu1 = 48
		{
		item_info_log.item_name = "Red keycard"
		item_info_log.item_desc = " Lab keycard \n Recycling able"
		item_info_log.rating = 0
		item_info_log.height = -20
		item_info_log.width = 30
		}
		
		if argu1 = 49
		{
		item_info_log.item_name = "Slime jelly"
		item_info_log.item_desc = " Research able \n Recycling able"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 30
		}
		
		if argu1 = 50
		{
		item_info_log.item_name = "Worm tooth"
		item_info_log.item_desc = " Research able"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 30
		}
		
		if argu1 = 51
		{
		item_info_log.item_name = "Propane tank"
		item_info_log.item_desc = " Recycling able"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 30
		}
		
		if argu1 = 52
		{
		item_info_log.item_name = "Bone key"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 30
		}
		
		if argu1 = 53
		{
		item_info_log.item_name = "Key"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 30
		}
		
		if argu1 = 54
		{
		item_info_log.item_name = "Charcoal"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 30
		}
		
		if argu1 = 55
		{
		item_info_log.item_name = "Gunpowder"
		item_info_log.item_desc = " Recycling able"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 30
		}

		if argu1 = 56
		{
		item_info_log.item_name = "Plastic"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 30
		}
		
		if argu1 = 57
		{
		item_info_log.item_name = "Crude oil"
		item_info_log.item_desc = "Need to refine to use it"
		item_info_log.rating = 0
		item_info_log.height = -20
		item_info_log.width = 30
		}
		
		if argu1 = 58
		{
		item_info_log.item_name = "Refined oil"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 30
		}
		
		if argu1 = 59
		{
		item_info_log.item_name = "Wooden ladder"
		item_info_log.item_desc = " It makes you can climb up\n when you fall down to the hole\n But, sometimes you can fall again \n Recycling able"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 40
		}
		
		if argu1 = 60
		{
		item_info_log.item_name = "intelligence coin"
		item_info_log.item_desc = " You can trade items \n with researcher using this item"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 30
		}
		
		if argu1 = 61
		{
		item_info_log.item_name = "Scrap"
		item_info_log.item_desc = " You can get this when you failed the reserching \n Recycling able"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 60
		}
		
		if argu1 = 62
		{
		item_info_log.item_name = "Wooden arrow"
		item_info_log.item_desc = " Low projectile speed \n Low accuracy \n Recycling"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 20
		}
		
		if argu1 = 63
		{
		item_info_log.item_name = "Stone arrow"
		item_info_log.item_desc = " High projectile speed \n Medium accuracy \n Recycling"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}
		
		if argu1 = 64
		{
		item_info_log.item_name = "Iron arrow"
		item_info_log.item_desc = " High projectile speed \n High accuracy \n Recycling"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}
		
		if argu1 = 65
		{
		item_info_log.item_name = "Plastic arrow"
		item_info_log.item_desc = " Very high projectile speed \n Low accuracy \n Recycling"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}
		
		if argu1 = 66
		{
		item_info_log.item_name = "Crystal arrow"
		item_info_log.item_desc = " High projectile speed \n High accuracy \n Recycling"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}
		
		if argu1 = 67
		{
		item_info_log.item_name = "Explosive arrow"
		item_info_log.item_desc = " Normal projectile speed \n High accuracy \n Recycling"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}
	}
}





if global.language = 1
{
	if argu0 = spr_pickaxe_center_origin
	{
		if argu1 = 0
		{
		item_info_log.item_name = "쇠망치"
		item_info_log.item_desc = " 3 데미지 \n 89% 곡괭이 파워 \n 67% ax \n 7 넉백 \n 52 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 1
		{
		item_info_log.item_name = "구리 곡괭이"
		item_info_log.item_desc = " 3 damage \n 100% 곡괭이 파워 \n 8 넉백 \n 40 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 2
		{
		item_info_log.item_name = "철 곡괭이"
		item_info_log.item_desc = " 4 damage \n 113% 곡괭이 파워 \n 9 넉백 \n 38 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 3
		{
		item_info_log.item_name = "금 곡괭이"
		item_info_log.item_desc = " 4 damage \n 105% 곡괭이 파워 \n 8 넉백 \n 34 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 4
		{
		item_info_log.item_name = "티타늄 곡괭이"
		item_info_log.item_desc = " 5 damage \n 115% 곡괭이 파워 \n 9 넉백 \n 37 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 5
		{
		item_info_log.item_name = "달의 곡괭이"
		item_info_log.item_desc = " 8 damage \n 165% 곡괭이 파워 \n 7 넉백 \n 52 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 6
		{
		item_info_log.item_name = "코발트 곡괭이"
		item_info_log.item_desc = " 3 damage \n 133% 곡괭이 파워 \n 6 넉백 \n 36 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 7
		{
		item_info_log.item_name = "메테오 곡괭이"
		item_info_log.item_desc = " 6 damage \n 120% 곡괭이 파워 \n 2 넉백 \n 29 속도 \n 자동공격"
		item_info_log.rating = 2
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 8
		{
		item_info_log.item_name = "아이스 크리스탈 곡괭이"
		item_info_log.item_desc = " 7 damage \n 140% 곡괭이 파워 \n 3 넉백 \n 32 속도 \n 자동공격"
		item_info_log.rating = 2
		item_info_log.height = 0
		item_info_log.width = 23
		}
		
		if argu1 = 9
		{
		item_info_log.item_name = "오염된 테란 곡괭이"
		item_info_log.item_desc = " 1 damage \n 58% 곡괭이 파워 \n 8% 도끼 파워 \n 3 넉백 \n 13 속도 \n 자동공격 \n 오염된 크리스탈 breakable"
		item_info_log.rating = 1
		item_info_log.height = 24
		item_info_log.width = 24
		}
		
		if argu1 = 10
		{
		item_info_log.item_name = "철 드릴"
		item_info_log.item_desc = " 1 damage \n 32% 곡괭이 파워 \n 8% 도끼 파워 \n 1 넉백 \n 7 속도 \n 자동공격 \n 동굴 발견 확률 +5%"
		item_info_log.rating = 0
		item_info_log.height = 20
		item_info_log.width = 10
		}
		
		if argu1 = 11
		{
		item_info_log.item_name = "코발트 드릴"
		item_info_log.item_desc = " 1 damage \n 33% 곡괭이 파워 \n 8% 도끼 파워 \n 7 넉백 \n 7 속도 \n 자동공격 \n 동굴 발견 확률 +5%"
		item_info_log.rating = 0
		item_info_log.height = 20
		item_info_log.width = 10
		}
		
		if argu1 = 12
		{
		item_info_log.item_name = "테란 곡괭이"
		item_info_log.item_desc = " 9 damage \n 200% 곡괭이 파워 \n 6 넉백 \n 60 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 13
		{
		item_info_log.item_name = "크림슨 곡괭이"
		item_info_log.item_desc = " 10 damage \n 143% 곡괭이 파워 \n 6 넉백 \n 80 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 24
		}
		
		if argu1 = 14
		{
		item_info_log.item_name = "Portal gun"
		item_info_log.item_desc = " 4 넉백 \n 30 속도 \n Projectile weapon"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 3
		}
		
		if argu1 = 15
		{
		item_info_log.item_name = "나무 망치"
		item_info_log.item_desc = " 5 넉백 \n 20 속도  \n 설치된 물건을 부술 수 있습니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 16
		{
		item_info_log.item_name = "손전등"
		item_info_log.item_desc = " 1 damage \n 3 넉백 \n 45 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 17
		{
		item_info_log.item_name = "크로퍼 곡괭이"
		item_info_log.item_desc = " 10 damage \n 210% 곡괭이 파워 \n 4 넉백 \n 57 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 18
		{
		item_info_log.item_name = "오르그리드 곡괭이"
		item_info_log.item_desc = " 12 damage \n 220% 곡괭이 파워 \n 3.89 넉백 \n 45 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 19
		{
		item_info_log.item_name = "아이로직 곡괭이"
		item_info_log.item_desc = " 13 damage \n 230% 곡괭이 파워 \n 4.2 넉백 \n 50 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 20
		{
		item_info_log.item_name = "코르브 곡괭이"
		item_info_log.item_desc = " 14 damage \n 240% 곡괭이 파워 \n 5 넉백 \n 48 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 21
		{
		item_info_log.item_name = "구리 단검"
		item_info_log.item_desc = " 5 damage \n 2 넉백 \n 38 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 22
		{
		item_info_log.item_name = "금 검"
		item_info_log.item_desc = " 7 damage \n 4 넉백 \n 68 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 23
		{
		item_info_log.item_name = "철 검"
		item_info_log.item_desc = " 7 damage \n 4 넉백 \n 70 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 24
		{
		item_info_log.item_name = "티타늄 검"
		item_info_log.item_desc = " 8 damage \n 4 넉백 \n 70 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 25
		{
		item_info_log.item_name = "코발트 창"
		item_info_log.item_desc = " 14 damage \n 6 넉백 \n 95 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 14
		}
		
		if argu1 = 26
		{
		item_info_log.item_name = "메테오 창"
		item_info_log.item_desc = " 15 damage \n 6 넉백 \n 90 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 14
		}
		
		if argu1 = 27
		{
		item_info_log.item_name = "달의 창"
		item_info_log.item_desc = " 16 damage \n 6 넉백 \n 95 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 28
		{
		item_info_log.item_name = "얼어붙은 검"
		item_info_log.item_desc = " 17 damage \n 5 넉백 \n 40 속도 \n 자동공격"
		item_info_log.rating = 2
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 29
		{
		item_info_log.item_name = "오염된 테란 낫"
		item_info_log.item_desc = " 22 damage \n 3 넉백 \n 55 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 30
		{
		item_info_log.item_name = "테란 단검"
		item_info_log.item_desc = " 22 damage \n 2 넉백 \n 25 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 31
		{
		item_info_log.item_name = "크로퍼 단검"
		item_info_log.item_desc = " 43 damage \n 2 넉백 \n 24 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 32
		{
		item_info_log.item_name = "오르그리드 낫"
		item_info_log.item_desc = " 48 damage \n 5 넉백 \n 50 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 33
		{
		item_info_log.item_name = "코르브 창"
		item_info_log.item_desc = " 55 damage \n 8 넉백 \n 74 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 34
		{
		item_info_log.item_name = "진정한 영웅의 검"
		item_info_log.item_desc = " 64 damage \n 6 넉백 \n 47 속도 \n 자동공격"
		item_info_log.rating = 3
		item_info_log.height = 0
		item_info_log.width = 12
		}
		
		if argu1 = 35
		{
		item_info_log.item_name = "구리 컴뱃 도끼"
		item_info_log.item_desc = " 5 damage \n 3 넉백  \n 47 속도 \n 100% 도끼 파워"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 36
		{
		item_info_log.item_name = "철 컴뱃 도끼"
		item_info_log.item_desc = " 6 damage \n 3 넉백 \n 50 속도 \n 110% 도끼 파워"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 13
		}
		
		if argu1 = 37
		{
		item_info_log.item_name = "금 컴뱃 도끼"
		item_info_log.item_desc = " 6 damage \n 3 넉백 \n 53 속도 \n 108% 도끼 파워"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 13
		}
		
		if argu1 = 38
		{
		item_info_log.item_name = "얼어붙은 컴뱃 도끼"
		item_info_log.item_desc = " 8 damage \n 3 넉백 \n 43 속도 \n 112% 도끼 파워"
		item_info_log.rating = 2
		item_info_log.height = 0
		item_info_log.width = 13
		}
		
		if argu1 = 39
		{
		item_info_log.item_name = "칼날 장갑"
		item_info_log.item_desc = " 2 damage \n 1 넉백 \n 30 속도"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 40
		{
		item_info_log.item_name = "금 칼날 장갑"
		item_info_log.item_desc = " 3 damage \n 1 넉백 \n 30 속도"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 41
		{
		item_info_log.item_name = "스파이크 장갑"
		item_info_log.item_desc = " 5 damage \n 2 넉백 \n 29 속도"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 42
		{
		item_info_log.item_name = "그림자 스파이크 장갑"
		item_info_log.item_desc = " 7 damage \n 1 넉백 \n 25 속도"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 43
		{
		item_info_log.item_name = "칼날 발톱 장갑"
		item_info_log.item_desc = " 9 damage \n 1 넉백 \n 40 속도"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 44
		{
		item_info_log.item_name = "철 창"
		item_info_log.item_desc = " 13 damage \n 3 넉백 \n 60 속도"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 45
		{
		item_info_log.item_name = "금 창"
		item_info_log.item_desc = " 15 damage \n 4 넉백 \n 60 속도"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 11
		}
		
		if argu1 = 46
		{
		item_info_log.item_name = "더블 블레이드 검"
		item_info_log.item_desc = " 14 damage \n 2 넉백 \n 45 속도"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 17
		}
		
		if argu1 = 47
		{
		item_info_log.item_name = "나무 몽둥이"
		item_info_log.item_desc = " 22 damage \n 6 넉백 \n 90 속도"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 48
		{
		item_info_log.item_name = "철 몽둥이"
		item_info_log.item_desc = " 29 damage \n 6 넉백 \n 110 속도"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 49
		{
		item_info_log.item_name = "구리 도끼"
		item_info_log.item_desc = " 3 damage \n 100% 도끼 파워 \n 2 넉백 \n 60 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 50
		{
		item_info_log.item_name = "철 도끼"
		item_info_log.item_desc = " 4 damage \n 110% 도끼 파워 \n 3 넉백 \n 60 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 51
		{
		item_info_log.item_name = "금 도끼"
		item_info_log.item_desc = " 3 damage \n 108% 도끼 파워 \n 3 넉백 \n 60 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 52
		{
		item_info_log.item_name = "티타늄 도끼"
		item_info_log.item_desc = " 5 damage \n 120% 도끼 파워 \n 3 넉백 \n 60 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 53
		{
		item_info_log.item_name = "달의 도끼"
		item_info_log.item_desc = " 8 damage \n 145% 도끼 파워 \n 4 넉백 \n 60 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 54
		{
		item_info_log.item_name = "코발트 도끼"
		item_info_log.item_desc = " 6 damage \n 130% 도끼 파워 \n 4 넉백 \n 60 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 55
		{
		item_info_log.item_name = "메테오 도끼"
		item_info_log.item_desc = " 7 damage \n 128% 도끼 파워 \n 3.5 넉백 \n 55 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 56
		{
		item_info_log.item_name = "아이스 크리스탈 도끼"
		item_info_log.item_desc = " 6 damage \n 86% 도끼 파워 \n 2 넉백 \n 40 속도 \n 자동공격"
		item_info_log.rating = 2
		item_info_log.height = 0
		item_info_log.width = 5
		}
		
		if argu1 = 57
		{
		item_info_log.item_name = "오염된 테란 도끼"
		item_info_log.item_desc = " 2.7 damage \n 10% 곡괭이 파워 \n 60% 도끼 파워 \n 1 넉백 \n 30 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 18
		}
		
		if argu1 = 58
		{
		item_info_log.item_name = "테란 도끼"
		item_info_log.item_desc = " 10 damage \n 150% 도끼 파워 \n 6 넉백 \n 60 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 59
		{
		item_info_log.item_name = "크림슨 도끼"
		item_info_log.item_desc = " 9 damage \n 20% 곡괭이 파워 \n 140% 도끼 파워 \n 6 넉백 \n 60 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 17
		}
		
		if argu1 = 60
		{
		item_info_log.item_name = "크로퍼 도끼"
		item_info_log.item_desc = " 11.5 damage \n 160% 도끼 파워 \n 6 넉백 \n 60 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 61
		{
		item_info_log.item_name = "오르그리드 도끼"
		item_info_log.item_desc = " 12 damage \n 163% 도끼 파워 \n 6 넉백 \n 60 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 62
		{
		item_info_log.item_name = "아이로직 곡괭이"
		item_info_log.item_desc = " 13 damage \n 170% 도끼 파워 \n 4 넉백 \n 60 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 63
		{
		item_info_log.item_name = "코르브 곡괭이"
		item_info_log.item_desc = " 18 damage \n 175% 도끼 파워 \n 5 넉백 \n 60 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 64
		{
		item_info_log.item_name = "권총"
		item_info_log.item_desc = " 8 damage \n 1 넉백 \n 25 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 65
		{
		item_info_log.item_name = "리볼버"
		item_info_log.item_desc = " 12 damage \n 2 넉백 \n 30 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 66
		{
		item_info_log.item_name = "SMG"
		item_info_log.item_desc = " 5 damage \n 1 넉백 \n 5 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 67
		{
		item_info_log.item_name = "돌격 소총"
		item_info_log.item_desc = " 11.5 damage \n 11.5 넉백 \n 10 속도 \n 자동공격"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 68
		{
		item_info_log.item_name = "반 자동 소총"
		item_info_log.item_desc = " 11.5 damage \n 2 넉백 \n 19 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 69
		{
		item_info_log.item_name = "우주 권총"
		item_info_log.item_desc = " 10 damage \n 0.45 넉백 \n 10 속도"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 70
		{
		item_info_log.item_name = "에일리언 산탄총"
		item_info_log.item_desc = " 25 damage \n 6 넉백 \n 45 속도"
		item_info_log.rating = 1
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 71
		{
		item_info_log.item_name = "펌프 샷건"
		item_info_log.item_desc = " 15 damage \n 5 넉백 \n 60 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 72
		{
		item_info_log.item_name = "에일리언 리볼버"
		item_info_log.item_desc = " 23 damage \n 3 넉백 \n 32 속도"
		item_info_log.rating = 2
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 73
		{
		item_info_log.item_name = "에일리언 돌격 소총"
		item_info_log.item_desc = " 17 damage \n 1.6 넉백 \n 12 속도 \n 자동공격"
		item_info_log.rating = 2
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 74
		{
		item_info_log.item_name = "철 괭이"
		item_info_log.item_desc = " 1 damage \n 1 넉백 \n 38 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 75
		{
		item_info_log.item_name = "망원경"
		item_info_log.item_desc = " 0 damage \n 0 넉백 \n 30 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 76
		{
		item_info_log.item_name = "뼈다귀"
		item_info_log.item_desc = " 1.5 damage \n 1 넉백 \n 20 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 77
		{
		item_info_log.item_name = "나무 활"
		item_info_log.item_desc = " 1 damage \n 1 넉백 \n 20 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 78
		{
		item_info_log.item_name = "크림슨 나무 활"
		item_info_log.item_desc = " 1.5 damage \n 1 넉백 \n 20 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 79
		{
		item_info_log.item_name = "오염된 나무 활"
		item_info_log.item_desc = " 1.5 damage \n 1 넉백 \n 20 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 80
		{
		item_info_log.item_name = "쇠 활"
		item_info_log.item_desc = " 2 damage \n 1 넉백 \n 20 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 81
		{
		item_info_log.item_name = "크리스탈 활"
		item_info_log.item_desc = " 3.5 damage \n 1 넉백 \n 20 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 82
		{
		item_info_log.item_name = "나무 석궁"
		item_info_log.item_desc = " 3 damage \n 1 넉백 \n 40 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 83
		{
		item_info_log.item_name = "크림슨 나무 석궁"
		item_info_log.item_desc = " 3.5 damage \n 1 넉백 \n 40 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 84
		{
		item_info_log.item_name = "오염된 나무 석궁"
		item_info_log.item_desc = " 3.5 damage \n 1 넉백 \n 40 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 85
		{
		item_info_log.item_name = "급조 석궁"
		item_info_log.item_desc = " 4 damage \n 1 넉백 \n 40 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 86
		{
		item_info_log.item_name = "크리스탈 석궁"
		item_info_log.item_desc = " 5 damage \n 1 넉백 \n 40 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 87
		{
		item_info_log.item_name = "횃불"
		item_info_log.item_desc = " 1 damage \n 1 넉백 \n 40 속도"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
	}
	
	
	
	
	if argu0 = spr_placeable_center_origin
	{
		if argu1 = 0
		{
		item_info_log.item_name = "산소 발판"
		item_info_log.item_desc = " 설치 가능 \n\n 밟고 있을때 산소를 제공해줍니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 1
		{
		item_info_log.item_name = "Explosion pressure Plater"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 30
		}
		
		if argu1 = 2
		{
		item_info_log.item_name = "Giant explosion pressure Plater"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 30
		}
		
		if argu1 = 2
		{
		item_info_log.item_name = "알수없는 pressure Plater"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 30
		}
		
		if argu1 = 4
		{
		item_info_log.item_name = "바이옴 changer pressure Plater"
		item_info_log.item_desc = " 설치 가능 \n\n Change all of 바이옴s to original"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 5
		{
		item_info_log.item_name = "나무 workbench"
		item_info_log.item_desc = " 설치 가능 \n\n It makes you can craft m광석 things"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 6
		{
		item_info_log.item_name = "용광로"
		item_info_log.item_desc = " 설치 가능 \n\n 광석을 녹일 수 있습니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 7
		{
		item_info_log.item_name = "나무 묘목"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 8
		{
		item_info_log.item_name = "크림슨 나무 묘목"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 9
		{
		item_info_log.item_name = "오염된 나무 묘목"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 10
		{
		item_info_log.item_name = "Bloody 나무 workbench"
		item_info_log.item_desc = " 설치 가능 \n\n It makes you can craft m광석 things"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 11
		{
		item_info_log.item_name = "오염된 나무 workbench"
		item_info_log.item_desc = " 설치 가능 \n\n It makes you can craft m광석 things"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 12
		{
		item_info_log.item_name = "정수기"
		item_info_log.item_desc = " 설치 가능 \n\n 오염된 물을 정수 시켜줍니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 13
		{
		item_info_log.item_name = "재활용기"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 14
		{
		item_info_log.item_name = "나무 상자"
		item_info_log.item_desc = " 설치 가능 \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 15
		{
		item_info_log.item_name = "살아있는 나무 상자"
		item_info_log.item_desc = " 설치 가능 \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 16
		{
		item_info_log.item_name = "황금 상자"
		item_info_log.item_desc = " 설치 가능 \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 17
		{
		item_info_log.item_name = "얼어붙은 상자"
		item_info_log.item_desc = " 설치 가능 \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 18
		{
		item_info_log.item_name = "데몬 상자"
		item_info_log.item_desc = " 설치 가능 \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 19
		{
		item_info_log.item_name = "크로퍼 상자"
		item_info_log.item_desc = " 설치 가능 \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 20
		{
		item_info_log.item_name = "연구소 상자"
		item_info_log.item_desc = " 설치 가능 \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 21
		{
		item_info_log.item_name = "끈적이는 상자"
		item_info_log.item_desc = " 설치 가능 \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 22
		{
		item_info_log.item_name = "아머드 상자"
		item_info_log.item_desc = " 설치 가능 \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 23
		{
		item_info_log.item_name = "플라스틱 상자"
		item_info_log.item_desc = " 설치 가능 \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 24
		{
		item_info_log.item_name = "그린 스플랜트"
		item_info_log.item_desc = " 설치 가능 \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 25
		{
		item_info_log.item_name = "크림슨 스플랜트"
		item_info_log.item_desc = " 설치 가능 \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 26
		{
		item_info_log.item_name = "오염된 스플랜트"
		item_info_log.item_desc = " 설치 가능 \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 27
		{
		item_info_log.item_name = "얼어붙은 스플랜트"
		item_info_log.item_desc = " 설치 가능 \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 28
		{
		item_info_log.item_name = "균사 스플랜트"
		item_info_log.item_desc = " 설치 가능 \n\n"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 10
		}
		
		if argu1 = 29
		{
		item_info_log.item_name = "TNT"
		item_info_log.item_desc = " 설치 가능 \n\n 낮은 반경"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 30
		{
		item_info_log.item_name = "C4"
		item_info_log.item_desc = " 설치 가능 \n\n 중간 반경"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 30
		}
		
		if argu1 = 31
		{
		item_info_log.item_name = "철 스프링클러"
		item_info_log.item_desc = " 설치 가능 \n\n 씨앗이 자라도록 도와줍니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 32
		{
		item_info_log.item_name = "오염된 테란 스프링클러"
		item_info_log.item_desc = " 설치 가능 \n\n 오염된 씨앗이 자라도록 도와줍니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 33
		{
		item_info_log.item_name = "크림슨 스프링클러"
		item_info_log.item_desc = " 설치 가능 \n\n 크림슨 씨앗이 자라도록 도와줍니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 34
		{
		item_info_log.item_name = "레드 페인트"
		item_info_log.item_desc = " 설치 가능 \n\n 땅을 빨간색으로 칠합니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 35
		{
		item_info_log.item_name = "오랜지 페인트"
		item_info_log.item_desc = " 설치 가능 \n\n 땅을 주황색으로 칠합니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 36
		{
		item_info_log.item_name = "옐로우 페인트"
		item_info_log.item_desc = " 설치 가능 \n\n 땅을 노란색으로 칠합니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 37
		{
		item_info_log.item_name = "그린 페인트"
		item_info_log.item_desc = " 설치 가능 \n\n 땅을 초록색으로 칠합니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 38
		{
		item_info_log.item_name = "블루 페인트"
		item_info_log.item_desc = " 설치 가능 \n\n 땅을 파란색으로 칠합니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 39
		{
		item_info_log.item_name = "인디고 페인트"
		item_info_log.item_desc = " 설치 가능 \n\n 땅을 남색으로 칠합니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 40
		{
		item_info_log.item_name = "퍼플 페인트"
		item_info_log.item_desc = " 설치 가능 \n\n 땅을 보라색으로 칠합니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 41
		{
		item_info_log.item_name = "블랙 페인트"
		item_info_log.item_desc = " 설치 가능 \n\n 땅을 검은색으로 칠합니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 42
		{
		item_info_log.item_name = "잘린 선인장"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 43
		{
		item_info_log.item_name = "크림슨 잘린 선인장"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 44
		{
		item_info_log.item_name = "오염된 잘린 선인장"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 45
		{
		item_info_log.item_name = "일반 바이옴 매립지"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 25
		}
		
		if argu1 = 46
		{
		item_info_log.item_name = "크림슨 바이옴 매립지"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 25
		}
		
		if argu1 = 47
		{
		item_info_log.item_name = "오염된 바이옴 매립지"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 25
		}
		
		if argu1 = 48
		{
		item_info_log.item_name = "아이스 바이옴 매립지"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 49
		{
		item_info_log.item_name = "사막 바이옴 매립지"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 25
		}
		
		if argu1 = 50
		{
		item_info_log.item_name = "오염된 사막 바이옴 매립지"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 51
		{
		item_info_log.item_name = "크림슨 사막 바이옴 매립지"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 52
		{
		item_info_log.item_name = "오염된 아이스 바이옴 매립지"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 53
		{
		item_info_log.item_name = "크림슨 아이스 바이옴 매립지"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 54
		{
		item_info_log.item_name = "메테오 바이옴 매립지"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 25
		}
		
		if argu1 = 55
		{
		item_info_log.item_name = "콘크리트 매립지"
		item_info_log.item_desc = " 설치 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 17
		}
		
		if argu1 = 56
		{
		item_info_log.item_name = "연구대"
		item_info_log.item_desc = " 설치 가능 \n 아이템을 연구하여\n 연구 코인를 얻을 수 있습니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 17
		}
	}
	
	
	
	
	
	
	
	if argu0 = spr_potion_center_origin
	{
		if argu1 = 0
		{
		item_info_log.item_name = "치유 포션"
		item_info_log.item_desc = " 사용 가능\n 60s 포션 쿨타임 \n\n HP +20"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 30
		}
		
		if argu1 = 1
		{
		item_info_log.item_name = "대형 치유 포션"
		item_info_log.item_desc = " 사용 가능\n 60s 포션 쿨타임 \n\n HP +40"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 2
		{
		item_info_log.item_name = "치유 주사기"
		item_info_log.item_desc = " 사용 가능\n 8s 포션 쿨타임 \n\n HP +10"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 3
		{
		item_info_log.item_name = "독 저항 포션"
		item_info_log.item_desc = " 사용 가능\n 60s 포션 쿨타임 \n\n 독 저항 60s"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 65
		}
		
		if argu1 = 4
		{
		item_info_log.item_name = "독 저항 주사기"
		item_info_log.item_desc = " 사용 가능\n 8s 포션 쿨타임 \n\n 독 디버프 제거"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 83
		}
		
		if argu1 = 5
		{
		item_info_log.item_name = "방사능 저항 포션"
		item_info_log.item_desc = " 사용 가능\n 60s 포션 쿨타임 \n\n 방사능 저항 60s"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 68
		}
		
		if argu1 = 6
		{
		item_info_log.item_name = "방사능 저항 주사기"
		item_info_log.item_desc = " 사용 가능\n 8s 포션 쿨타임 \n\n 방사능 디버프 제거"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 95
		}
		
		if argu1 = 7
		{
		item_info_log.item_name = "데미지 증가 포션"
		item_info_log.item_desc = " 사용 가능\n 10s 포션 쿨타임 \n\n 데미지 증가 60s"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 43
		}
		
		if argu1 = 8
		{
		item_info_log.item_name = "휘두르기 속도 증가 포션"
		item_info_log.item_desc = " 사용 가능\n 10s 포션 쿨타임 \n\n 속도 증가 60s"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 50
		}
		
		if argu1 = 9
		{
		item_info_log.item_name = "진통 포션"
		item_info_log.item_desc = " 사용 가능\n 30s 포션 쿨타임 \n\n HP 회복 20s"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 10
		{
		item_info_log.item_name = "야간 투시 포션"
		item_info_log.item_desc = " 사용 가능\n 20s 포션 쿨타임 \n\n 야간 투시 120s"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 45
		}
		
		if argu1 = 11
		{
		item_info_log.item_name = "이동 속도 증가 포션"
		item_info_log.item_desc = " 사용 가능\n 60s 포션 쿨타임 \n\n 이동 속도 증가 60s"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 50
		}
		
		if argu1 = 12
		{
		item_info_log.item_name = "산소 주사기"
		item_info_log.item_desc = " 사용 가능\n 8s 포션 쿨타임 \n\n 산소 +80"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 13
		{
		item_info_log.item_name = "산소 회복 포션"
		item_info_log.item_desc = " 사용 가능\n 30s 포션 쿨타임 \n\n healing 산소 120s \n 부작용이 있습니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 43
		}
		
		if argu1 = 14
		{
		item_info_log.item_name = "하이퍼 포션"
		item_info_log.item_desc = " 사용 가능\n 170s 포션 쿨타임 \n\n 산소 무시 120s\n 체력 무시 120s \n 부작용이 있습니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 15
		{
		item_info_log.item_name = "정수된 물"
		item_info_log.item_desc = " 사용 가능\n 10s 포션 쿨타임 \n\n 스테미나 +3"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 16
		{
		item_info_log.item_name = "오염된 물"
		item_info_log.item_desc = " 사용 가능\n 10s 포션 쿨타임\n\n 스테미나 +2\n 독 효과 +20"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 17
		{
		item_info_log.item_name = "웜홀 포션"
		item_info_log.item_desc = " 사용 가능\n 10s 포션 쿨타임\n\n 랜덤한 장소로 이동합니다"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 18
		{
		item_info_log.item_name = "발광 포션"
		item_info_log.item_desc = " 사용 가능\n 40s 포션 쿨타임\n\n 발광 효과 180s"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 19
		{
		item_info_log.item_name = "선인장 열매"
		item_info_log.item_desc = " 사용 가능\n\n HP +20\n 스테미나 +1"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 20
		{
		item_info_log.item_name = "크림슨 선인장 열매"
		item_info_log.item_desc = " 사용 가능\n\n HP -10\n 스테미나 -1\n 방사능 효과 -5"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
		
		if argu1 = 21
		{
		item_info_log.item_name = "오염된 선인장 열매"
		item_info_log.item_desc = " 사용 가능\n\n HP -10\n 스테미나 -1\n 독 효과 -5"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 40
		}
	}
	
	
	
	
	
	
	
	
	if argu0 = spr_clothes_center_origin
	{
		if argu1 = 0
		{
		item_info_log.item_name = "방호복"
		item_info_log.item_desc = "공기중의 독을 막아줍니다 \n 우클릭으로 착용 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 1
		{
		item_info_log.item_name = "방사능 방호복"
		item_info_log.item_desc = " 방어력 +1 \n 우클릭으로 착용 \n\n 방사능으로 부터 보호해줍니다 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 2
		{
		item_info_log.item_name = "추위 방호복"
		item_info_log.item_desc = " 방어력 +3 \n 우클릭으로 착용 \n\n 추위로 부터 보호해줍니다 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 60
		}
		
		if argu1 = 3
		{
		item_info_log.item_name = "독 방호복"
		item_info_log.item_desc = " 방어력 +2 \n 우클릭으로 착용 \n\n 독으로 부터 보호해줍니다 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 55
		}
		
		if argu1 = 4
		{
		item_info_log.item_name = "고온 방호복"
		item_info_log.item_desc = " 방어력 +2 \n 우클릭으로 착용 \n\n 높은 온도로 부터 보호해줍니다 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 75
		}
	}
	
	
	
	if argu0 = spr_accessories
	{
		if argu1 = 0
		{
		item_info_log.item_name = "서바이벌 가이드북"
		item_info_log.item_desc = " 최대 HP +40 \n 최대 스테미나 +4 \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 1
		{
		item_info_log.item_name = "슬라임 젤리 반지"
		item_info_log.item_desc = " 데미지 증가 +5% \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 2
		{
		item_info_log.item_name = "철 반지"
		item_info_log.item_desc = " 방어력 +1 \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 3
		{
		item_info_log.item_name = "루비 반지"
		item_info_log.item_desc = " 최대 HP +10 \n 최대 산소 +10 \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 4
		{
		item_info_log.item_name = "테란 반지"
		item_info_log.item_desc = " 최대 HP +10 \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 5
		{
		item_info_log.item_name = "크림슨 반지"
		item_info_log.item_desc = " 방사능 감소 속도 +10% \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 15
		}
		
		if argu1 = 6
		{
		item_info_log.item_name = "오염된 반지"
		item_info_log.item_desc = " 독 감소 속도 +10% \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 7
		{
		item_info_log.item_name = "메테오 반지"
		item_info_log.item_desc = " 온도 회복 속도 +10% \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 8
		{
		item_info_log.item_name = "뼈다귀 반지"
		item_info_log.item_desc = " 데미지 증가 +5% \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 9
		{
		item_info_log.item_name = "코발트 반지"
		item_info_log.item_desc = " 최대 산소 +10 \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 10
		{
		item_info_log.item_name = "빛나는 반지"
		item_info_log.item_desc = " 몸에서 빛이 납니다 \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 11
		{
		item_info_log.item_name = "구리 반지"
		item_info_log.item_desc = " 최대 산소 +5 \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 12
		{
		item_info_log.item_name = "얼어붙은 반지"
		item_info_log.item_desc = " 최대 스테미나 +3 \n 최대 산소 +3 \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 13
		{
		item_info_log.item_name = "그린 스플랜트 반지"
		item_info_log.item_desc = " 방어력 +1 \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 14
		{
		item_info_log.item_name = "크림슨 스플랜트 반지"
		item_info_log.item_desc = " Decrease radiation damage 10% \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 15
		{
		item_info_log.item_name = "오염된 스플랜트 반지"
		item_info_log.item_desc = " 독 데미지 감소 10% \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 16
		{
		item_info_log.item_name = "얼어붙은 스플랜트 반지"
		item_info_log.item_desc = " 최대 스테미나 +1 \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 17
		{
		item_info_log.item_name = "균사 스플랜트 반지"
		item_info_log.item_desc = " 최대 스테미나 +2 \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 18
		{
		item_info_log.item_name = "작업용 장갑"
		item_info_log.item_desc = " 블럭을 부술때의 방사능 효과와 독효과를 무시합니다 \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 20
		}
		
		if argu1 = 19
		{
		item_info_log.item_name = "소형 케이스"
		item_info_log.item_desc = " 최대 인벤토리 크기 +9 \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
		
		if argu1 = 20
		{
		item_info_log.item_name = "대형 케이스"
		item_info_log.item_desc = " 최대 인벤토리 크기 +18 \n 소지 효과"
		item_info_log.rating = 0
		item_info_log.height = 0
		item_info_log.width = 0
		}
	}












	if argu0 = spr_inv_item || argu0 = spr_only_items
	{
		if argu1 = 0
		{
		item_info_log.item_name = "구리 광석"
		item_info_log.item_desc = " 녹일 수 있음 \n 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 1
		{
		item_info_log.item_name = "구리 주괴"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 2
		{
		item_info_log.item_name = "철 광석"
		item_info_log.item_desc = " 녹일 수 있음 \n 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 3
		{
		item_info_log.item_name = "철 주괴"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 4
		{
		item_info_log.item_name = "금 광석"
		item_info_log.item_desc = " 녹일 수 있음 \n 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 5
		{
		item_info_log.item_name = "금 주괴"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 6
		{
		item_info_log.item_name = "티타늄 광석"
		item_info_log.item_desc = " 녹일 수 있음 \n 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 7
		{
		item_info_log.item_name = "티타늄 주괴"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 8
		{
		item_info_log.item_name = "달 광석"
		item_info_log.item_desc = " 녹일 수 있음 \n 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 9
		{
		item_info_log.item_name = "달 주괴"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 10
		{
		item_info_log.item_name = "코발트 광석"
		item_info_log.item_desc = " 녹일 수 있음 \n 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 11
		{
		item_info_log.item_name = "코발트 주괴"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 12
		{
		item_info_log.item_name = "테란 광석"
		item_info_log.item_desc = " 녹일 수 있음 \n 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 13
		{
		item_info_log.item_name = "테란 주괴"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 14
		{
		item_info_log.item_name = "조약돌"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 15
		{
		item_info_log.item_name = "조약돌"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 16
		{
		item_info_log.item_name = "석탄"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 17
		{
		item_info_log.item_name = "석탄"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 18
		{
		item_info_log.item_name = "오염된 테란 광석"
		item_info_log.item_desc = " 녹일 수 있음 \n 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 12
		}
		
		if argu1 = 19
		{
		item_info_log.item_name = "오염된 테란 주괴"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 15
		}
		
		if argu1 = 20
		{
		item_info_log.item_name = "크림슨 광석"
		item_info_log.item_desc = " 녹일 수 있음 \n 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 11
		}
		
		if argu1 = 21
		{
		item_info_log.item_name = "크림슨 주괴"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 14
		}
		
		if argu1 = 22
		{
		item_info_log.item_name = "아이스 크리스탈"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}
		
		if argu1 = 23
		{
		item_info_log.item_name = "아이스 크리스탈"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 13
		}
		
		if argu1 = 24
		{
		item_info_log.item_name = "크로퍼 광석"
		item_info_log.item_desc = " 녹일 수 있음 \n 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 25
		{
		item_info_log.item_name = "크로퍼 주괴"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 26
		{
		item_info_log.item_name = "오르그리드 광석"
		item_info_log.item_desc = " 녹일 수 있음 \n 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 27
		{
		item_info_log.item_name = "오르그리드 주괴"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 28
		{
		item_info_log.item_name = "아이로직 광석"
		item_info_log.item_desc = " 녹일 수 있음 \n 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 29
		{
		item_info_log.item_name = "아이로직 주괴"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 30
		{
		item_info_log.item_name = "코르브 광석"
		item_info_log.item_desc = " 녹일 수 있음 \n 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 31
		{
		item_info_log.item_name = "코르브 주괴"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 32
		{
		item_info_log.item_name = "메테오 광석"
		item_info_log.item_desc = " 녹일 수 있음 \n 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 33
		{
		item_info_log.item_name = "메테오 주괴"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 34
		{
		item_info_log.item_name = "유황 광석"
		item_info_log.item_desc = " 녹일 수 있음"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 35
		{
		item_info_log.item_name = "유황 가루"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 36
		{
		item_info_log.item_name = "나무"
		item_info_log.item_desc = " 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 37
		{
		item_info_log.item_name = "크림슨 나무"
		item_info_log.item_desc = " 연구 가능 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 38
		{
		item_info_log.item_name = "오염된 나무"
		item_info_log.item_desc = " 연구 가능 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 39
		{
		item_info_log.item_name = "크리스탈"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 40
		{
		item_info_log.item_name = "5.56mm 탄"
		item_info_log.item_desc = " 매우 높은 정확도 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 41
		{
		item_info_log.item_name = "9mm 탄"
		item_info_log.item_desc = " 매우 높은 정확도 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 42
		{
		item_info_log.item_name = "슬러그 탄"
		item_info_log.item_desc = " 매우 높은 정확도 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 0
		}
		
		if argu1 = 43
		{
		item_info_log.item_name = "파라코드"
		item_info_log.item_desc = " 이걸 이용해 동굴에서 빠져나올 수 있습니다"
		item_info_log.rating = 0
		item_info_log.height = -20
		item_info_log.width = 30
		}
		
		if argu1 = 44
		{
		item_info_log.item_name = "전자 제품 잔해"
		item_info_log.item_desc = " 재활용 가능 \n 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -20
		item_info_log.width = 30
		}
		
		if argu1 = 45
		{
		item_info_log.item_name = "알수없는 카드키"
		item_info_log.item_desc = " 연구소 카드키 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -20
		item_info_log.width = 30
		}
		
		if argu1 = 46
		{
		item_info_log.item_name = "그린 카드키"
		item_info_log.item_desc = " 연구소 카드키 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -20
		item_info_log.width = 30
		}
		
		if argu1 = 47
		{
		item_info_log.item_name = "블루 카드키"
		item_info_log.item_desc = " 연구소 카드키 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -20
		item_info_log.width = 30
		}
		
		if argu1 = 48
		{
		item_info_log.item_name = "레드 카드키"
		item_info_log.item_desc = " 연구소 카드키 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -20
		item_info_log.width = 30
		}
		
		if argu1 = 49
		{
		item_info_log.item_name = "슬라임 젤리"
		item_info_log.item_desc = " 연구 가능 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 30
		}
		
		if argu1 = 50
		{
		item_info_log.item_name = "지렁이 이빨"
		item_info_log.item_desc = " 연구 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 30
		}
		
		if argu1 = 51
		{
		item_info_log.item_name = "프로판 탱크"
		item_info_log.item_desc = " 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 30
		}
		
		if argu1 = 52
		{
		item_info_log.item_name = "뼈다귀 열쇠"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 30
		}
		
		if argu1 = 53
		{
		item_info_log.item_name = "열쇠"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 30
		}
		
		if argu1 = 54
		{
		item_info_log.item_name = "숯"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 30
		}
		
		if argu1 = 55
		{
		item_info_log.item_name = "화약"
		item_info_log.item_desc = " 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}

		if argu1 = 56
		{
		item_info_log.item_name = "플라스틱"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}
		
		if argu1 = 57
		{
		item_info_log.item_name = "원유"
		item_info_log.item_desc = " 사용하기 위해선 정제 해야합니다"
		item_info_log.rating = 0
		item_info_log.height = -20
		item_info_log.width = 30
		}
		
		if argu1 = 58
		{
		item_info_log.item_name = "정제된 연료"
		item_info_log.item_desc = ""
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}
		
		if argu1 = 59
		{
		item_info_log.item_name = "나무 사다리"
		item_info_log.item_desc = " 이걸 이용해 동굴에서 빠져나올 수 있습니다\n 다만, 가끔 다시 떨어질 수도 있습니다 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -20
		item_info_log.width = 40
		}
		
		if argu1 = 60
		{
		item_info_log.item_name = "연구 코인"
		item_info_log.item_desc = " 이걸 이용해 \n 다른 연구원과 거래를 할 수 있습니다"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 40
		}
		
		if argu1 = 61
		{
		item_info_log.item_name = "스크랩"
		item_info_log.item_desc = " 재활용 가능 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}
		
		if argu1 = 62
		{
		item_info_log.item_name = "나무 화살"
		item_info_log.item_desc = " 낮은 정확도 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}
		
		if argu1 = 63
		{
		item_info_log.item_name = "돌 화살"
		item_info_log.item_desc = " 보통 정확도 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}
		
		if argu1 = 64
		{
		item_info_log.item_name = "쇠 화살"
		item_info_log.item_desc = " 매우 높은 정확도 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}
		
		if argu1 = 65
		{
		item_info_log.item_name = "플라스틱 화살"
		item_info_log.item_desc = " 낮은 정확도 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}
		
		if argu1 = 66
		{
		item_info_log.item_name = "크리스탈 화살"
		item_info_log.item_desc = " 높은 정확도 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}
		
		if argu1 = 67
		{
		item_info_log.item_name = "폭발 화살"
		item_info_log.item_desc = " 높은 정확도 \n 재활용 가능"
		item_info_log.rating = 0
		item_info_log.height = -50
		item_info_log.width = 10
		}
	}
}












if item_info_log.item_name = ""
{
item_info_log.item_name = ""
}




if argu2 = true
{
var __name = item_info_log.item_name
instance_destroy(item_info_log);
return string(__name);
}
}

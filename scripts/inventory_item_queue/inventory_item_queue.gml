///@args item_name
///@args num
///@args state
///@args crafting_time
global.queue_num += 1

var _queue_item_ = instance_create(-100,-100,obj_queue_item)
var _target_item_ = instance_create(-100,-100,argument0)


_queue_item_.item_name = argument0
_queue_item_.item_to_craft_num = argument1
_queue_item_.item_state_to_craft = argument2
_queue_item_.crafting_time = argument3


_queue_item_.sprite_index = _target_item_.sprite_index
_queue_item_.image_index = _target_item_.image_index
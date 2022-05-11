/// @description Insert description here
// You can write your code in this editor
with(draw_debug_text)
{
	if self.id != other.id
	{
		if other.text = self.text
		{
		instance_destroy(self)
		}
	}
}
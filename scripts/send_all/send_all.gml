var buffer = argument0;

if(co_op_code.is_server == false) {
	network_send_packet(co_op_code.server , buffer, buffer_get_size(buffer));
}
else {
	for(var i = 0; i < ds_list_size(co_op_code.clients); i++) {
		var soc = co_op_code.clients[| i];
		if (soc < 0) continue;
		network_send_packet(soc , buffer, buffer_get_size(buffer));
	}
}
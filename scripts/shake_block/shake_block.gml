
image_xscale = 1
image_yscale = 1

//if shake_block_time = 0
//{
//image_xscale = 1.05*abs(image_xscale)*image_xscale/abs(image_xscale)
//image_yscale = 0.8*abs(image_yscale)*image_yscale/abs(image_yscale)
//}

//if shake_block_time < 14
//{
//shake_block_time += 0.5
//}


//if shake_block_time > 0 && shake_block_time <= 2
//{
//image_xscale += (1.1*abs(image_xscale)*image_xscale/abs(image_xscale) - image_xscale)*0.1
//image_yscale += (0.7*abs(image_yscale)*image_yscale/abs(image_yscale) - image_yscale)*0.1
//}


//if shake_block_time > 2 && shake_block_time <= 7
//{
//image_xscale += (0.95*abs(image_xscale)*image_xscale/abs(image_xscale) - image_xscale)*0.05
//image_yscale += (1.4*abs(image_yscale)*image_yscale/abs(image_yscale) - image_yscale)*0.15
//}


//if shake_block_time > 7 && shake_block_time < 8
//{
//image_xscale += (0.75*abs(image_xscale)*image_xscale/abs(image_xscale) - image_xscale)*0.1
//image_yscale += (1.02*abs(image_yscale)*image_yscale/abs(image_yscale) - image_yscale)*0.1
//}


//if shake_block_time >= 8 && shake_block_time < 9
//{
//image_xscale += (0.99*image_xscale/abs(image_xscale) - image_xscale)*0.3
//image_yscale += (1*image_yscale/abs(image_yscale) - image_yscale)*0.4
//}


//if shake_block_time >= 9
//{
//image_xscale += (1*image_xscale/abs(image_xscale) - image_xscale)*0.5
//image_yscale += (1*image_yscale/abs(image_yscale) - image_yscale)*0.53
//}
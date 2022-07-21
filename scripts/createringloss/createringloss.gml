function CreateRingloss(RingAmount){
var ring_counter = 0
var ring_angle = 101.25  // assuming 0=right, 90=up, 180=left, 270=down
var flip = false
var Speed = 4
 
// perform loop while the ring counter is less than number of lost rings
repeat(min(RingAmount, 32))
{
    // create the ring
    var Object = instance_create_depth(x, y, depth - 1, Ring)
	Object.Shattered = true;
    Object.XSpeed = dcos(ring_angle) * Speed
    Object.YSpeed = -dsin(ring_angle) * Speed
    
    // ever ring created will moving be at the same angle as the other in the current pair, but flipped the other side of the circle
    if flip == true
    {
        Object.XSpeed = Object.XSpeed * -1  // reverse ring's x Speed
        ring_angle += 22.5  // we increment angle on every other ring which makes 2 even rings either side
    }
    
    // toggle flip
    flip = !flip  // if flip is false, flip becomes true and vice versa
    
    // increment counter
    ring_counter += 1
    
    // if we are halfway, start second "circle" of rings with lower Speed
    if ring_counter == 16
    {
        Speed = 2
        ring_angle = 101.25 // reset the angle
    }
}
}
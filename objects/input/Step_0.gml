/// @description Values

Up = keyboard_check((global.up))
Down = keyboard_check((global.down))
Left = keyboard_check((global.left))
Right = keyboard_check((global.right))
A = keyboard_check((global.a))
B = keyboard_check((global.b))
C = keyboard_check((global.c))
ABC = keyboard_check((global.a)) || keyboard_check((global.b)) || keyboard_check((global.c))
Start = keyboard_check((global.start))

//Pressed
upPress = keyboard_check_pressed((global.up))
downPress = keyboard_check_pressed((global.down))
leftPress = keyboard_check_pressed((global.left))
rightPress = keyboard_check_pressed((global.right))
aPress = keyboard_check_pressed((global.a))
bPress = keyboard_check_pressed((global.b))
cPress = keyboard_check_pressed((global.c))
abcPress = keyboard_check_pressed((global.a)) || keyboard_check_pressed((global.b)) || keyboard_check_pressed((global.c))
startPress = keyboard_check_pressed((global.start))

if(keyboard_check_pressed(vk_f2)) game_restart();

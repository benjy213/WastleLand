///scr_get_input
right_key = keyboard_check(ord('D'));
left_key = keyboard_check(ord('Q'));
up_key = keyboard_check(ord('Z'));
down_key = keyboard_check(ord('S'));
dash_key = keyboard_check_pressed(ord('C'));
attack_key = keyboard_check_pressed(vk_space);

//Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

// Check for gamepad input
if (gamepad_is_connected(0))
{
    gamepad_set_axis_deadzone(0, .35);
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    dash_key = gamepad_button_check_pressed(0, gp_shoulderl);
    attack_key = gamepad_button_check_pressed(0, gp_face3);
}

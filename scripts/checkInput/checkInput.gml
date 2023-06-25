function checkInput() {
	// Note that this script works with keyborad and pad inputs
	// You can customize it if you wish.
	// Input control vars
	
	kLeft        = keyboard_check(vk_left);
	kRight       = keyboard_check(vk_right);
	kDown		 = keyboard_check(vk_down);
	kUp			 = keyboard_check(vk_up);
	kHit1		 = keyboard_check_pressed(ord("D"));
	kJumpIn      = keyboard_check(ord("S"));
	kJump        = keyboard_check_pressed(ord("S"));
	kJumpRelease = keyboard_check_released(ord("S"));
}

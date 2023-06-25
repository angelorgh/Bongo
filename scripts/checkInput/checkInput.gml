function checkInput() {
	// Note that this script works with keyborad and pad inputs
	// You can customize it if you wish.
	// Input control vars
	
    kLeft        = keyboard_check(ord("A"));
    kRight       = keyboard_check(ord("D"));
    kDown		 = keyboard_check(ord("S"));
    kUp			 = keyboard_check(ord("W"));
    //kHit1		 = keyboard_check_pressed(ord("D"));
    kJumpIn      = keyboard_check(vk_space);
    kJump        = keyboard_check_pressed(vk_space);
    kJumpRelease = keyboard_check_released(vk_space);
	
}

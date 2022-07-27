/// @description Additional scripts

	//Animation list
	PlayerAnimationList();
	
	//Animation System
	if (Animation != AnimationToBeSet) //on the event of an animation needing to change
    {
        Animation = AnimationToBeSet; //set animation
        AniSubImageDurationTimer = AniSubImageDurationSet; //reset subimage duration counter, "AniSubImageDurationSet" would be whatever the duration should be at that moment
        AniSubImage = 0; //0 being the first subimage
    }
    else
    {
        //subimage handling
        if (AniSubImageDurationTimer > 0)
        {
            AniSubImageDurationTimer -= 1; //count down subimage duration
        }
        else
        {
            //timer was on 0, so move to next subimage
             if (AniSubImage <= AniSubImageNumber) AniSubImage += 1; //next subimage
            if (AniSubImage > AniSubImageNumber-1) AniSubImage = AniLoopStart-1; //animation has ended, loop back to start of animation. "AniSubImageNumber" is the number of subimages in the animation loop
    
            AniSubImageDurationTimer = AniSubImageDurationSet; //reset duration counter, "AniSubImageDurationSet" would be whatever the duration should be at that moment
		}	
	}
	
	//Set animation stuff to the sprite
	sprite_index = Animation;
	image_index = AniSubImage;
	image_speed = 0;
	AniSubImageNumber = image_number;
	ShieldReposition();
	PlayerRecording();
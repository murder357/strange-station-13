
/obj/structure/warp_core
	name = "\improper Warp Core"
	desc = "The Warp Core, the heart and soul of the ship!"
	icon = 'icons/testing/greyscale_error.dmi'
	max_integrity = 5000
	anchored = TRUE
	density = TRUE
	var/active = FALSE


/obj/structure/warp_core/Initialize(mapload)
	. = ..()
	while(TRUE)
		sleep(1)
		if(world.time > 1 MINUTES)
			active = TRUE
		if(active == TRUE)
			SSevents.frequency_lower = 900
			SSevents.frequency_upper = 3000
		else
			SSevents.frequency_lower = 1800
			SSevents.frequency_upper = 6000

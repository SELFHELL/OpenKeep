/datum/voicepack/zombie/m/get_sound(soundin, modifiers)
	var/used
	switch(soundin)
		if("idle")
			used = pick('sound/vo/mobs/zombie/idle (1).ogg','sound/vo/mobs/zombie/idle (2).ogg','sound/vo/mobs/zombie/idle (3).ogg')
		if("deathgurgle")
			used = pick('sound/vo/mobs/zombie/death (1).ogg','sound/vo/mobs/zombie/death (2).ogg','sound/vo/mobs/zombie/death (3).ogg')
		if("firescream")
			used = pick('sound/vo/mobs/zombie/firescream (1).ogg','sound/vo/mobs/zombie/firescream (2).ogg','sound/vo/mobs/zombie/firescream (3).ogg')
		if("pain")
			used = pick('sound/vo/mobs/zombie/pain (1).ogg','sound/vo/mobs/zombie/pain (2).ogg','sound/vo/mobs/zombie/pain (3).ogg')
		if("painscream")
			used = pick('sound/vo/mobs/zombie/death (1).ogg','sound/vo/mobs/zombie/death (2).ogg','sound/vo/mobs/zombie/death (3).ogg')
		if("scream")
			used = pick('sound/vo/mobs/zombie/firescream (1).ogg','sound/vo/mobs/zombie/firescream (2).ogg','sound/vo/mobs/zombie/firescream (3).ogg')
		if("rage")
			used = pick('sound/vo/mobs/zombie/firescream (1).ogg','sound/vo/mobs/zombie/firescream (2).ogg','sound/vo/mobs/zombie/firescream (3).ogg')
	return used

/datum/voicepack/zombie/f/get_sound(soundin, modifiers)
	var/used
	switch(soundin)
		if("idle")
			used = pick('sound/vo/mobs/zombie/f/idle (1).ogg','sound/vo/mobs/zombie/f/idle (2).ogg','sound/vo/mobs/zombie/f/idle (3).ogg')
		if("deathgurgle")
			used = pick('sound/vo/mobs/zombie/f/death (1).ogg','sound/vo/mobs/zombie/f/death (2).ogg','sound/vo/mobs/zombie/f/death (3).ogg')
		if("firescream")
			used = pick('sound/vo/mobs/zombie/f/firescream (1).ogg','sound/vo/mobs/zombie/f/firescream (2).ogg','sound/vo/mobs/zombie/f/firescream (3).ogg')
		if("pain")
			used = pick('sound/vo/mobs/zombie/f/pain (1).ogg','sound/vo/mobs/zombie/f/pain (2).ogg','sound/vo/mobs/zombie/f/pain (3).ogg')
		if("painscream")
			used = pick('sound/vo/mobs/zombie/f/death (1).ogg','sound/vo/mobs/zombie/f/death (2).ogg','sound/vo/mobs/zombie/f/death (3).ogg')
		if("scream")
			used = pick('sound/vo/mobs/zombie/f/firescream (1).ogg','sound/vo/mobs/zombie/f/firescream (2).ogg','sound/vo/mobs/zombie/f/firescream (3).ogg')
		if("rage")
			used = pick('sound/vo/mobs/zombie/firescream (1).ogg','sound/vo/mobs/zombie/firescream (2).ogg','sound/vo/mobs/zombie/firescream (3).ogg')
	return used

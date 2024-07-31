/mob/living/carbon/human/species/ullathid
	race = /datum/species/ullathid

/datum/species/ullathid
	name = "Ullathid"
	id = "ullathid"
	desc = "<b>Ullathid</b><br>\
	Hailing from a long forgotten port town that once dotted the coast\
line now sunken and lost to time through calleous and heretical efforts.\
Brought upon by their forebearers who claimed that coastline and ocean were theirs to control. \
Abyssor angered by their actions laid a curse upon them tainting their bloodline and kin yet to brought into the world. \
The city itself was dragged into the ocean by kraken-like entities never to be seen or heard from again.\
Rumors of humanoids seen crawling out of the ocean have been spread from Kingsfield to Enigma though accounts of them are just hearsay and speculation."

	skin_tone_wording = "Strain"

	species_traits = list(EYECOLOR,OLDGREY,HAIR)
	inherent_traits = list(TRAIT_NOMOBSWAP)
	default_features = list("mcolor" = "FFF", "ears" = "None", "wings" = "None")
	use_skintones = 1
	skinned_type = /obj/item/stack/sheet/animalhide/human
	disliked_food = NONE
	liked_food = NONE
	possible_ages = list(AGE_ADULT, AGE_MIDDLEAGED, AGE_OLD)
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	limbs_icon_m = 'icons/roguetown/mob/bodies/m/m_mf.dmi'
	limbs_icon_f = 'icons/roguetown/mob/bodies/f/f_mf.dmi'
	dam_icon = 'icons/roguetown/mob/bodies/dam/dam_male.dmi'
	dam_icon_f = 'icons/roguetown/mob/bodies/dam/dam_female.dmi'
	hairyness = "t3"
	mutant_bodyparts = list("mouth")
	soundpack_m = /datum/voicepack/male/elf
	soundpack_f = /datum/voicepack/female/elf
	offset_features = list(OFFSET_ID = list(0,2), OFFSET_GLOVES = list(0,0), OFFSET_WRISTS = list(0,1),\
    OFFSET_CLOAK = list(0,2), OFFSET_FACEMASK = list(0,2), OFFSET_HEAD = list(0,1), \
    OFFSET_FACE = list(0,1), OFFSET_BELT = list(0,1), OFFSET_BACK = list(0,2), \
    OFFSET_NECK = list(0,1), OFFSET_MOUTH = list(0,2), OFFSET_PANTS = list(0,2), \
    OFFSET_SHIRT = list(0,2), OFFSET_ARMOR = list(0,2), OFFSET_HANDS = list(0,2), OFFSET_UNDIES = list(0,0), \
    OFFSET_ID_F = list(0,-1), OFFSET_GLOVES_F = list(0,-1), OFFSET_WRISTS_F = list(0,-1), OFFSET_HANDS_F = list(0,-2), \
    OFFSET_CLOAK_F = list(0,-1), OFFSET_FACEMASK_F = list(0,-2), OFFSET_HEAD_F = list(0,-2), \
    OFFSET_FACE_F = list(0,-2), OFFSET_BELT_F = list(0,-1), OFFSET_BACK_F = list(0,-2), \
    OFFSET_NECK_F = list(0,-2), OFFSET_MOUTH_F = list(0,-2), OFFSET_PANTS_F = list(0,-1), \
    OFFSET_SHIRT_F = list(0,-1), OFFSET_ARMOR_F = list(0,-1), OFFSET_UNDIES_F = list(0,-1))
	specstats = list("strength" = -1, "perception" = -1, "intelligence" = 2, "constitution" = 1, "endurance" = 2, "speed" = 1, "fortune" = -1)
	specstats_f = list("strength" = -1, "perception" = -1, "intelligence" = 2, "constitution" = 1, "endurance" = 1, "speed" = 1, "fortune" = -1)
	enflamed_icon = "widefire"
	patreon_req = 0

/datum/species/ullathid/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	..()
	RegisterSignal(C, COMSIG_MOB_SAY, PROC_REF(handle_speech))
	C.grant_language(/datum/language/common)
	C.grant_language(/datum/language/squid)
	C.AddSpell(new /obj/effect/proc_holder/spell/targeted/telepathy)

/datum/species/ullathid/after_creation(mob/living/carbon/C)
	..()
	C.grant_language(/datum/language/squid)
	to_chat(C, "<span class='info'>I can speak Infernal with ,h before my speech.</span>")
	C.AddSpell(new /obj/effect/proc_holder/spell/targeted/telepathy)


/datum/species/ullathid/check_roundstart_eligible()
    return TRUE

/datum/species/ullathid/get_skin_list()
	return sortList(list(
		"Maggot" = SKIN_COLOR_MAGGOT,
		"Cocoon" = SKIN_COLOR_COCOON,
		"Ashen" = SKIN_COLOR_ASHEN,
		"Spider Venom" = SKIN_COLOR_SPIDER_VENOM,
		"Jackpoison" = SKIN_COLOR_JACKPOISON,
		"Homunculus" = SKIN_COLOR_HOMUNCULUS,
		"Arachnid Ichor" = SKIN_COLOR_ARACHNID_ICHOR,
	))

/datum/species/ullathid/get_accent_list()
	return strings("french_replacement.json", "french")

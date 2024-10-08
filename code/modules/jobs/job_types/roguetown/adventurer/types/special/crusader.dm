/datum/advclass/pilgrim/rare/crusader
	name = "Totod Order Emissary"
	tutorial = "The Crusaders are knights who have pledged \
	their wealth and lands to the Church, taking up the banner \
	of the Totod Order dedicated to retaking Valoria. \
	You were sent to Enigma by the Order to get any and all assistance from the faithful for the Crusade."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(
		"Humen",
		"Dwarf"
	)
	allowed_patrons = list(/datum/patron/divine/astrata, /datum/patron/divine/necra, /datum/patron/forgotten)
	outfit = /datum/outfit/job/roguetown/adventurer/crusader
	category_tags = list(CTAG_ADVENTURER)
	maximum_possible_slots = 1
	pickprob = 30
	min_pq = 0

/datum/outfit/job/roguetown/adventurer/crusader/pre_equip(mob/living/carbon/human/H)
	..()

	pants = /obj/item/clothing/under/roguetown/chainlegs
	shoes = /obj/item/clothing/shoes/roguetown/boots/armor/light
	shirt = /obj/item/clothing/suit/roguetown/armor/chainmail/hauberk
	cloak = /obj/item/clothing/cloak/cape/crusader
	gloves = /obj/item/clothing/gloves/roguetown/chain
	backr = /obj/item/rogueweapon/shield/tower/metal
	backl = /obj/item/storage/backpack/rogue/satchel
	belt = /obj/item/storage/belt/rogue/leather/plaquesilver
	beltl = /obj/item/rogueweapon/sword/silver

	// Run this first so that patron gets changed before assigning gear.
	if(H.patron != /datum/patron/divine/astrata || H.patron != /datum/patron/divine/necra)
		H.patron = GLOB.patronlist[/datum/patron/forgotten]
	
	// Now we equip according to patron.
	switch(H.patron?.name)
		if("Astrata")
			armor = /obj/item/clothing/cloak/stabard/crusader // Gold for Astrata regardless of gender
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/astrata
		if("Necra")
			armor = /obj/item/clothing/cloak/stabard/templar/necra
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver/necra
		if("Forgotten God")
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver
			if(H.gender == FEMALE) // Silver for female, gold for male
				armor = /obj/item/clothing/cloak/stabard/crusader/t
			else
				armor = /obj/item/clothing/cloak/stabard/crusader
		else // Failsafe
			armor = /obj/item/clothing/cloak/stabard/crusader // Gold version regardless of gender or patron
			wrists = /obj/item/clothing/neck/roguetown/psycross/silver

	H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/shields, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/riding, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
	H.change_stat("endurance", 2)
	H.change_stat("constitution", 2)
	H.change_stat("strength", 1)
	ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)

	// Females are crossbow and dagger based
	if(H.gender == FEMALE)
		head = /obj/item/clothing/head/roguetown/helmet/heavy/crusader/t
		backr = /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow
		beltr = /obj/item/quiver/bolts
		backpack_contents = list(/obj/item/rogueweapon/huntingknife/idagger/silver = 1, /obj/item/storage/belt/rogue/pouch/coins/rich = 1)
		H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	// Males are sword and shield based
	else
		head = /obj/item/clothing/head/roguetown/helmet/heavy/crusader
		backpack_contents = list(/obj/item/storage/belt/rogue/pouch/coins/rich = 1)
		H.mind.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/shields, 1, TRUE)
	// Finally, grant us the language

	if(!H.has_language(/datum/language/oldpsydonic))
		H.grant_language(/datum/language/oldpsydonic)
		to_chat(H, "<span class='info'>I can speak Old Psydonic with ,m before my speech.</span>")

/obj/item/clothing/cloak/stabard/crusader
	name = "surcoat of the golden order"
	desc = "A surcoat drenched in charcoal water, golden thread stitched in the style of the Forgotten God's Knights of Old Psydonia."
	icon_state = "crusader_surcoat"
	icon = 'icons/roguetown/clothing/special/crusader.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/special/onmob/crusader.dmi'
	sleeved = 'icons/roguetown/clothing/special/onmob/crusader.dmi'

/obj/item/clothing/cloak/stabard/crusader/t
	name = "surcoat of the silver order"
	desc = "A surcoat drenched in charcoal water, white cotton stitched in the symbol of the Forgotten God."
	icon_state = "crusader_surcoatt2"

/obj/item/clothing/cloak/cape/crusader
	name = "desert cape"
	desc = "Zybantu is known for it's legacies in tailoring, this particular cape is interwoven with fine stained silks and leather - a sand elf design, renown for it's style and durability."
	icon_state = "crusader_cloak"
	icon = 'icons/roguetown/clothing/special/crusader.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/special/onmob/crusader.dmi'
	sleeved = 'icons/roguetown/clothing/special/onmob/crusader.dmi'

/obj/item/clothing/head/roguetown/helmet/heavy/crusader
	name = "bucket helm"
	desc = "An ornate bucket helmet, adorned in golden regalia denoting the faith of the Forgotten God. Some Astratan sects have adopted the style to venerate the sun-goddess in recent times."
	icon_state = "crusader_helm"
	icon = 'icons/roguetown/clothing/special/crusader.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/special/onmob/crusader.dmi'

/obj/item/clothing/head/roguetown/helmet/heavy/crusader/t
	desc = "A silver gilded bucket helm, inscriptions in old Psydonic are found embezzeled on every inch of silver. Grenzelhoft specializes in these helmets, the Totod order has been purchasing them en-masse."
	icon_state = "crusader_helmt2"

/obj/item/clothing/cloak/cape/crusader/ComponentInitialize()
	. = ..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	if(STR)
		STR.max_combined_w_class = 3
		STR.max_w_class = WEIGHT_CLASS_NORMAL
		STR.max_items = 1

/obj/item/clothing/cloak/cape/crusader/attack_right(mob/user)
	var/datum/component/storage/CP = GetComponent(/datum/component/storage)
	if(CP)
		CP.rmb_show(user)
		return TRUE
	..()

/obj/item/clothing/cloak/cape/crusader/dropped(mob/living/carbon/human/user)
	..()
	var/datum/component/storage/STR = GetComponent(/datum/component/storage)
	if(STR)
		var/list/things = STR.contents()
		for(var/obj/item/I in things)
			STR.remove_from_storage(I, get_turf(src))

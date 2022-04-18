//Zebra
/mob/living/simple_animal/friendly/zebra
	name = "zebra"
	desc = "An angry, striped horse"
	icon_state = "zebra"
	icon_living = "zebra"
	icon_dead = "zebra"
	flip_on_death = TRUE
	speak = list("Neigh!", "Whinny!")
	speak_emote = list("whinnies", "neighs")
	emote_hear = list("makes zebra noises.")
	emote_see = list("shakes its head")
	speak_chance = 1
	turns_per_move = 5
	pass_flags = PASSTABLE
	mob_size = MOB_SIZE_HUMAN
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	minbodytemp = 200
	maxbodytemp = 400
	unsuitable_atmos_damage = 0.5
	animal_species = /mob/living/simple_animal/friendly/zebra
	guaranteed_butcher_results = list(/obj/item/food/meat/slab/zebra)
	response_help_continuous = "pets"
	response_help_simple = "pet"
	response_disarm_continuous = "pushes aside"
	response_disarm_simple = "push aside"
	response_harm_continuous = "punches"
	response_harm_simple = "punch"
	mobility_flags = MOBILITY_FLAGS_REST_CAPABLE_DEFAULT // !!

	melee_damage_upper = 10
	attack_verb_continuous = "kicks"
	attack_verb_simple = "kick"
	attack_sound = 'sound/weapons/punch1.ogg'
	attack_vis_effect = ATTACK_EFFECT_KICK

/mob/living/simple_animal/friendly/zebra/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/pet_bonus, "purrs!") // !!
	ADD_TRAIT(src, INNATE_TRAIT) // !!

/mob/living/simple_animal/friendly/zebra/Life(delta_time = SSMOBS_DT, times_fired)
	..()
	// !!

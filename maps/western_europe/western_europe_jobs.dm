
/datum/map/western_europe
	allowed_jobs = list(/datum/job/britsoldier,/datum/job/germknight,/datum/job/frenchsoldier,/datum/job/britknight,/datum/job/germsoldier,/datum/job/germsquire,/datum/job/britag)
	allowed_spawns = list("Tester","British Soldier","German Knight","French Soldier","British Knight","German Soldier","German Squire","British AG")

	default_spawn = "Tester"

/datum/job/britsoldier
	title = "British Soldier"
	total_positions = -1
	spawn_positions = -1
	selection_color = "#000000"

	supervisors = "god"

	create_record = 0
	account_allowed = 1
	generate_email = 0

	loadout_allowed = TRUE
	announced = FALSE
	outfit_type = /decl/hierarchy/outfit/job/britsoldier

	latejoin_at_spawnpoints = TRUE

/datum/job/germknight
	title = "German Knight"
	total_positions = 5
	spawn_positions = -1
	selection_color = "#000000"

	supervisors = "god"

	create_record = 0
	account_allowed = 1
	generate_email = 0

	loadout_allowed = TRUE
	announced = FALSE
	outfit_type = /decl/hierarchy/outfit/job/germknight

	latejoin_at_spawnpoints = TRUE

/datum/job/frenchsoldier
	title = "French Soldier"
	total_positions = -1
	spawn_positions = -1
	selection_color = "#000000"

	supervisors = "god"

	create_record = 0
	account_allowed = 1
	generate_email = 0

	loadout_allowed = TRUE
	announced = FALSE
	outfit_type = /decl/hierarchy/outfit/job/frenchsoldier

	latejoin_at_spawnpoints = TRUE

/datum/job/britknight
	title = "British Knight"
	total_positions = 5
	spawn_positions = -1
	selection_color = "#000000"

	supervisors = "god"

	create_record = 0
	account_allowed = 1
	generate_email = 0

	loadout_allowed = TRUE
	announced = FALSE
	outfit_type = /decl/hierarchy/outfit/job/britknight

	latejoin_at_spawnpoints = TRUE

/obj/item/weapon/storage/backpack/britknight
	name = "internal compartment"
	can_hold = list(/obj/item/ammo_magazine/box/mp303)
	storage_slots_w = 2
	canremove = 0

/datum/armourspecials/gear/britplate
	gear_type = /obj/item/weapon/storage/backpack/britknight
	equip_slot = slot_back

/datum/job/germsoldier
	title = "German Soldier"
	total_positions = -1
	spawn_positions = -1
	selection_color = "#000000"

	supervisors = "god"

	create_record = 0
	account_allowed = 1
	generate_email = 0

	loadout_allowed = TRUE
	announced = FALSE
	outfit_type = /decl/hierarchy/outfit/job/germsoldier

/datum/job/germsquire
	title = "German Squire"
	total_positions = 5
	spawn_positions = -1
	selection_color = "#000000"

	supervisors = "god"

	create_record = 0
	account_allowed = 1
	generate_email = 0

	loadout_allowed = TRUE
	announced = FALSE
	outfit_type = /decl/hierarchy/outfit/job/germsoldier

/datum/job/britag
	title = "British AG"
	total_positions = 5
	spawn_positions = -1
	selection_color = "#000000"

	supervisors = "god"

	create_record = 0
	account_allowed = 1
	generate_email = 0

	loadout_allowed = TRUE
	announced = FALSE
	outfit_type = /decl/hierarchy/outfit/job/britsoldier
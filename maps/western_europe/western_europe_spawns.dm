
GLOBAL_LIST_EMPTY(trench_spawns)

/datum/spawnpoint/tester
	display_name = "Tester"

/datum/spawnpoint/tester/New()
	..()
	turfs = GLOB.trench_spawns

/obj/effect/landmark/start/wwi
	name = "Tester"

/obj/effect/landmark/start/wwi/New()
	..()
	GLOB.trench_spawns += loc

/obj/effect/landmark/start/brit
	name = "British Soldier"

/obj/effect/landmark/start/brit/New()
	..()
	GLOB.trench_spawns += loc

/obj/effect/landmark/start/germ
	name = "German Knight"

/obj/effect/landmark/start/germ/New()
	..()
	GLOB.trench_spawns += loc

/obj/effect/landmark/start/french
	name = "French Soldier"

/obj/effect/landmark/start/french/New()
	..()
	GLOB.trench_spawns += loc

/obj/effect/landmark/start/germsoldier
	name = "German Soldier"

/obj/effect/landmark/start/germsoldier/New()
	..()
	GLOB.trench_spawns += loc

/obj/effect/landmark/start/britag
	name = "British Squire"

/obj/effect/landmark/start/britag/New()
	..()
	GLOB.trench_spawns += loc

/obj/effect/landmark/start/germsquire
	name = "German Squire"

/obj/effect/landmark/start/germsquire/New()
	..()
	GLOB.trench_spawns += loc

/obj/effect/landmark/start/britknight
	name = "British Knight"

/obj/effect/landmark/start/britknight/New()
	..()
	GLOB.trench_spawns += loc
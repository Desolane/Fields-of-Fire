/datum/game_mode/extended
	name = "Great War"
	config_tag = "extended"
	required_players = 0
	round_description = "Kill the enemy. For king and country."
	extended_round_description = "Exterminate the enemy commander to achieve victory."
	addantag_allowed = ADDANTAG_ADMIN // No add antag vote allowed on extended, except when manually called by admins.
	allowed_ghost_roles = list(/datum/ghost_role/mouse)

extends Node
## Global game state for Moonwild Hearts
signal day_advanced(day: int)
signal trust_changed(companion_id: String, value: int)
var day: int = 1
var time_of_day: String = "Morning"
var season: String = "Spring"
var gold: int = 50
var trust := {"lyra": 0, "sable": 0, "neris": 0, "pippa": 0, "vesper": 0, "mara": 0}
var flags: Dictionary = {}
func advance_day() -> void:
	day += 1
	time_of_day = "Morning" if day % 2 == 1 else "Evening"
	day_advanced.emit(day)
func add_trust(comp: String, amount: int) -> void:
	if trust.has(comp):
		trust[comp] = mini(8, trust[comp] + amount)
		trust_changed.emit(comp, trust[comp])

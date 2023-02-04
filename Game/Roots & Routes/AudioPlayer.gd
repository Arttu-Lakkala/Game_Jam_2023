# set the class of the object being controlled
extends AudioStreamPlayer

# set variable to define the starting value for the phase of the game, which is 0
var stage : int = 0

# set name references for audio buses
const STREET_BUS = "Street"
const DRUMS_BUS = "Drums"
const BASS_BUS = "Bass"
const CHORD_BUS = "Chord"
const HORNS_BUS = "Horns"
const LEAD_BUS = "Lead"

# set variables to call upon audio bus references
# note: the bus control functions belong to a different class, AudioServer. here we call it to make use
# of the bus functions.
var StreetBus = AudioServer.get_bus_index(STREET_BUS)
var DrumsBus = AudioServer.get_bus_index(DRUMS_BUS)
var BassBus = AudioServer.get_bus_index(BASS_BUS)
var ChordBus = AudioServer.get_bus_index(CHORD_BUS)
var HornsBus = AudioServer.get_bus_index(HORNS_BUS)
var LeadBus = AudioServer.get_bus_index(LEAD_BUS)

# set a function to use a slider to change the phase of the game, from 0 to 4.
# when setting a phase, establish the buses that are active, then set the mix for all active channels
func _on_HSlider_value_changed(value):
	stage = value
	print(stage)
	# in stage 0, only play Street
	if stage == 0:
		AudioServer.set_bus_mute(StreetBus,false)
		AudioServer.set_bus_mute(DrumsBus,true)
		AudioServer.set_bus_mute(BassBus,true)
		AudioServer.set_bus_mute(ChordBus,true)
		AudioServer.set_bus_mute(HornsBus,true)
		AudioServer.set_bus_mute(LeadBus,true)
		AudioServer.set_bus_volume_db(StreetBus,-5)
	# in stage 1, play street and drums
	elif stage == 1:
		AudioServer.set_bus_mute(StreetBus,false)
		AudioServer.set_bus_mute(DrumsBus,false)
		AudioServer.set_bus_mute(BassBus,true)
		AudioServer.set_bus_mute(ChordBus,true)
		AudioServer.set_bus_mute(HornsBus,true)
		AudioServer.set_bus_mute(LeadBus,true)
		AudioServer.set_bus_volume_db(StreetBus,-14)
		AudioServer.set_bus_volume_db(DrumsBus,10)
	# in stage 2, add bass
	elif stage == 2:
		AudioServer.set_bus_mute(StreetBus,false)
		AudioServer.set_bus_mute(DrumsBus,false)
		AudioServer.set_bus_mute(BassBus,false)
		AudioServer.set_bus_mute(ChordBus,true)
		AudioServer.set_bus_mute(HornsBus,true)
		AudioServer.set_bus_mute(LeadBus,true)
		AudioServer.set_bus_volume_db(StreetBus,-19)
		AudioServer.set_bus_volume_db(DrumsBus,7)
		AudioServer.set_bus_volume_db(BassBus,0)
	# in stage 3, add chords
	elif stage == 3:
		AudioServer.set_bus_mute(StreetBus,false)
		AudioServer.set_bus_mute(DrumsBus,false)
		AudioServer.set_bus_mute(BassBus,false)
		AudioServer.set_bus_mute(ChordBus,false)
		AudioServer.set_bus_mute(HornsBus,true)
		AudioServer.set_bus_mute(LeadBus,true)
		AudioServer.set_bus_volume_db(StreetBus,-21)
		AudioServer.set_bus_volume_db(DrumsBus,5)
		AudioServer.set_bus_volume_db(BassBus,-2)
		AudioServer.set_bus_volume_db(ChordBus,5)
	# in stage 4, add horns and lead
	elif stage == 4:
		AudioServer.set_bus_mute(StreetBus,false)
		AudioServer.set_bus_mute(DrumsBus,false)
		AudioServer.set_bus_mute(BassBus,false)
		AudioServer.set_bus_mute(ChordBus,false)
		AudioServer.set_bus_mute(HornsBus,false)
		AudioServer.set_bus_mute(LeadBus,false)
		AudioServer.set_bus_volume_db(StreetBus,-21)
		AudioServer.set_bus_volume_db(DrumsBus,3)
		AudioServer.set_bus_volume_db(BassBus,-5)
		AudioServer.set_bus_volume_db(ChordBus,-2)
		AudioServer.set_bus_volume_db(HornsBus,0)
		AudioServer.set_bus_volume_db(LeadBus,0)
		

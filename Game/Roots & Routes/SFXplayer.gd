extends AudioStreamPlayer

# Define buses for SFX, one dedicated for stepping
const STEP_BUS = "Steps"
const SFX_BUS = "SFX"
var StepBus = AudioServer.get_bus_index(STEP_BUS)
var SFXBus = AudioServer.get_bus_index(SFX_BUS)

# Check the Character node to see if the character is moving. If character moves, unmute step bus
func mute_movement_sound():
	AudioServer.set_bus_mute(StepBus,true)
func play_movement_sound():
	AudioServer.set_bus_mute(StepBus,false)

# WaitForTickResponse
# Response after a simulation tick completes in synchronous mode.

bool tick_status  # Tick completion status
bool pause_status  # Simulation pause status
uint64 frame  # Current frame number

EgoVehicleStatus vehicle_status  # Ego vehicle state after tick
string time  # Simulation timestamp

# GVDirectCmd
# Direct control command for skid-steer enabled ground vehicles.
# Topic: /gv_direct_cmd

int32 steerType  # Steer type identifier
float32 throttle  # Throttle input, range -1~1
float32 brake  # Brake input
float32 skidSteering  # Skid steering input, range -1~1
float32[10] steerAngle  # Per-wheel steer angles, range -1~1

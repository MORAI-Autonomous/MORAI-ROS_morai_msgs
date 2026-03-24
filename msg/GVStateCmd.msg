# GVStateCmd
# State control command for skid-steer enabled ground vehicles.
# Topic: /gv_state_cmd

int32 latCtrlType  # Lateral control type
float32 targetLongitudinalVelocity  # Target longitudinal velocity [m/s]
float32 targetAngularVelocity  # Target angular velocity [rad/s]
float32[10] targetSteerAngle  # Per-wheel target steer angles

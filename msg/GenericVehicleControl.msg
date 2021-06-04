# You should set header.stamp when you publish this message to the correspoding topic
#
# - The header.stamp will be used for measuring timeout in the lower layer for fail-safe
Header header

# True for emergency stop
# 
# - DO NOT set this field unless the severe problem is detected(or expected)
bool emergency_stop

uint8 TYPE_GEAR_FORWARD=0
uint8 TYPE_GEAR_NEUTRAL=1
uint8 TYPE_GEAR_BACKWARD=2
uint8 TYPE_GEAR_PARKING=3

# One of the above TYPEGEAR* values
#
# - Values not in the above type will be ignored
uint8 gear

float64 CONST_SPEED_UPPERBOUND=5.5
float64 CONST_SPEED_LOWERBOUND=-5.5

# Target speed in unit of meter per second(m/sec)
#
# - Positive value means forward movement, negative value means reverse movement
# - The value out of range [CONST_SPEED_LOWERBOUND, CONST_SPEED_LOWERBOUND] will be adjusted to CONST_SPEED_LOWERBOUND/CONST_SPEED_UPPERBOUND
float64 speed

float64 CONST_ACCELERATION_UPPERBOUND=4.0
float64 CONST_ACCELERATION_LOWERBOUND=-4.0

# Targer acceleration in meter per second^2(m/sec^2)
#
# - Positive value means accel., negative value means deaccel.
# - The value out of range [CONST_ACCELERATION_LOWERBOUND, CONST_ACCELERATION_LOWERBOUND] will be adjusted to CONST_ACCELERATION_LOWERBOUND/CONST_ACCELERATION_UPPERBOUND
float64 acceleration

float64 CONST_STEER_LEFTMOST=28.1
float64 CONST_STEER_RIGHTMOST=-28.1

# Target steering angle in unit of degree(deg)
#
# - The negative value indicates right steer(positive: left steer)
# - The value out of range [CONST_STEER_RIGHTMOST, CONST_STEER_LEFTMOST] will be adjusted to CONST_STEER_LEFTMOST/CONST_STEER_RIGHTMOST
float64 steer

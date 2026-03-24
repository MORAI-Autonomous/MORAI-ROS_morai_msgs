# GetTrafficLightStatus
# Status of the closest traffic light to the ego vehicle.
# Topic: /GetTrafficLightStatus

Header header

string trafficLightIndex  # Unique index of the traffic light
int16 trafficLightType  # Light type (0: R/Y/G, 1: R/Y/G+left, 2: R/Y/G+left+G, 100: Y/Y/Y)
int16 trafficLightStatus  # Current state (1: Red, 4: Yellow, 16: Green, 32: Green left arrow, -1: not lit)

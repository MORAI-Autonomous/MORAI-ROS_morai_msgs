# SetTrafficLight
# Control command to change a specific traffic light state.
# Topic: /SetTrafficLight

string trafficLightIndex  # Unique index of the traffic light
int16 trafficLightStatus  # Target state (1: Red, 4: Yellow, 16: Green, 32: Green left arrow, -1: not lit)

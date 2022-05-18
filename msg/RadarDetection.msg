# This message relates only to FMCW radar.  
# All variables below are relative to the radar's frame of reference.
# This message is not meant to be used alone but as part of a stamped or array message.

# Object classifications (Additional vendor-specific classifications are permitted starting from 32000 eg. Car)

uint16 detection_id                       # An optional classification of the object (see above)
geometry_msgs/Point position                # x, y, z coordinates of the centroid of the object being tracked.

float32 azimuth
float32 rangerate
float32 amplitude


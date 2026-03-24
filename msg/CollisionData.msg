# CollisionData
# Most recent collision between the ego vehicle and placed objects.
# Topic: /CollisionData

Header header

float64 global_offset_x  # X-axis position w.r.t. map coordinate system
float64 global_offset_y  # Y-axis position w.r.t. map coordinate system
float64 global_offset_z  # Z-axis position w.r.t. map coordinate system

ObjectStatus[] collision_object  # Collision data with ego vehicle

ObjectStatus[] collision_objecta  # Additional collision objects

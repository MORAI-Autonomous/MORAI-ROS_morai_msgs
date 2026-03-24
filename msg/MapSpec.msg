# MapSpec
# Map coordinate system specification.
# Service: /Service_MoraiMapSpec (response)

int32 plane_coordinate_system  # Coordinate system type (0: UTM CRS, 1: TM CRS)
int32 utm_num  # UTM zone number, range 1~60

geometry_msgs/Vector3 utm_offset  # Local offset [x, y, z]

string ellipse  # Ellipsoid type (e.g., WGS84, GRS80)
float64 central_latitude  # Central latitude (x-axis origin)
float64 central_meridian  # Central longitude (y-axis origin)
float64 scale_factor  # Scale multiplier, typically 1.0
float64 false_easting  # Additional x-axis offset
float64 false_northing  # Additional y-axis offset

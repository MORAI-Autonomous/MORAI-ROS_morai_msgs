# GPSMessage
# GPS position data with local coordinate offsets.

Header header

float64 latitude  # Geographic latitude [deg]
float64 longitude  # Geographic longitude [deg]
float64 altitude  # Altitude above sea level [m]

float64 eastOffset  # East (X) offset from map origin [m]
float64 northOffset  # North (Y) offset from map origin [m]
int16 status  # GPS status indicator

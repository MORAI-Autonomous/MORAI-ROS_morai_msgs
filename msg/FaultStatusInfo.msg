# FaultStatusInfo
# Overall fault status information for a vehicle and its sensors.

Header header

int32 unique_id  # Vehicle identifier
FaultStatusInfo_Vehicle vehicle  # Vehicle subsystem fault statuses
FaultStatusInfo_Sensor[] sensors  # Sensor fault statuses

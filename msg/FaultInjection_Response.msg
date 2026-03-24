# FaultInjection_Response
# Response after a fault injection operation.

bool result  # true: success, false: failure

int32 unique_id  # Vehicle identifier
FaultStatusInfo_Vehicle vehicle  # Current vehicle fault status
FaultStatusInfo_Sensor[] sensors  # Current sensor fault statuses

# SyncModeCmdResponse
# Response to a sync mode command.

string user_id  # User identifier
uint64 frame  # Current frame number
bool result  # true: success, false: failure
uint32 time_step  # Time step value [ms]

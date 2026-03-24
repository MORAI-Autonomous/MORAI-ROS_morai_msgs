# SyncModeInfo
# Current synchronous simulation mode status.

string master_id  # Master/synchronization controller ID
bool status  # Sync mode active status
uint64 frame  # Current frame number

bool can_send_tick  # true: ready to accept next tick signal

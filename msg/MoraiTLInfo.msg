# MoraiTLInfo
# Traffic light information returned by the TL service.
# Service: /Morai_TLSrv (response)

Header header
string idx  # Unique index of the traffic light
int16 status  # Light status (0x0001: Red, 0x0100: Yellow, 0x010000: Green, 0x00200000: Green left arrow, -1: not lit)

# Services Overview

This section contains documentation for all ROS1 service definitions in the `morai_msgs` package.

## Available Services

### Simulation Management

- **[MoraiScenarioLoadSrv](MoraiScenarioLoadSrv.md)** - Load simulation scenarios
- **[MoraiSimProcSrv](MoraiSimProcSrv.md)** - Control simulator process lifecycle
- **[MoraiEventCmdSrv](MoraiEventCmdSrv.md)** - Send event commands to simulator

### Traffic & Infrastructure

- **[MoraiTLInfoSrv](MoraiTLInfoSrv.md)** - Query traffic light information

### Vehicle Configuration

- **[MoraiVehicleSpecSrv](MoraiVehicleSpecSrv.md)** - Query vehicle specifications

### Map & Environment

- **[MoraiMapSpecSrv](MoraiMapSpecSrv.md)** - Query map specifications

### Sync Mode

- **[MoraiSyncModeCmdSrv](MoraiSyncModeCmdSrv.md)** - Start/stop sync mode
- **[MoraiWaitForTickSrv](MoraiWaitForTickSrv.md)** - Wait for simulation tick
- **[MoraiSyncModeCtrlCmdSrv](MoraiSyncModeCtrlCmdSrv.md)** - Vehicle control in sync mode
- **[MoraiSyncModeSetGearSrv](MoraiSyncModeSetGearSrv.md)** - Set gear in sync mode
- **[MoraiSyncModeSLSrv](MoraiSyncModeSLSrv.md)** - Load scenario in sync mode
- **[MoraiSyncModeAddObjectSrv](MoraiSyncModeAddObjectSrv.md)** - Add object in sync mode
- **[MoraiSyncModeRemoveObjectSrv](MoraiSyncModeRemoveObjectSrv.md)** - Remove object in sync mode

### Fault Injection

- **[FaultInjectionCtrlSrv](FaultInjectionCtrlSrv.md)** - Inject controller faults
- **[FaultInjectionSensorSrv](FaultInjectionSensorSrv.md)** - Inject sensor faults
- **[FaultInjectionTireSrv](FaultInjectionTireSrv.md)** - Inject tire faults

### Specialized

- **[PREventSrv](PREventSrv.md)** - Personal robot events
- **[MultiPlayEventSrv](MultiPlayEventSrv.md)** - Multi-play events
- **[WoowaDillyEventCmdSrv](WoowaDillyEventCmdSrv.md)** - Dilly delivery robot events

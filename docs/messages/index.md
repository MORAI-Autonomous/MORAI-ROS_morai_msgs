# Messages Overview

This section contains documentation for all ROS1 message definitions in the `morai_msgs` package.

## Message Categories

### Control Messages
Messages for controlling vehicle motion and behavior:

- **[CtrlCmd](CtrlCmd.md)** - Main vehicle control command
- **[GVDirectCmd](GVDirectCmd.md)** - Direct control for skid-steer ground vehicles
- **[GVStateCmd](GVStateCmd.md)** - State control for skid-steer ground vehicles
- **[VelocityCmd](VelocityCmd.md)** - Velocity command with linear and angular components
- **[WheelControl](WheelControl.md)** - Per-wheel steering and RPM control

### Vehicle Status
Messages containing real-time vehicle state information:

- **[EgoVehicleStatus](EgoVehicleStatus.md)** - Ego vehicle status telemetry
- **[EgoVehicleStatusExtended](EgoVehicleStatusExtended.md)** - Extended ego vehicle status with wheel speeds
- **[EgoDdVehicleStatus](EgoDdVehicleStatus.md)** - Differential-drive vehicle status
- **[VehicleSpec](VehicleSpec.md)** - Vehicle specifications
- **[VehicleSpecIndex](VehicleSpecIndex.md)** - Vehicle specification query
- **[Lamps](Lamps.md)** - Vehicle lamp control
- **[ERP42Info](ERP42Info.md)** - ERP42 robot platform status

### Collision & Safety
Messages related to collision detection and safety:

- **[CollisionData](CollisionData.md)** - Ego vehicle collision data
- **[VehicleCollision](VehicleCollision.md)** - NPC vehicle collision event
- **[VehicleCollisionData](VehicleCollisionData.md)** - NPC vehicle collision data container
- **[SVADC](SVADC.md)** - Safety violation and driving compliance counters

### Traffic & Infrastructure
Messages for traffic lights and infrastructure control:

- **[GetTrafficLightStatus](GetTrafficLightStatus.md)** - Query traffic light status
- **[SetTrafficLight](SetTrafficLight.md)** - Set traffic light state
- **[TrafficLight](TrafficLight.md)** - Basic traffic light information
- **[MoraiTLInfo](MoraiTLInfo.md)** - Traffic light service response
- **[MoraiTLIndex](MoraiTLIndex.md)** - Traffic light service request
- **[IntersectionControl](IntersectionControl.md)** - Intersection control command
- **[IntersectionStatus](IntersectionStatus.md)** - Intersection status
- **[IntscnTL](IntscnTL.md)** - Intersection traffic light states

### Perception & Sensors
Messages for sensor data and object detection:

- **[ObjectStatus](ObjectStatus.md)** - Single object state
- **[ObjectStatusList](ObjectStatusList.md)** - List of nearby objects
- **[ObjectStatusExtended](ObjectStatusExtended.md)** - Extended single object state
- **[ObjectStatusListExtended](ObjectStatusListExtended.md)** - Extended list of nearby objects
- **[RadarDetection](RadarDetection.md)** - Single radar detection point
- **[RadarDetections](RadarDetections.md)** - Array of radar detections
- **[GPSMessage](GPSMessage.md)** - GPS position data
- **[SensorPosControl](SensorPosControl.md)** - Sensor position control
- **[TOF](TOF.md)** - Time-of-flight sensor measurement
- **[Obstacle](Obstacle.md)** - Static obstacle with dimensions
- **[Obstacles](Obstacles.md)** - Array of static obstacles
- **[Transforms](Transforms.md)** - Array of stamped transforms

### Simulation Control
Messages for simulator configuration and management:

- **[MoraiSimProcHandle](MoraiSimProcHandle.md)** - Simulator process control
- **[MoraiSimProcStatus](MoraiSimProcStatus.md)** - Simulator process status
- **[MoraiSrvResponse](MoraiSrvResponse.md)** - Generic service response
- **[ScenarioLoad](ScenarioLoad.md)** - Scenario loading
- **[EventInfo](EventInfo.md)** - Event control information
- **[ReplayInfo](ReplayInfo.md)** - Replay data
- **[SaveSensorData](SaveSensorData.md)** - Save sensor data configuration
- **[MultiEgoSetting](MultiEgoSetting.md)** - Multi-ego vehicle settings
- **[ExternalForce](ExternalForce.md)** - External force application

### Ghost & NPC
Messages for non-player character control:

- **[GhostMessage](GhostMessage.md)** - Ghost vehicle re-simulation
- **[NpcGhostCmd](NpcGhostCmd.md)** - NPC ghost command container
- **[NpcGhostInfo](NpcGhostInfo.md)** - NPC ghost vehicle information

### Map
Messages for map specifications:

- **[MapSpec](MapSpec.md)** - Map coordinate system specification
- **[MapSpecIndex](MapSpecIndex.md)** - Map specification query

### Sync Mode
Messages for synchronous simulation mode:

- **[SyncModeCmd](SyncModeCmd.md)** - Start/stop sync mode
- **[SyncModeCmdResponse](SyncModeCmdResponse.md)** - Sync mode command response
- **[SyncModeCtrlCmd](SyncModeCtrlCmd.md)** - Vehicle control in sync mode
- **[SyncModeInfo](SyncModeInfo.md)** - Sync mode status
- **[SyncModeAddObject](SyncModeAddObject.md)** - Add object in sync mode
- **[SyncModeRemoveObject](SyncModeRemoveObject.md)** - Remove object in sync mode
- **[SyncModeResultResponse](SyncModeResultResponse.md)** - Sync operation result
- **[SyncModeScenarioLoad](SyncModeScenarioLoad.md)** - Load scenario in sync mode
- **[SyncModeSetGear](SyncModeSetGear.md)** - Set gear in sync mode
- **[WaitForTick](WaitForTick.md)** - Wait for simulation tick
- **[WaitForTickResponse](WaitForTickResponse.md)** - Tick wait response

### Fault Injection
Messages for fault injection testing:

- **[FaultInjection_Controller](FaultInjection_Controller.md)** - Controller fault injection
- **[FaultInjection_Response](FaultInjection_Response.md)** - Fault injection response
- **[FaultInjection_Sensor](FaultInjection_Sensor.md)** - Sensor fault injection
- **[FaultInjection_Tire](FaultInjection_Tire.md)** - Tire fault injection
- **[FaultStatusInfo](FaultStatusInfo.md)** - Overall fault status
- **[FaultStatusInfo_Overall](FaultStatusInfo_Overall.md)** - Subsystem fault status
- **[FaultStatusInfo_Sensor](FaultStatusInfo_Sensor.md)** - Sensor fault status
- **[FaultStatusInfo_Vehicle](FaultStatusInfo_Vehicle.md)** - Vehicle subsystem fault status

### Specialized Vehicles
Messages for platform-specific vehicles:

- **[SkateboardCtrlCmd](SkateboardCtrlCmd.md)** - Skateboard vehicle control
- **[SkateboardStatus](SkateboardStatus.md)** - Skateboard vehicle status
- **[DdCtrlCmd](DdCtrlCmd.md)** - Differential-drive control
- **[SkidSteer6wUGVCtrlCmd](SkidSteer6wUGVCtrlCmd.md)** - 6-wheel skid-steer UGV control
- **[SkidSteer6wUGVStatus](SkidSteer6wUGVStatus.md)** - 6-wheel skid-steer UGV status
- **[UGVServeSkidCtrlCmd](UGVServeSkidCtrlCmd.md)** - UGV skid/Ackermann control
- **[ShipCtrlCmd](ShipCtrlCmd.md)** - Ship control command
- **[ShipState](ShipState.md)** - Ship state telemetry
- **[PRCtrlCmd](PRCtrlCmd.md)** - Personal robot control
- **[PRStatus](PRStatus.md)** - Personal robot status
- **[PREvent](PREvent.md)** - Personal robot event

### Robot & Delivery
Messages for robot and delivery systems:

- **[DillyCmd](DillyCmd.md)** - Dilly delivery command
- **[DillyCmdResponse](DillyCmdResponse.md)** - Dilly command response
- **[WoowaDillyStatus](WoowaDillyStatus.md)** - Dilly delivery robot status
- **[ManipulatorControl](ManipulatorControl.md)** - 6-axis manipulator control
- **[RobotOutput](RobotOutput.md)** - Robot output status flags
- **[RobotState](RobotState.md)** - Robot operational state
- **[Conveyor](Conveyor.md)** - Conveyor belt state
- **[CMDConveyor](CMDConveyor.md)** - Conveyor sensor status

### Multi-Play
Messages for multi-player sessions:

- **[MultiPlayEventRequest](MultiPlayEventRequest.md)** - Multi-play event request
- **[MultiPlayEventResponse](MultiPlayEventResponse.md)** - Multi-play event response

### Utility
General-purpose utility messages:

- **[GeoVector3Message](GeoVector3Message.md)** - Generic 3D vector

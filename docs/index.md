# MORAI ROS1 Messages Documentation

Welcome to the documentation for the MORAI ROS1 message and service definitions package.

## Overview

The `morai_msgs` package provides ROS1 message and service definitions for interfacing with **MORAI SIM: Drive**, an autonomous driving simulator. This package enables communication between ROS1 nodes and the MORAI simulator for vehicle control, sensor data, and simulation management.

## Notice

This Github pages site only contains definitions for quick and easy reference, and is an auto-generated site. For more in-depth explanation, also refer to the main [documentation](https://morai-sim-drive-user-manual-en-24-r2.scrollhelp.site/morai-sim-drive-user-manual-en-24.r2/Working-version/ros-communication-message).

Do note, however the main docs are not version controlled. This site is used to track version changes instead.

## Package Contents

### Messages

The package includes **91 message definitions** organized into the following categories:

- **Control Messages**: Vehicle control commands (CtrlCmd, GVDirectCmd, GVStateCmd)
- **Vehicle Status**: Real-time vehicle state information (EgoVehicleStatus, VehicleSpec, Lamps)
- **Collision & Safety**: Collision detection and safety metrics (CollisionData, VehicleCollision, SVADC)
- **Traffic & Infrastructure**: Traffic lights and intersections (GetTrafficLightStatus, SetTrafficLight, IntersectionControl)
- **Perception & Sensors**: Sensor data and object detection (ObjectStatus, RadarDetection, GPSMessage)
- **Simulation Control**: Simulator configuration and events (ScenarioLoad, EventInfo, ReplayInfo)
- **Ghost & NPC**: Non-player character control (GhostMessage, NpcGhostCmd, NpcGhostInfo)
- **Map**: Map specifications (MapSpec)
- **Sync Mode**: Synchronous simulation control (SyncModeCmd, WaitForTick)
- **Fault Injection**: Fault injection testing (FaultInjection_Controller, FaultInjection_Sensor)
- **Specialized Vehicles**: Platform-specific messages (Skateboard, SkidSteer6wUGV, Ship, PR)
- **Robot & Delivery**: Robot and delivery systems (DillyCmd, ManipulatorControl, RobotState)

### Services

The package includes **19 service definitions** for event management, map queries, simulation control, traffic lights, vehicle specs, sync mode, fault injection, and more.

## Compatibility

These message definitions are compatible with ROS1 **Melodic or later**. They have been tested with ROS1 Noetic on Ubuntu 20.04.

## Quick Start

```bash
# Clone into your catkin workspace
cd ~/catkin_ws/src
git clone https://github.com/MORAI-Autonomous/MORAI-ROS_morai_msgs.git morai_msgs

# Build
cd ~/catkin_ws
catkin_make

# Source
source devel/setup.bash
```

## Navigation

Use the navigation menu to explore:

- **[Messages](messages/index.md)**: Browse all message definitions by category
- **[Services](services/index.md)**: Browse all service definitions

## Resources

- [GitHub Repository](https://github.com/MORAI-Autonomous/MORAI-ROS_morai_msgs)
- [MORAI Official Website](https://www.morai.ai/)
- [MORAI SIM Manual (English)](https://morai-sim-drive-user-manual-en-24-r2.scrollhelp.site/morai-sim-drive-user-manual-en-24.r2/Working-version/)
- [ROS Protocol Documentation](https://morai-sim-drive-user-manual-en-24-r2.scrollhelp.site/morai-sim-drive-user-manual-en-24.r2/Working-version/ros-communication-message)

## License

This project is licensed under the [MIT License](https://github.com/MORAI-Autonomous/MORAI-ROS_morai_msgs/blob/master/LICENSE).

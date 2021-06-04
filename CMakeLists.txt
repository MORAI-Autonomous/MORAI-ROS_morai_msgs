cmake_minimum_required(VERSION 2.8.3)
project(morai_msgs)


find_package(catkin REQUIRED COMPONENTS
  std_msgs
  geometry_msgs
  message_generation
)

 add_message_files(
   DIRECTORY msg
   FILES
   CtrlCmd.msg
   EgoVehiclePosition.msg
   EgoVehicleStatus.msg
   EgoVehicleVelocity.msg
   FactoryAddress.msg
   GPSMessage.msg
   GuideData.msg
   ObjectInfo.msg
   ScenarioLoad.msg
   SVehicleStatus.msg
   TrafficLight.msg
   VehicleCommand.msg
   VelPlot.msg
   ERP42Info.msg
   GetTrafficLightStatus.msg
   SetTrafficLight.msg
   IntersectionControl.msg
   IntersectionStatus.msg
   CollisionData.msg
   MultiEgoSetting.msg
   IntscnTL.msg
   SensorPosControl.msg
   GenericVehicleControl.msg
   SaveSensorData.msg
   MoraiTimestamp.msg
   GhostMessage.msg
   Lamps.msg
   MoraiTLInfo.msg
   MoraiSimProcHandle.msg
   MoraiSimProcStatus.msg
   MoraiSrvResponse.msg
   MoraiTLIndex.msg
   RadarTrack.msg
   RadarTracks.msg
   Mgeo.msg
   MgeoLink.msg
   MgeoLinkList.msg
   MgeoNode.msg
   MgeoNodeList.msg
   EventInfo.msg
   ReplayInfo.msg
   ObjectStatus.msg
   ObjectStatusList.msg
   VehicleSpecIndex.msg
   VehicleSpec.msg

 )

 add_service_files(
   DIRECTORY srv
   FILES
   MoraiScenarioLoadSrv.srv
   MoraiSimProcSrv.srv
   MoraiTLInfoSrv.srv
   MoraiVehicleSpecSrv.srv
   MoraiEventCmdSrv.srv
 )


 generate_messages(
   DEPENDENCIES
   geometry_msgs
   std_msgs
 )

catkin_package(
  CATKIN_DEPENDS 
  std_msgs 
  geometry_msgs
  message_runtime
)


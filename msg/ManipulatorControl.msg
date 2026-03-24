# ManipulatorControl
# Control command for a 6-axis robotic manipulator with gripper.

int32 ControlType  # Control type identifier
float32 x1  # Joint/axis 1 value
float32 x2  # Joint/axis 2 value
float32 x3  # Joint/axis 3 value
float32 x4  # Joint/axis 4 value
float32 x5  # Joint/axis 5 value
float32 x6  # Joint/axis 6 value
bool GripperStatus  # true: gripper closed, false: gripper open

cmake_minimum_required(VERSION 3.0.2)
project(common)

# add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  geometry_msgs
  message_generation
  actionlib_msgs
  actionlib
)

add_message_files(
   FILES
   RobotCFG.msg
   can.msg
   servo_cmd.msg
   servo_encoder.msg
   safe_gpio_set.msg
   peripheral_uart.msg
   move_action.msg
   Speed.msg
   Qrcode.msg
   Action.msg
   g_plan.msg
   g_plan_list.msg
   task.msg
   reflect_error.msg
   ForkAction.msg
   SoundSelectNumber.msg
   ConstErrorCode.msg
   Gen.msg
   MIB.msg
   MoveBase.msg
   gpio.msg
   moving_state.msg
   Battery.msg
   LightState.msg
   motion_state.msg
   ERROR.msg
   omv_cmd.msg
   omv_servo_cmd.msg
   omv_servo_encoder.msg
   euler_angle.msg
   fork_measure.msg
   ForkState.msg
   battery.msg
   plan_input.msg
   vehicle_state.msg 
   PathLine.msg
   PathArccircle.msg
   PathContinuous.msg
   servo_omv_cmd.msg
   PathArccircle.msg
   PathContinuous.msg
   PathLine.msg
   PathRotation.msg
   MovingTaskFeedback.msg
   remote_ctrl_mode.msg
   task_report.msg
   io.msg
   write_io_register.msg
   pressure_sensor.msg
   SeniorCmd.msg
)
## Generate services in the 'srv' folder
add_service_files(
   FILES
   SoundState_set.srv
   EHandle_clear_all.srv
   EHandle_set.srv
   EHandle_get.srv
   Tasks.srv
   ForkFloor.srv
   Forkcontrol.srv
   LightSet.srv
   ClosedID.srv
   SetIdThreshold.srv
   TrajectoryQuery.srv
   Forkmeasure.srv
   bluesea_control.srv
   bluesea_defencezone.srv
)

add_action_files(
   FILES
   fork_control.action
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
  actionlib_msgs
)

catkin_package(
  INCLUDE_DIRS 
 # LIBRARIES
#  LIBRARIES usbcannodemessage_runtime
 CATKIN_DEPENDS geometry_msgs roscpp rospy std_msgs message_runtime 
#  DEPENDS system_lib
)
include_directories(
  ${catkin_INCLUDE_DIRS}
  ${PROTOBUF_INCLUDE_DIR}
  #${catkin_LIB_DIRS} 
)

include_directories(
 ${catkin_LIB_DIRS}
)

link_directories(
  ${catkin_LIB_DIRS} 
)


install(DIRECTORY include/${PROJECT_NAME}/
DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
FILES_MATCHING PATTERN "*.h"
PATTERN ".svn" EXCLUDE
)

install(DIRECTORY vehicle_config
DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
install(DIRECTORY amcl_config
DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
install(DIRECTORY maps_config
DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
install(DIRECTORY network_config
DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
install(DIRECTORY robot_config
DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
## System dependencies are found with CMake's conventions
list(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)
include(FindProtobuf)
find_package(Protobuf REQUIRED)
 
set(proto_dir ${PROJECT_SOURCE_DIR}/proto)
file(GLOB proto_files "${proto_dir}/*.proto")

# Set up destination directories
catkin_destinations()
set(proto_gen_dir ${CATKIN_DEVEL_PREFIX}/${CATKIN_GLOBAL_INCLUDE_DESTINATION}/common)
set(proto_gen_cpp_dir ${proto_gen_dir})
file(MAKE_DIRECTORY ${proto_gen_dir})
file(MAKE_DIRECTORY ${proto_gen_cpp_dir})
set(protogen_include_dirs ${proto_gen_cpp_dir}/../ ${proto_gen_python_dir})

# Create lists of files to be generated
set(proto_gen_cpp_files "")
foreach(proto_file ${proto_files})  
  get_filename_component(proto_name ${proto_file} NAME_WE)
  list(APPEND proto_gen_cpp_files 
       ${proto_gen_cpp_dir}/${proto_name}.pb.h 
       ${proto_gen_cpp_dir}/${proto_name}.pb.cc
  )
endforeach(proto_file ${proto_files}) 

# Run protoc and generate language-specific headers.
add_custom_command(
  OUTPUT ${proto_gen_cpp_files}
  COMMAND ${PROTOBUF_PROTOC_EXECUTABLE} --proto_path=${proto_dir} --cpp_out=${proto_gen_cpp_dir} ${proto_files}
  DEPENDS ${PROTOBUF_PROTOC_EXECUTABLE} ${proto_files}
  WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)
 
set_source_files_properties(${proto_gen_cpp_files} PROPERTIES GENERATED TRUE)
 
add_custom_target(${PROJECT_NAME}_generate_headers
  DEPENDS ${proto_gen_cpp_files} 
) 


# Create proto library for lining.
include_directories(${PROTOBUF_INCLUDE_DIR} ${PROTOBUF_INCLUDE_DIR}/../../)
add_library(${PROJECT_NAME}_proto ${proto_gen_cpp_files})
target_link_libraries(${PROJECT_NAME}_proto ${PROTOBUF_LIBRARY})
add_dependencies(${PROJECT_NAME}_proto ${PROJECT_NAME}_generate_headers)
 
catkin_package(
  INCLUDE_DIRS ${protogen_include_dirs}
  LIBRARIES ${PROJECT_NAME}_proto
)
 
install(TARGETS ${PROJECT_NAME}_proto
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY ${proto_gen_cpp_dir}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  FILES_MATCHING PATTERN "*.h"
)

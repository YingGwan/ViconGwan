cmake_minimum_required(VERSION 3.0.0)
project(ExeViconGwan)

set (CMAKE_CXX_STANDARD 11)
set (CMAKE_CXX_STANDARD_REQUIRED ON)
set(VICON_SDK_DIR ${CMAKE_CURRENT_SOURCE_DIR}/externalDependencies/vicon-datastream-sdk/)

###########
## Build ##
###########

## Additional include folders
set(my_include_directories
  include
  ${VICON_SDK_DIR}/Vicon/CrossMarket/DataStream/ViconDataStreamSDK_CPP
  ${VICON_SDK_DIR}/Vicon/CrossMarket/StreamCommon
  ${VICON_SDK_DIR}/Vicon/CrossMarket/DataStream
  ${CMAKE_SOURCE_DIR}/include
  ${CMAKE_SOURCE_DIR}/externalDependencies/eigen3
 
)
set(my_link_directories ${VICON_SDK_DIR})

set(my_files
  src/main.cpp
  src/ViconClient.cpp
)

set(my_libraries
  ViconDataStreamSDK_CPP
)


include_directories(
  ${my_include_directories}
)

link_directories(
  ${my_link_directories}
)

## Declare a cpp library
add_executable(${CMAKE_PROJECT_NAME}
  ${my_files}
)

## Specify libraries to link a library or executable target against
target_link_libraries(${CMAKE_PROJECT_NAME}
  ${my_libraries}
)


#post-build: copy dlls to bin folder
file(GLOB boost168DLL
	${CMAKE_SOURCE_DIR}/boost1_68/lib64-msvc-14.0/*.dll)
	
add_custom_command(TARGET ${CMAKE_PROJECT_NAME}
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy ${boost168DLL} $<TARGET_FILE_DIR:${PROJECT_NAME}>
	COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_SOURCE_DIR}/externalDependencies/vicon-datastream-sdk/ViconDataStreamSDK_CPP.dll $<TARGET_FILE_DIR:${PROJECT_NAME}>
	COMMENT "Copy dll file to ${CMAKE_CURRENT_BINARY_DIR} directory" VERBATIM
)



#############
## Testing ##
#############

## Add gtest based cpp test target and link libraries
# catkin_add_gtest(${PROJECT_NAME}-test test/test_crazyflie.cpp)
# if(TARGET ${PROJECT_NAME}-test)
#   target_link_libraries(${PROJECT_NAME}-test ${PROJECT_NAME})
# endif()

## Add folders to be run by python nosetests
# catkin_add_nosetests(test)


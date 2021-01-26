# Install script for directory: D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/out/install/x64-Debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/AdolcForward"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/AlignedVector3"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/ArpackSupport"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/AutoDiff"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/BVH"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/EulerAngles"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/FFT"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/IterativeSolvers"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/KroneckerProduct"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/LevenbergMarquardt"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/MatrixFunctions"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/MoreVectorization"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/MPRealSupport"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/NonLinearOptimization"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/NumericalDiff"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/OpenGLSupport"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/Polynomials"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/Skyline"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/SparseExtra"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/SpecialFunctions"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/Splines"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE DIRECTORY FILES "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/unsupported/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/out/build/x64-Debug/unsupported/Eigen/CXX11/cmake_install.cmake")

endif()


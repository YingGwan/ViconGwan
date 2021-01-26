# Install script for directory: D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE FILE FILES
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/Cholesky"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/CholmodSupport"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/Core"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/Dense"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/Eigen"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/Eigenvalues"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/Geometry"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/Householder"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/IterativeLinearSolvers"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/Jacobi"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/KLUSupport"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/LU"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/MetisSupport"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/OrderingMethods"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/PaStiXSupport"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/PardisoSupport"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/QR"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/QtAlignedMalloc"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/SPQRSupport"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/SVD"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/Sparse"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/SparseCholesky"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/SparseCore"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/SparseLU"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/SparseQR"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/StdDeque"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/StdList"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/StdVector"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/SuperLUSupport"
    "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/UmfPackSupport"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE DIRECTORY FILES "D:/ShapeLabEmpty/ShapeLabEmpty/eigen3/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()


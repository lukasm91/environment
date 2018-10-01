#!/usr/bin/env bash
prgenv=`module list -t 2>&1 | grep 'PrgEnv-'`
if [ -z "${prgenv}" ]; then
    module load PrgEnv-pgi
else
    module swap ${prgenv} PrgEnv-pgi
fi

module load CMake
module load craype-accel-nvidia60

module unload pgi
module load pgi/16.9.0
# Load gcc/5.3.0 to link with the C++ Dynamical Core
module load gcc/5.3.0

module load cray-netcdf

# Boost
export BOOST_ROOT=/scratch/snx3000/jenkins/install/boost/boost_1_64_0
export LD_LIBRARY_PATH=${BOOST_ROOT}/lib:${LD_LIBRARY_PATH}

# Add an explicit linker line for GCC to provide C++11 support
export LDFLAGS="-L$GCC_PATH/snos/lib64 ${LDFLAGS}"

# Override C++ and C compiler
export CXX=$GCC_PATH/snos/bin/g++
export CC=$GCC_PATH/snos/bin/gcc
export FC=ftn

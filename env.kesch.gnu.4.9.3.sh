#!/usr/bin/env bash

module purge
module load craype-haswell
module load craype-network-infiniband
module load mvapich2gdr_gnu/2.1_cuda_7.0
module load GCC/4.9.3-binutils-2.25
module load cray-libsci_acc/3.3.0
module load CMake/3.8.1
module load netCDF-Fortran
module load HDF5


export LD_LIBRARY_PATH=${CRAY_LD_LIBRARY_PATH}:${LD_LIBRARY_PATH}
export BOOST_ROOT=/project/c14/install/kesch/boost/boost_1_65_1/
export LD_LIBRARY_PATH=${BOOST_ROOT}/lib:${LD_LIBRARY_PATH}

export CC=`which gcc`
export CXX=`which g++`
export FC=`which gfortran`

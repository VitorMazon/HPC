# 
# This file is part of the SIESTA package.
#
# Copyright (c) Fundacion General Universidad Autonoma de Madrid:
# E.Artacho, J.Gale, A.Garcia, J.Junquera, P.Ordejon, D.Sanchez-Portal
# and J.M.Soler, 1996- .
# 
# Use of this software constitutes agreement with the full conditions
# given in the SIESTA license, as signed by all legitimate users.
#
SIESTA_ARCH=intel-mkl
#
# Intel fortran compiler for linux with mkl optimized blas and lapack
#
# Be sure to experiment with different optimization options.
# You have quite a number of combinations to try...
#
FC=ifort 
#
DUMMY_FOX= --enable-dummy
#
FFLAGS= -w -mp1 #-xSSE4.2 -ip -zero -O2 -DMPI -Vaxlib -lpthread 
FFLAGS_DEBUG= -g 
LDFLAGS=-Vaxlib 
COMP_LIBS=
RANLIB=echo
#
NETCDF_LIBS=
NETCDF_INTERFACE=
FPPFLAGS_CDF=
#
#MPI_INTERFACE=
#MPI_INCLUDE=
#FPPFLAGS_MPI=
#
#MPI          = /opt/intel/compilers_and_libraries/linux/mpi
#MPI_INTERFACE= libmpi_f90.a
#MPI_INCLUDE  = $(MPI)/include64
#DEFS_MPI     = -DMPI
#MPI_LIBS     = $(MPI)/lib64/libmpifort.a
#FPPFLAGS_MPI = -O2 -zero -mp1 -xSSE4.2 -ipo -Vaxlib 
MKL = /opt/intel/compilers_and_libraries/linux/mkl/lib/intel64
INTEL_LIBS = $(MKL)/libmkl_intel_lp64.a $(MKL)/libmkl_sequential.a $(MKL)/libmkl_core.a \
#$(MKL)/libmkl_scalapack_lp64.a $(MKL)/libmkl_blacs_intelmpi_lp64.a
LIBS= -Wl,--start-group $(INTEL_LIBS) -Wl,--end-group $(MPI_LIBS) -lpthread
#LIBS= $(SCALAPACK) $(BLACS) $(LAPACK) $(BLAS) $(MPI_LIBS) -lguide -lpthread

#GUIDE=/opt/intel/mkl/lib/32/libguide.a
#LAPACK=/opt/intel/mkl/lib/32/libmkl_lapack.a
#BLAS=/opt/intel/mkl/lib/32/libmkl_p3.a
#G2C=/usr/lib/gcc-lib/i386-redhat-linux/2.96/libg2c.a
#LIBS=$(LAPACK) $(BLAS) $(G2C) $(GUIDE)  -lpthread 
SYS=bsd
FPPFLAGS= $(FPPFLAGS_CDF) $(FPPFLAGS_MPI)
#
.F.o:
	$(FC) -c $(FFLAGS) $(INCFLAGS)  $(FPPFLAGS) $<
.f.o:
	$(FC) -c $(FFLAGS) $(INCFLAGS)   $<
.F90.o:
	$(FC) -c $(FFLAGS) $(INCFLAGS)  $(FPPFLAGS) $<
.f90.o:
	$(FC) -c $(FFLAGS) $(INCFLAGS)   $<
#


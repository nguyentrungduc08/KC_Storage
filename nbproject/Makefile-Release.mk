#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/gen-cpp/KC_Storage.o \
	${OBJECTDIR}/gen-cpp/kc_storage_constants.o \
	${OBJECTDIR}/gen-cpp/kc_storage_types.o \
	${OBJECTDIR}/gen-cpp/main.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f1

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/kc_storage

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/kc_storage: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/kc_storage ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/gen-cpp/KC_Storage.o: gen-cpp/KC_Storage.cpp 
	${MKDIR} -p ${OBJECTDIR}/gen-cpp
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/gen-cpp/KC_Storage.o gen-cpp/KC_Storage.cpp

${OBJECTDIR}/gen-cpp/kc_storage_constants.o: gen-cpp/kc_storage_constants.cpp 
	${MKDIR} -p ${OBJECTDIR}/gen-cpp
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/gen-cpp/kc_storage_constants.o gen-cpp/kc_storage_constants.cpp

${OBJECTDIR}/gen-cpp/kc_storage_types.o: gen-cpp/kc_storage_types.cpp 
	${MKDIR} -p ${OBJECTDIR}/gen-cpp
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/gen-cpp/kc_storage_types.o gen-cpp/kc_storage_types.cpp

${OBJECTDIR}/gen-cpp/main.o: gen-cpp/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/gen-cpp
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/gen-cpp/main.o gen-cpp/main.cpp

# Subprojects
.build-subprojects:

# Build Test Targets
.build-tests-conf: .build-conf ${TESTFILES}
${TESTDIR}/TestFiles/f1: ${TESTDIR}/tests/newsimpletest.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc}   -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS} 


${TESTDIR}/tests/newsimpletest.o: tests/newsimpletest.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I. -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/newsimpletest.o tests/newsimpletest.cpp


${OBJECTDIR}/gen-cpp/KC_Storage_nomain.o: ${OBJECTDIR}/gen-cpp/KC_Storage.o gen-cpp/KC_Storage.cpp 
	${MKDIR} -p ${OBJECTDIR}/gen-cpp
	@NMOUTPUT=`${NM} ${OBJECTDIR}/gen-cpp/KC_Storage.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/gen-cpp/KC_Storage_nomain.o gen-cpp/KC_Storage.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/gen-cpp/KC_Storage.o ${OBJECTDIR}/gen-cpp/KC_Storage_nomain.o;\
	fi

${OBJECTDIR}/gen-cpp/kc_storage_constants_nomain.o: ${OBJECTDIR}/gen-cpp/kc_storage_constants.o gen-cpp/kc_storage_constants.cpp 
	${MKDIR} -p ${OBJECTDIR}/gen-cpp
	@NMOUTPUT=`${NM} ${OBJECTDIR}/gen-cpp/kc_storage_constants.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/gen-cpp/kc_storage_constants_nomain.o gen-cpp/kc_storage_constants.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/gen-cpp/kc_storage_constants.o ${OBJECTDIR}/gen-cpp/kc_storage_constants_nomain.o;\
	fi

${OBJECTDIR}/gen-cpp/kc_storage_types_nomain.o: ${OBJECTDIR}/gen-cpp/kc_storage_types.o gen-cpp/kc_storage_types.cpp 
	${MKDIR} -p ${OBJECTDIR}/gen-cpp
	@NMOUTPUT=`${NM} ${OBJECTDIR}/gen-cpp/kc_storage_types.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/gen-cpp/kc_storage_types_nomain.o gen-cpp/kc_storage_types.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/gen-cpp/kc_storage_types.o ${OBJECTDIR}/gen-cpp/kc_storage_types_nomain.o;\
	fi

${OBJECTDIR}/gen-cpp/main_nomain.o: ${OBJECTDIR}/gen-cpp/main.o gen-cpp/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/gen-cpp
	@NMOUTPUT=`${NM} ${OBJECTDIR}/gen-cpp/main.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/gen-cpp/main_nomain.o gen-cpp/main.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/gen-cpp/main.o ${OBJECTDIR}/gen-cpp/main_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f1 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/kc_storage

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc

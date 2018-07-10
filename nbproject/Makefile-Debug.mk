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
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/src/KC_Storage.o \
	${OBJECTDIR}/src/kc_storage_constants.o \
	${OBJECTDIR}/src/kc_storage_types.o \
	${OBJECTDIR}/src/main.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f1

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=-std=c++11
CXXFLAGS=-std=c++11

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
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/kc_storage ${OBJECTFILES} ${LDLIBSOPTIONS} -lthrift -lthriftnb -levent -lkyotocabinet -lz -lstdc++ -lrt -lpthread -lm -lc -lPocoUtil -lPocoXML -lPocoJSON -lPocoNet -lPocoFoundation

${OBJECTDIR}/src/KC_Storage.o: src/KC_Storage.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include/boost -I/usr/local/include/thrift -I/usr/local/include/Poco -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/KC_Storage.o src/KC_Storage.cpp

${OBJECTDIR}/src/kc_storage_constants.o: src/kc_storage_constants.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include/boost -I/usr/local/include/thrift -I/usr/local/include/Poco -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/kc_storage_constants.o src/kc_storage_constants.cpp

${OBJECTDIR}/src/kc_storage_types.o: src/kc_storage_types.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include/boost -I/usr/local/include/thrift -I/usr/local/include/Poco -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/kc_storage_types.o src/kc_storage_types.cpp

${OBJECTDIR}/src/main.o: src/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/usr/local/include/boost -I/usr/local/include/thrift -I/usr/local/include/Poco -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/main.o src/main.cpp

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
	$(COMPILE.cc) -g -I/usr/local/include/boost -I/usr/local/include/thrift -I/usr/local/include/Poco -I. -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/newsimpletest.o tests/newsimpletest.cpp


${OBJECTDIR}/src/KC_Storage_nomain.o: ${OBJECTDIR}/src/KC_Storage.o src/KC_Storage.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/KC_Storage.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include/boost -I/usr/local/include/thrift -I/usr/local/include/Poco -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/KC_Storage_nomain.o src/KC_Storage.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/KC_Storage.o ${OBJECTDIR}/src/KC_Storage_nomain.o;\
	fi

${OBJECTDIR}/src/kc_storage_constants_nomain.o: ${OBJECTDIR}/src/kc_storage_constants.o src/kc_storage_constants.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/kc_storage_constants.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include/boost -I/usr/local/include/thrift -I/usr/local/include/Poco -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/kc_storage_constants_nomain.o src/kc_storage_constants.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/kc_storage_constants.o ${OBJECTDIR}/src/kc_storage_constants_nomain.o;\
	fi

${OBJECTDIR}/src/kc_storage_types_nomain.o: ${OBJECTDIR}/src/kc_storage_types.o src/kc_storage_types.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/kc_storage_types.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include/boost -I/usr/local/include/thrift -I/usr/local/include/Poco -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/kc_storage_types_nomain.o src/kc_storage_types.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/kc_storage_types.o ${OBJECTDIR}/src/kc_storage_types_nomain.o;\
	fi

${OBJECTDIR}/src/main_nomain.o: ${OBJECTDIR}/src/main.o src/main.cpp 
	${MKDIR} -p ${OBJECTDIR}/src
	@NMOUTPUT=`${NM} ${OBJECTDIR}/src/main.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -I/usr/local/include/boost -I/usr/local/include/thrift -I/usr/local/include/Poco -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/main_nomain.o src/main.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/src/main.o ${OBJECTDIR}/src/main_nomain.o;\
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

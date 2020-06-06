%########################################################################
%# Copyright (c) 1988-2017 $organization$
%#
%# This software is provided by the author and contributors ``as is'' 
%# and any express or implied warranties, including, but not limited to, 
%# the implied warranties of merchantability and fitness for a particular 
%# purpose are disclaimed. In no event shall the author or contributors 
%# be liable for any direct, indirect, incidental, special, exemplary, 
%# or consequential damages (including, but not limited to, procurement 
%# of substitute goods or services; loss of use, data, or profits; or 
%# business interruption) however caused and on any theory of liability, 
%# whether in contract, strict liability, or tort (including negligence 
%# or otherwise) arising in any way out of the use of this software, 
%# even if advised of the possibility of such damage.
%#
%#   File: framework-Gcc-Makedefines.t
%#
%# Author: $author$
%#   Date: 8/30/2017
%########################################################################
%with(%
%filepath,%(%else-then(%filepath%,%(%filepath(%input%)%)%)%)%,%
%Filepath,%(%else-then(%Filepath%,%(%filepath%)%)%)%,%
%FILEPATH,%(%else-then(%FILEPATH%,%(%toupper(%Filepath%)%)%)%)%,%
%filepath,%(%else-then(%_Filepath%,%(%tolower(%Filepath%)%)%)%)%,%
%organization,%(%else-then(%organization%,%($organization$)%)%)%,%
%Organization,%(%else-then(%Organization%,%(%organization%)%)%)%,%
%ORGANIZATION,%(%else-then(%ORGANIZATION%,%(%toupper(%Organization%)%)%)%)%,%
%organization,%(%else-then(%_Organization%,%(%tolower(%Organization%)%)%)%)%,%
%author,%(%else-then(%author%,%($author$)%)%)%,%
%Author,%(%else-then(%Author%,%(%author%)%)%)%,%
%AUTHOR,%(%else-then(%AUTHOR%,%(%toupper(%Author%)%)%)%)%,%
%author,%(%else-then(%_Author%,%(%tolower(%Author%)%)%)%)%,%
%date,%(%else-then(%date%,%(%date()%)%)%)%,%
%Date,%(%else-then(%Date%,%(%date%)%)%)%,%
%DATE,%(%else-then(%DATE%,%(%toupper(%Date%)%)%)%)%,%
%date,%(%else-then(%_Date%,%(%tolower(%Date%)%)%)%)%,%
%year,%(%else-then(%year%,%(%year()%)%)%)%,%
%Year,%(%else-then(%Year%,%(%year%)%)%)%,%
%YEAR,%(%else-then(%YEAR%,%(%toupper(%Year%)%)%)%)%,%
%year,%(%else-then(%_Year%,%(%tolower(%Year%)%)%)%)%,%
%month,%(%else-then(%month%,%(%month()%)%)%)%,%
%Month,%(%else-then(%Month%,%(%month%)%)%)%,%
%MONTH,%(%else-then(%MONTH%,%(%toupper(%Month%)%)%)%)%,%
%month,%(%else-then(%_Month%,%(%tolower(%Month%)%)%)%)%,%
%day,%(%else-then(%day%,%(%day()%)%)%)%,%
%Day,%(%else-then(%Day%,%(%day%)%)%)%,%
%DAY,%(%else-then(%DAY%,%(%toupper(%Day%)%)%)%)%,%
%day,%(%else-then(%_Day%,%(%tolower(%Day%)%)%)%)%,%
%depends,%(%else-then(%depends%,%(depends)%)%)%,%
%Depends,%(%else-then(%Depends%,%(%depends%)%)%)%,%
%DEPENDS,%(%else-then(%DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_Depends%,%(%tolower(%Depends%)%)%)%)%,%
%framework,%(%else-then(%framework%,%(framework)%)%)%,%
%Framework,%(%else-then(%Framework%,%(%framework%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_Framework%,%(%tolower(%Framework%)%)%)%)%,%
%target,%(%else-then(%target%,%()%)%)%,%
%Target,%(%else-then(%Target%,%(%target%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_Target%,%(%tolower(%Target%)%)%)%)%,%
%os,%(%else-then(%os%,%()%)%)%,%
%Os,%(%else-then(%Os%,%(%os%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_Os%,%(%tolower(%Os%)%)%)%)%,%
%makefile,%(%else-then(%makefile%,%(Makedefines)%)%)%,%
%Makefile,%(%else-then(%Makefile%,%(%makefile%)%)%)%,%
%MAKEFILE,%(%else-then(%MAKEFILE%,%(%toupper(%Makefile%)%)%)%)%,%
%makefile,%(%else-then(%_Makefile%,%(%tolower(%Makefile%)%)%)%)%,%
%extension,%(%else-then(%extension%,%(%fileextension(%file%)%)%)%)%,%
%Extension,%(%else-then(%Extension%,%(%extension%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_Extension%,%(%tolower(%Extension%)%)%)%)%,%
%file,%(%else-then(%file%,%(%Makefile%)%)%)%,%
%File,%(%else-then(%File%,%(%file%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_File%,%(%tolower(%File%)%)%)%)%,%
%title,%(%else-then(%title%,%(generic Gcc %Makefile%)%)%)%,%
%Title,%(%else-then(%Title%,%(%title%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_Title%,%(%tolower(%Title%)%)%)%)%,%
%%(%
%%include(%Filepath%/Makefile-file.t)%%
%ifndef BUILD_HOME
BUILD_HOME = $(HOME)
endif

ifndef BUILD_TYPE
BUILD_TYPE = Debug
endif

ifeq ($(BUILD_TYPE),Debug)
DBGFLAGS = -D_DEBUG -g
BUILD_DEFINE = -DDEBUG_BUILD
else
DBGFLAGS = -D_RELEASE
BUILD_DEFINE = -DRELEASE_BUILD
endif

ifndef UNAME
UNAME = $(shell uname)
endif

ifndef OS
ifneq ($(UNAME),Darwin)
OS = linux
else
OS = macosx
endif
endif

ifndef BLD
BLD = build/$(OS)
endif

ifndef INS
INS = $(BUILD_HOME)/$(BLD)
endif

PKGROOT = $(PKG)
PKGBLD = $(PKG)/$(BLD)/$(BUILD_TYPE)
BINDIR = $(PKGBLD)/bin
LIBDIR = $(PKGBLD)/lib
INSBIN = $(INS)/bin
INSLIB = $(INS)/lib

COMPILER_PATH =
COMPILER_PREFIX =

DEFINES = \
$(DBGFLAGS) \
$(BUILD_DEFINE) \

INCLUDES = \
-I$(PKG)/$(SRC) \
-I$(PKG) \

LIBDIRS	= \
-L$(LIBDIR) \

ifeq ($(OS),macosx)
STDLIBS	= \
-lpthread \
-ldl
else
STDLIBS	= \
-lpthread \
-ldl \
-lrt
endif

#
# C
#
CC = $(COMPILER_PATH)$(COMPILER_PREFIX)gcc
CCLD = $(CC)
CCDSO = $(CCLD)
OPTIM = -fpic
CFLAGS = $(OPTIM) $(USRINCLUDES) $(INCLUDES) $(DEFINES) $(USRDEFINES) $(USRDEFS) $(OPTIONS) $(USRCFLAGS) $(USRFLAGS)

#
# C++
#
CXX = $(COMPILER_PATH)$(COMPILER_PREFIX)g++
CXXLD = $(CXX)
CXXDSO = $(CXXLD)
CXXOPTIM = -fno-rtti
CXXFLAGS = $(OPTIM) $(CXXOPTIM) $(USRINCLUDES) $(INCLUDES) $(DEFINES) $(USRDEFINES) $(USRDEFS) $(OPTIONS) $(USRCXXFLAGS) $(USRFLAGS)

#
# Librarian
#
AR = $(COMPILER_PATH)$(COMPILER_PREFIX)ar
RANLIB = ranlib
STRIP = strip
LIBTOOL =
LIBEXT = a

ifeq ($(OS),macosx)
SLIBEXT = dylib
else
SLIBEXT = so
endif

#
# Filesystem
#
CHMOD =	chmod
CP =	cp
LN =	ln -sf
MV =	mv
RM =	rm -f
MKDIR =	mkdir -p
D2U  =	dos2unix

DSOFLAGS = -shared $(USRDSOFLAGS)
LDFLAGS = $(LIBDIRS) $(USRLIBDIRS) $(USRLDFLAGS) $(OPTIM) $(CXXOPTIM)
ARFLAGS = crs $(USRARFLAGS)

OPTIONS := $(shell if [ "$(BUILD_TYPE)" = "Debug" ] ; then echo -g; fi)
STRIP := $(shell if [ "$(BUILD_TYPE)" = "Debug" ] ; then echo "@echo Not Stripping"; else echo strip; fi)

#
# Rules
#
.cpp.o:
	@echo Compiling $(BUILD_TYPE) $< ...
	@$(CXX) -c $(CXXFLAGS) -o $@ $<

.cxx.o:
	@echo Compiling $(BUILD_TYPE) $< ...
	@$(CXX) -c $(CXXFLAGS) -o $@ $<

.cc.o:
	@echo Compiling $(BUILD_TYPE) $< ...
	@$(CXX) -c $(CXXFLAGS) -o $@ $<

.mm.o:
	@echo Compiling $(BUILD_TYPE) $< ...
	@$(CXX) -c $(CXXFLAGS) -o $@ $<

.c.o:
	@echo Compiling $(BUILD_TYPE) $< ...
	@$(CC) -c $(CFLAGS) -o $@ $<

.m.o:
	@echo Compiling $(BUILD_TYPE) $< ...
	@$(CC) -c $(CFLAGS) -o $@ $<

.S.o:
	@$(CC) -c -o $*.o $<

.s.o:
	@$(AS) -o $*.o $<
%
%)%)%

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
%#   File: framework-os-target-Gcc-Makefile.t
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
%out,%(%else-then(%out%,%(Lib)%)%)%,%
%Out,%(%else-then(%Out%,%(%out%)%)%)%,%
%OUT,%(%else-then(%OUT%,%(%toupper(%Out%)%)%)%)%,%
%out,%(%else-then(%_Out%,%(%tolower(%Out%)%)%)%)%,%
%lib,%(%else-then(%lib%,%(%else(%equal(EXE,%OUT%)%,Lib)%)%)%)%,%
%Lib,%(%else-then(%Lib%,%(%lib%)%)%)%,%
%LIB,%(%else-then(%LIB%,%(%toupper(%Lib%)%)%)%)%,%
%lib,%(%else-then(%_Lib%,%(%tolower(%Lib%)%)%)%)%,%
%output,%(%else-then(%output%,%(%else(%Lib%%Slib%,Executable,Library)%)%)%)%,%
%Output,%(%else-then(%Output%,%(%output%)%)%)%,%
%OUTPUT,%(%else-then(%OUTPUT%,%(%toupper(%Output%)%)%)%)%,%
%output,%(%else-then(%_Output%,%(%tolower(%Output%)%)%)%)%,%
%target,%(%else-then(%target%,%(%lib%%Framework%)%)%)%,%
%Target,%(%else-then(%Target%,%(%target%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_Target%,%(%tolower(%Target%)%)%)%)%,%
%exe,%(%else-then(%exe%,%(%else(%Lib%,%(%if(%equal(%Target%,%Framework%)%,%(_exe)%)%)%)%)%)%)%,%
%Exe,%(%else-then(%Exe%,%(%exe%)%)%)%,%
%EXE,%(%else-then(%EXE%,%(%toupper(%Exe%)%)%)%)%,%
%exe,%(%else-then(%_Exe%,%(%tolower(%Exe%)%)%)%)%,%
%isos,%(%else-then(%isos%,%()%)%)%,%
%IsOs,%(%else-then(%IsOs%,%(%isos%)%)%)%,%
%ISOS,%(%else-then(%ISOS%,%(%toupper(%IsOs%)%)%)%)%,%
%isos,%(%else-then(%_IsOs%,%(%tolower(%IsOs%)%)%)%)%,%
%os,%(%else-then(%os%,%(%else-then(%Os_input%,%(%else-no(%IsOs%,Linux)%)%)%)%)%)%,%
%Os,%(%else-then(%Os%,%(%os%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_Os%,%(%tolower(%Os%)%)%)%)%,%
%makefile,%(%else-then(%makefile%,%(Makefile)%)%)%,%
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
%title,%(%else-then(%title%,%(%if-then(%else-then(%Os%,Os)%, )%Gcc %Makefile%%then-if(%Framework%%then-if(%Output%, )%%then-if(%Target%, )%, for )%)%)%)%,%
%Title,%(%else-then(%Title%,%(%title%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_Title%,%(%tolower(%Title%)%)%)%)%,%
%%(%
%%include(%Filepath%/Makefile-file.t)%%
%%if(%os%,%(OS = %os%
)%)%%
%PKG = ../../../../../..

BMK = build/Makefile/Gcc
MAK = projects/Makefile/Gcc
PRJ = projects/%if(%os%,${OS},os)%/Makefile/Gcc
SRC = src

include $(PKG)/$(BMK)/Makedefines
include $(PKG)/$(MAK)/Makedefines
include $(PKG)/$(MAK)/Makefile
include $(PKG)/$(BMK)/Makefile
include $(PKG)/$(MAK)/%if(%Lib%,lib,app)%/%Target%/Makefile

#
# target
#
%OUT%TARGET = ${%Target%%Exe%_%OUT%TARGET}

########################################################################

#
# user defines
#
USRDEFINES += \
${%Target%%Exe%_USRDEFINES}

#
# user includes
#
USRINCLUDES += \
${%Target%%Exe%_USRINCLUDES}

#
# user libdirs
#
USRLIBDIRS += \
${%Target%%Exe%_USRLIBDIRS}

#
# user c++ flags
#
USRCXXFLAGS += \
${%Target%%Exe%_USRCXXFLAGS}

#
# user c flags
#
USRCFLAGS += \
${%Target%%Exe%_USRCFLAGS}

#
# user ld flags
#
USRLDFLAGS += \
${%Target%%Exe%_USRLDFLAGS}

########################################################################

#
# %Output% C sources
#
%OUT%_C_SOURCES += \
${%Target%%Exe%_%OUT%_C_SOURCES}

#
# %Output% C++ .cc sources
#
%OUT%_CC_SOURCES += \
${%Target%%Exe%_%OUT%_CC_SOURCES}

#
# %Output% C++ .cxx sources
#
%OUT%_CXX_SOURCES += \
${%Target%%Exe%_%OUT%_CXX_SOURCES}

#
# %Output% C++ .cpp sources
#
%OUT%_CPP_SOURCES += \
${%Target%%Exe%_%OUT%_CPP_SOURCES}

#
# %Output% Objective C .m sources
#
%OUT%_M_SOURCES += \
${%Target%%Exe%_%OUT%_M_SOURCES}

#
# %Output% Objective C++ .mm sources
#
%OUT%_MM_SOURCES += \
${%Target%%Exe%_%OUT%_MM_SOURCES}

%else(%Lib%,%(%
%########################################################################

#
# %Output% libraries
#
LIBS += \
${%Target%%Exe%_LIBS}

)%)%########################################################################

#
# %Output% depends
#
#%OUT%DEP += \
#$(PKG)/$(BLD)/libsomelib \
#
%OUT%DEP += \

#
# %Output% depend dirs
#
#%OUT%DEP_DIRS += \
#../libsomelib
#
%OUT%DEP_DIRS += \

include $(PKG)/$(MAK)/Makerules

#
# %Output% depend rules
#
#$(PKG)/$(BLD)/libsomelib.a:
#	@(echo Building libsomelib.a ...;\
#	  pushd ../libsomelib;\
#	  ((make) || (exit 1));\
#	  popd)
#
%
%)%)%

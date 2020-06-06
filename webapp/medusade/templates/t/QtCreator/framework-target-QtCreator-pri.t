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
%#   File: framework-target-QtCreator-pri.t
%#
%# Author: $author$
%#   Date: 9/2/2017
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
%depends,%(%else-then(%depends%,%()%)%)%,%
%Depends,%(%else-then(%Depends%,%(%depends%)%)%)%,%
%DEPENDS,%(%else-then(%DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_Depends%,%(%tolower(%Depends%)%)%)%)%,%
%framework,%(%else-then(%framework%,%(framework)%)%)%,%
%Framework,%(%else-then(%Framework%,%(%framework%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_Framework%,%(%tolower(%Framework%)%)%)%)%,%
%target,%(%else-then(%target%,%(%Framework%)%)%)%,%
%Target,%(%else-then(%Target%,%(%target%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_Target%,%(%tolower(%Target%)%)%)%)%,%
%os,%(%else-then(%os%,%()%)%)%,%
%Os,%(%else-then(%Os%,%(%os%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_Os%,%(%tolower(%Os%)%)%)%)%,%
%out,%(%else-then(%out%,%(Lib)%)%)%,%
%Out,%(%else-then(%Out%,%(%out%)%)%)%,%
%OUT,%(%else-then(%OUT%,%(%toupper(%Out%)%)%)%)%,%
%out,%(%else-then(%_Out%,%(%tolower(%Out%)%)%)%)%,%
%output,%(%else-then(%output%,%(%if(%equal(Lib,%Out%)%,Library,Executable)%)%)%)%,%
%Output,%(%else-then(%Output%,%(%output%)%)%)%,%
%OUTPUT,%(%else-then(%OUTPUT%,%(%toupper(%Output%)%)%)%)%,%
%output,%(%else-then(%_Output%,%(%tolower(%Output%)%)%)%)%,%
%lib,%(%else-then(%lib%,%(%equal(Lib,%Out%)%)%)%)%,%
%Lib,%(%else-then(%Lib%,%(%lib%)%)%)%,%
%LIB,%(%else-then(%LIB%,%(%toupper(%Lib%)%)%)%)%,%
%lib,%(%else-then(%_Lib%,%(%tolower(%Lib%)%)%)%)%,%
%exe,%(%else-then(%exe%,%(%if(%equal(%Target%,%Framework%)%,%(%else(%lib%,_exe)%)%)%)%)%)%,%
%Exe,%(%else-then(%Exe%,%(%exe%)%)%)%,%
%EXE,%(%else-then(%EXE%,%(%toupper(%Exe%)%)%)%)%,%
%exe,%(%else-then(%_Exe%,%(%tolower(%Exe%)%)%)%)%,%
%pro,%(%else-then(%pro%,%(pri)%)%)%,%
%Pro,%(%else-then(%Pro%,%(%pro%)%)%)%,%
%PRO,%(%else-then(%PRO%,%(%toupper(%Pro%)%)%)%)%,%
%pro,%(%else-then(%_Pro%,%(%tolower(%Pro%)%)%)%)%,%
%makefile,%(%else-then(%makefile%,%(QtCreator)%)%)%,%
%Makefile,%(%else-then(%Makefile%,%(%makefile%)%)%)%,%
%MAKEFILE,%(%else-then(%MAKEFILE%,%(%toupper(%Makefile%)%)%)%)%,%
%makefile,%(%else-then(%_Makefile%,%(%tolower(%Makefile%)%)%)%)%,%
%extension,%(%else-then(%extension%,%(%else-then(%fileextension(%file%)%,%(%Pro%)%)%)%)%)%,%
%Extension,%(%else-then(%Extension%,%(%extension%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_Extension%,%(%tolower(%Extension%)%)%)%)%,%
%file,%(%else-then(%file%,%(%lib%%Target%%then-if(%Extension%,.)%)%)%)%,%
%File,%(%else-then(%File%,%(%file%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_File%,%(%tolower(%File%)%)%)%)%,%
%title,%(%else-then(%title%,%(%Makefile%%then-if(%if-then(%Extension%, file)%, .)%%then-if(%Framework%%then-if(%output%, )%%then-if(%lib%%Target%, )%, for )%)%)%)%,%
%Title,%(%else-then(%Title%,%(%title%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_Title%,%(%tolower(%Title%)%)%)%)%,%
%%(%
%%include(%Filepath%/QtCreator-file.t)%%
%
########################################################################
# %lib%%Target%

# %lib%%Target%%exe% TARGET
#
%lib%%Target%%exe%_TARGET = %Target%%
%%if(%Lib%,%(
%lib%%Target%%exe%_TEMPLATE = lib
%lib%%Target%%exe%_CONFIG += staticlib)%)%

# %lib%%Target%%exe% INCLUDEPATH
#
%lib%%Target%%exe%_INCLUDEPATH += \
$${%Framework%_INCLUDEPATH} \

# %lib%%Target%%exe% DEFINES
#
%lib%%Target%%exe%_DEFINES += \
$${%Framework%_DEFINES} \

########################################################################
# %lib%%Target%%exe% OBJECTIVE_HEADERS
#
#%lib%%Target%%exe%_OBJECTIVE_HEADERS += \
#$${%FRAMEWORK%_SRC}/%Framework%/base/Base.hh \

# %lib%%Target%%exe% OBJECTIVE_SOURCES
#
#%lib%%Target%%exe%_OBJECTIVE_SOURCES += \
#$${%FRAMEWORK%_SRC}/%Framework%/base/Base.mm \

########################################################################
# %lib%%Target%%exe% HEADERS
#
#%lib%%Target%%exe%_HEADERS += \
#$${%FRAMEWORK%_SRC}/%Framework%/base/Base.hpp \

# %lib%%Target%%exe% SOURCES
#
#%lib%%Target%%exe%_SOURCES += \
#$${%FRAMEWORK%_SRC}/%Framework%/base/Base.cpp \

########################################################################
%else(%lib%,%(# %lib%%Target%%exe% FRAMEWORKS
#
%lib%%Target%%exe%_FRAMEWORKS += \
$${%Framework%_FRAMEWORKS} \

# %lib%%Target%%exe% LIBS
#
%lib%%Target%%exe%_LIBS += \
$${%Framework%_LIBS} \
)%)%
%
%)%)%
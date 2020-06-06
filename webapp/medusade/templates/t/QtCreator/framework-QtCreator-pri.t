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
%#   File: framework-QtCreator-pri.t
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
%target,%(%else-then(%target%,%()%)%)%,%
%Target,%(%else-then(%Target%,%(%target%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_Target%,%(%tolower(%Target%)%)%)%)%,%
%os,%(%else-then(%os%,%()%)%)%,%
%Os,%(%else-then(%Os%,%(%os%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_Os%,%(%tolower(%Os%)%)%)%)%,%
%language,%(%else-then(%language%,%(%if-no(%IsLanguage%,%()%,%(cpp)%)%)%)%)%,%
%Language,%(%else-then(%Language%,%(%language%)%)%)%,%
%LANGUAGE,%(%else-then(%LANGUAGE%,%(%toupper(%Language%)%)%)%)%,%
%language,%(%else-then(%_Language%,%(%tolower(%Language%)%)%)%)%,%
%style,%(%else-then(%style%,%(%if-no(%IsStyle%,%()%,%(xos)%)%)%)%)%,%
%Style,%(%else-then(%Style%,%(%style%)%)%)%,%
%STYLE,%(%else-then(%STYLE%,%(%toupper(%Style%)%)%)%)%,%
%style,%(%else-then(%_Style%,%(%tolower(%Style%)%)%)%)%,%
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
%file,%(%else-then(%file%,%(%Framework%%then-if(%Extension%,.)%)%)%)%,%
%File,%(%else-then(%File%,%(%file%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_File%,%(%tolower(%File%)%)%)%)%,%
%title,%(%else-then(%title%,%(%Makefile%%then-if(%if-then(%Extension%, file)%, .)%%then-if(%Framework%, for )%)%)%)%,%
%Title,%(%else-then(%Title%,%(%title%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_Title%,%(%tolower(%Title%)%)%)%)%,%
%%(%
%%include(%Filepath%/QtCreator-file.t)%%
%
OTHER_PKG = ../../../../../../..
OTHER_PRJ = ../../../../../..
OTHER_BLD = ..

THIRDPARTY_NAME = thirdparty
THIRDPARTY_PKG = $${OTHER_PKG}/$${THIRDPARTY_NAME}
THIRDPARTY_PRJ = $${OTHER_PRJ}/$${THIRDPARTY_NAME}
THIRDPARTY_SRC = $${OTHER_PRJ}/src/$${THIRDPARTY_NAME}

%parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%(%
%########################################################################
# %Depends%
%DEPENDS%_VERSION_MAJOR = 0
%DEPENDS%_VERSION_MINOR = 0
%DEPENDS%_VERSION_RELEASE = 0
%DEPENDS%_VERSION = $${%DEPENDS%_VERSION_MAJOR}.$${%DEPENDS%_VERSION_MINOR}.$${%DEPENDS%_VERSION_RELEASE}
%DEPENDS%_NAME = %Depends%
%DEPENDS%_GROUP = $${%DEPENDS%_NAME}
%DEPENDS%_SOURCE = src
%DEPENDS%_DIR = $${%DEPENDS%_GROUP}/$${%DEPENDS%_NAME}-$${%DEPENDS%_VERSION}
%DEPENDS%_PKG_DIR = $${%DEPENDS%_NAME}%then-if(%Language%,/)%%then-if(%Style%,/)%
%DEPENDS%_HOME_BUILD = $${HOME}/build/$${%DEPENDS%_NAME}
%DEPENDS%_HOME_BUILD_INCLUDE = $${%DEPENDS%_HOME_BUILD}/include
%DEPENDS%_HOME_BUILD_LIB = $${%DEPENDS%_HOME_BUILD}/lib
%DEPENDS%_THIRDPARTY_PKG = $${THIRDPARTY_PKG}/$${%DEPENDS%_DIR}
%DEPENDS%_THIRDPARTY_PRJ = $${THIRDPARTY_PRJ}/$${%DEPENDS%_DIR}
%DEPENDS%_THIRDPARTY_SRC = $${THIRDPARTY_SRC}/$${%DEPENDS%_PKG_DIR}
%DEPENDS%_THIRDPARTY_SRC_GROUP = $${%DEPENDS%_NAME}
%DEPENDS%_THIRDPARTY_SRC_NAME = $${%DEPENDS%_NAME}
%DEPENDS%_THIRDPARTY_SRC_DIR = $${THIRDPARTY_SRC}/$${%DEPENDS%_THIRDPARTY_SRC_GROUP}/$${%DEPENDS%_THIRDPARTY_SRC_NAME} 
%DEPENDS%_PKG = $${OTHER_PKG}/$${%DEPENDS%_PKG_DIR}
%DEPENDS%_PRJ = $${OTHER_PRJ}/$${%DEPENDS%_PKG_DIR}
#%DEPENDS%_SRC = $${%DEPENDS%_THIRDPARTY_SRC_DIR}
#%DEPENDS%_SRC = $${%DEPENDS%_THIRDPARTY_PKG}/$${%DEPENDS%_SOURCE}
#%DEPENDS%_SRC = $${%DEPENDS%_THIRDPARTY_PRJ}/$${%DEPENDS%_SOURCE}
#%DEPENDS%_SRC = $${%DEPENDS%_PKG}/$${%DEPENDS%_SOURCE}
%DEPENDS%_SRC = $${%DEPENDS%_PRJ}/$${%DEPENDS%_SOURCE}

# %Depends% INCLUDEPATH
#
#%Depends%_INCLUDEPATH += \
#$${%DEPENDS%_HOME_BUILD_INCLUDE} \

%Depends%_INCLUDEPATH += \
$${%DEPENDS%_SRC} \

# %Depends% DEFINES
#
%Depends%_DEFINES += \

)%)%%
%)%,Depends)%

########################################################################
# %Framework%
FRAMEWORK_NAME = %Framework%
FRAMEWORK_SOURCE = src

%FRAMEWORK%_PKG = ../../../../..
%FRAMEWORK%_BLD = ../..

%FRAMEWORK%_PRJ = $${%FRAMEWORK%_PKG}
%FRAMEWORK%_BIN = $${%FRAMEWORK%_BLD}/bin
%FRAMEWORK%_LIB = $${%FRAMEWORK%_BLD}/lib
%FRAMEWORK%_SRC = $${%FRAMEWORK%_PKG}/$${FRAMEWORK_SOURCE}

# %Framework% BUILD_CONFIG
#
CONFIG(debug, debug|release) {
BUILD_CONFIG = Debug
%Framework%_DEFINES += DEBUG_BUILD
} else {
BUILD_CONFIG = Release
%Framework%_DEFINES += RELEASE_BUILD
}

# %Framework% INCLUDEPATH
#
%Framework%_INCLUDEPATH += \
$${%FRAMEWORK%_SRC} \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%($${%Depends%_INCLUDEPATH} \
)%)%%
%)%,Depends)%%
%$${build_%Framework%_INCLUDEPATH} \

# %Framework% DEFINES
#
%Framework%_DEFINES += \
%parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%($${%Depends%_DEFINES} \
)%)%%
%)%,Depends)%%
%$${build_%Framework%_DEFINES} \

# %Framework% LIBS
#
%Framework%_LIBS += \
-L$${%FRAMEWORK%_LIB}/lib$${FRAMEWORK_NAME} \
-l$${FRAMEWORK_NAME} \

%
%)%)%

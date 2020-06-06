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
%#   File: framework-Gcc-Makefile.t
%#
%# Author: $author$
%#   Date: 7/16/2017
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
%language,%(%else-then(%language%,%(%else-no(%IsLanguage%,cpp)%)%)%)%,%
%Language,%(%else-then(%else-no(%IsLanguage%,%Language%)%,%(%language%)%)%)%,%
%LANGUAGE,%(%else-then(%LANGUAGE%,%(%toupper(%Language%)%)%)%)%,%
%language,%(%else-then(%_Language%,%(%tolower(%Language%)%)%)%)%,%
%style,%(%else-then(%style%,%(%else-no(%IsStyle%,%(xos)%)%)%)%)%,%
%Style,%(%else-then(%else-no(%IsStyle%,%(%Style%)%)%,%(%style%)%)%)%,%
%STYLE,%(%else-then(%STYLE%,%(%toupper(%Style%)%)%)%)%,%
%style,%(%else-then(%_Style%,%(%tolower(%Style%)%)%)%)%,%
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
%title,%(%else-then(%title%,%(generic Gcc %Makefile%%then-if(%Framework%, for )%)%)%)%,%
%Title,%(%else-then(%Title%,%(%title%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_Title%,%(%tolower(%Title%)%)%)%)%,%
%%(%
%%include(%Filepath%/Makefile-file.t)%%
%OTHER_VERSION_PKG = ${PKG}%if(%Language%,/..)%%if(%Style%,/..)%
OTHER_DEPENDS_PKG = ${PKG}%if(%Language%,/..)%%if(%Style%,/..)%/..
OTHER_THIRDPARTY_NAME = thirdparty
OTHER_THIRDPARTY_VERSION_PKG = ${OTHER_VERSION_PKG}/${OTHER_THIRDPARTY_NAME}

%FRAMEWORK%_PKG = ${PKG}
%FRAMEWORK%_SRC = ${%FRAMEWORK%_PKG}/src
%FRAMEWORK%_BLD = ${%FRAMEWORK%_PKG}/${BLD}/${BUILD_TYPE}
%FRAMEWORK%_LIB = ${%FRAMEWORK%_BLD}/lib
%FRAMEWORK%_BIN = ${%FRAMEWORK%_BLD}/bin

%parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_depends%,%(%tolower(%Depends%)%)%)%)%,%
%%(%
%########################################################################
# %Depends%
%DEPENDS%_VERSION_MAJOR = 0
%DEPENDS%_VERSION_MINOR = 0
%DEPENDS%_VERSION_RELEASE = 0
%DEPENDS%_VERSION = ${%DEPENDS%_VERSION_MAJOR}.${%DEPENDS%_VERSION_MINOR}.${%DEPENDS%_VERSION_RELEASE}
%DEPENDS%_NAME = %Depends%
%DEPENDS%_GROUP = ${%DEPENDS%_NAME}
%DEPENDS%_VERSION_DIR = ${%DEPENDS%_GROUP}/${%DEPENDS%_NAME}-${%DEPENDS%_VERSION}
%DEPENDS%_DEPENDS_DIR = ${%DEPENDS%_NAME}%then-if(%Language%,/)%%then-if(%Style%,/)%

#%DEPENDS%_PKG = ${OTHER_THIRDPARTY_VERSION_PKG}/${%DEPENDS%_VERSION_DIR}
#%DEPENDS%_PKG = ${OTHER_VERSION_PKG}/${%DEPENDS%_VERSION_DIR}
%DEPENDS%_PKG = ${OTHER_DEPENDS_PKG}/${%DEPENDS%_DEPENDS_DIR}
#%DEPENDS%_SRC = ${%DEPENDS%_PKG}/src/${BN_GROUP}/${BN_NAME}
%DEPENDS%_SRC = ${%DEPENDS%_PKG}/src
%DEPENDS%_BLD = ${%DEPENDS%_PKG}/${BLD}/${BUILD_TYPE}
%DEPENDS%_LIB = ${%DEPENDS%_BLD}/lib
%DEPENDS%_BIN = ${%DEPENDS%_BLD}/bin

# %Depends% USRDEFINES
#
%Depends%_USRDEFINES += \

# %Depends% USRINCLUDES
#
%Depends%_USRINCLUDES += \
-I${%DEPENDS%_SRC} \

# %Depends% USRCXXFLAGS
#
%Depends%_USRCXXFLAGS += \

# %Depends% USRLIBDIRS
#
%Depends%_USRLIBDIRS += \
-L${%DEPENDS%_LIB} \

# %Depends% LIBS
#
%Depends%_LIBS += \
-l%Depends% \

# %Depends% FRAMEWORKS
#
%Depends%_FRAMEWORKS += \

)%)%)%,Depends)%
########################################################################
# %Framework%

# %Framework% USRDEFINES
#
%Framework%_USRDEFINES += \
%parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%(${%Depends%_USRDEFINES} \
)%)%)%,Depends)%%
%${build_%Framework%_USRDEFINES} \

# %Framework% USRINCLUDES
#
%Framework%_USRINCLUDES += \
-I${%FRAMEWORK%_SRC} \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%(${%Depends%_USRINCLUDES} \
)%)%)%,Depends)%%
%${build_%Framework%_USRINCLUDES} \

# %Framework% USRCXXFLAGS
#
%Framework%_USRCXXFLAGS += \
%parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%(${%Depends%_USRCXXFLAGS} \
)%)%)%,Depends)%%
%${build_%Framework%_USRCXXFLAGS} \

# %Framework% USRLIBDIRS
#
%Framework%_USRLIBDIRS += \
-L${%FRAMEWORK%_LIB} \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%(${%Depends%_USRLIBDIRS} \
)%)%)%,Depends)%%
%${build_%Framework%_USRLIBDIRS} \

# %Framework% LIBS
#
%Framework%_LIBS += \
-l%Framework% \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%(${%Depends%_LIBS} \
)%)%)%,Depends)%%
%${build_%Framework%_LIBS} \

########################################################################
%
%)%)%

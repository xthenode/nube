%########################################################################
%# Copyright (c) 1988-2019 $organization$
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
%#   File: qtcreator.t
%#
%# Author: $author$
%#   Date: 12/1/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,%(Framework)%,%(Framework)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%framework%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_Framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_depends,%(%else-then(%is_depends%,%(%is_Depends%)%)%)%,%
%depends,%(%else-then(%if-no(%is_depends%,,%(%depends%)%)%,%(%if-no(%is_depends%,,%(Depends)%)%)%)%)%,%
%Depends,%(%else-then(%if-no(%is_depends%,,%(%Depends%)%)%,%(%depends%)%)%)%,%
%DEPENDS,%(%else-then(%DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_Depends%,%(%tolower(%Depends%)%)%)%)%,%
%is_target,%(no)%,%
%is_source,%(%else-then(%is_source%,%(%is_Source%)%)%)%,%
%source,%(%else-then(%if-no(%is_source%,,%(%source%)%)%,%(%if-no(%is_source%,,%(src)%)%)%)%)%,%
%Source,%(%else-then(%if-no(%is_source%,,%(%Source%)%)%,%(%source%)%)%)%,%
%SOURCE,%(%else-then(%SOURCE%,%(%toupper(%Source%)%)%)%)%,%
%source,%(%else-then(%_Source%,%(%tolower(%Source%)%)%)%)%,%
%is_include,%(%else-then(%is_include%,%(%is_Include%)%)%)%,%
%include,%(%else-then(%if-no(%is_include%,,%(%include%)%)%,%(%if-no(%is_include%,,%(include)%)%)%)%)%,%
%Include,%(%else-then(%if-no(%is_include%,,%(%Include%)%)%,%(%include%)%)%)%,%
%INCLUDE,%(%else-then(%INCLUDE%,%(%toupper(%Include%)%)%)%)%,%
%include,%(%else-then(%_Include%,%(%tolower(%Include%)%)%)%)%,%
%%(%
%%include(%include_path%/qtcreator-file.t)%%
%
OTHER_PKG = ../../../../../../..
OTHER_PRJ = ../../../../../..
OTHER_BLD = ..

THIRDPARTY_NAME = thirdparty
THIRDPARTY_PKG = $${OTHER_PKG}/$${THIRDPARTY_NAME}
THIRDPARTY_PRJ = $${OTHER_PRJ}/$${THIRDPARTY_NAME}
THIRDPARTY_SRC = $${OTHER_PRJ}/src/$${THIRDPARTY_NAME}

%
%%include(%include_path%/qtcreator-depends.t)%%
%########################################################################
# %Framework%
%FRAMEWORK%_NAME = %Framework%
%FRAMEWORK%_SOURCE = %Source%

%FRAMEWORK%_PKG = ../../../../../..
%FRAMEWORK%_PRJ = ../../../../..
%FRAMEWORK%_BLD = ../..

%FRAMEWORK%_BIN = $${%FRAMEWORK%_BLD}/bin
%FRAMEWORK%_LIB = $${%FRAMEWORK%_BLD}/lib
%FRAMEWORK%_SRC = $${%FRAMEWORK%_PRJ}/$${%FRAMEWORK%_SOURCE}

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
%DEPENDS,%(%toupper(%Depends%)%)%,%
%%($${%Depends%_INCLUDEPATH} \
)%)%%
%)%,Depends)%%
%$${build_%Framework%_INCLUDEPATH} \

# %Framework% DEFINES
#
%Framework%_DEFINES += \
%parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%toupper(%Depends%)%)%,%
%%($${%Depends%_DEFINES} \
)%)%%
%)%,Depends)%%
%$${build_%Framework%_DEFINES} \

# %Framework% FRAMEWORKS
#
%Framework%_FRAMEWORKS += \

# %Framework% LIBS
#
%Framework%_LIBS += \
$${%Framework%_FRAMEWORKS} \
-L$${%FRAMEWORK%_LIB}/lib$${%FRAMEWORK%_NAME} \
-l$${%FRAMEWORK%_NAME} \

########################################################################
%
%)%)%
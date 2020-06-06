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
%#   File: build-qtcreator.t
%#
%# Author: $author$
%#   Date: 12/2/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_os,%(%else-then(%is_os%,%(%is_Os%)%)%)%,%
%os,%(%else-then(%if-no(%is_os%,,%(%os%)%)%,%(%if-no(%is_os%,,%(Build specific)%)%)%)%)%,%
%Os,%(%else-then(%if-no(%is_os%,,%(%Os%)%)%,%(%os%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_Os%,%(%tolower(%Os%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(Framework)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%framework%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_Framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_depends,%(%else-then(%is_depends%,%(%is_Depends%)%)%)%,%
%depends,%(%else-then(%if-no(%is_depends%,,%(%depends%)%)%,%(%if-no(%is_depends%,,%(Depends)%)%)%)%)%,%
%Depends,%(%else-then(%if-no(%is_depends%,,%(%Depends%)%)%,%(%depends%)%)%)%,%
%DEPENDS,%(%else-then(%DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_Depends%,%(%tolower(%Depends%)%)%)%)%,%
%is_target,%(no)%,%
%%(%
%%include(%include_path%/qtcreator-file.t)%%
%
UNAME = $$system(uname)

contains(UNAME,Uname) {
BUILD_OS = %FRAMEWORK%_OS
} else {
BUILD_OS = os
} # contains(UNAME,Uname)

#BUILD_CPP_VERSION = 11

%
%%include(%include_path%/build-qtcreator-depends.t)%%
%########################################################################
# %Framework%

# build %Framework% INCLUDEPATH
#
build_%Framework%_INCLUDEPATH += \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%%($${build_%Depends%_INCLUDEPATH} \
)%)%)%,Depends)%

# build %Framework% DEFINES
#
build_%Framework%_DEFINES += \
%parse(%Depends%,;,,,,%(%
%%with(%
%%($${build_%Depends%_DEFINES} \
)%)%)%,Depends)%

# build %Framework% FRAMEWORKS
#
build_%Framework%_FRAMEWORKS += \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%%($${build_%Depends%_FRAMEWORKS} \
)%)%)%,Depends)%

# build %Framework% LIBS
#
build_%Framework%_LIBS += \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%%($${build_%Depends%_LIBS} \
)%)%)%,Depends)%

%
%)%)%
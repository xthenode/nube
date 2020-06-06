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
%#   File: build-qtcreator-depends.t
%#
%# Author: $author$
%#   Date: 12/2/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%%(%
%%parse(%Depends%,;,,,,%(%
%%with(%
%%(%
%########################################################################
# %Depend%
#
# pkg-config --cflags --libs %Depend%
#

# build %Depend% INCLUDEPATH
#
build_%Depend%_INCLUDEPATH += \

# build %Depend% DEFINES
#
build_%Depend%_DEFINES += \

# build %Depend% FRAMEWORKS
#
build_%Depend%_FRAMEWORKS += \

# build %Depend% LIBS
#
build_%Depend%_LIBS += \

)%)%)%,Depend)%%
%)%)%
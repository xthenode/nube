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
%#   File: os-qtcreator-depends.t
%#
%# Author: $author$
%#   Date: 12/2/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%%(%
%%parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%toupper(%Depends%)%)%,%
%%(########################################################################
# %Depends%
%DEPENDS%_THIRDPARTY_PKG_MAKE_BLD = $${%DEPENDS%_THIRDPARTY_PKG}/build/$${BUILD_OS}/$${BUILD_CONFIG}
%DEPENDS%_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${%DEPENDS%_THIRDPARTY_PRJ}/build/$${BUILD_OS}/$${BUILD_CONFIG}
%DEPENDS%_THIRDPARTY_PKG_BLD = $${%DEPENDS%_THIRDPARTY_PKG}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
%DEPENDS%_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${%DEPENDS%_THIRDPARTY_PRJ}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
%DEPENDS%_THIRDPARTY_GROUP_PKG_BLD = $${OTHER_BLD}/$${%DEPENDS%_THIRDPARTY_GROUP_PKG}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
%DEPENDS%_THIRDPARTY_GROUP_PRJ_BLD = $${OTHER_BLD}/$${%DEPENDS%_THIRDPARTY_GROUP_PRJ}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
%DEPENDS%_GROUP_PKG_BLD = $${OTHER_BLD}/$${%DEPENDS%_GROUP_PKG}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
%DEPENDS%_GROUP_PRJ_BLD = $${OTHER_BLD}/$${%DEPENDS%_GROUP_PRJ}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
%DEPENDS%_PKG_BLD = $${OTHER_BLD}/$${%DEPENDS%_PKG}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
%DEPENDS%_PRJ_BLD = $${OTHER_BLD}/$${%DEPENDS%_PRJ}/build/$${BUILD_OS}/QtCreator/$${BUILD_CONFIG}
#%DEPENDS%_LIB = $${%DEPENDS%_THIRDPARTY_PKG_MAKE_BLD}/lib
#%DEPENDS%_LIB = $${%DEPENDS%_THIRDPARTY_PRJ_MAKE_BLD}/lib
#%DEPENDS%_LIB = $${%DEPENDS%_THIRDPARTY_PKG_BLD}/lib
#%DEPENDS%_LIB = $${%DEPENDS%_THIRDPARTY_PRJ_BLD}/lib
#%DEPENDS%_LIB = $${%DEPENDS%_THIRDPARTY_GROUP_PKG_BLD}/lib
#%DEPENDS%_LIB = $${%DEPENDS%_THIRDPARTY_GROUP_PRJ_BLD}/lib
#%DEPENDS%_LIB = $${%DEPENDS%_GROUP_PKG_BLD}/lib
#%DEPENDS%_LIB = $${%DEPENDS%_GROUP_PRJ_BLD}/lib
#%DEPENDS%_LIB = $${%DEPENDS%_PKG_BLD}/lib
#%DEPENDS%_LIB = $${%DEPENDS%_PRJ_BLD}/lib
#%DEPENDS%_LIB = $${%DEPENDS%_LIB}

# %Depends% FRAMEWORKS
#
%Depends%_FRAMEWORKS += \

# %Depends% LIBS
#
%Depends%_LIBS += \
-L$${%DEPENDS%_LIB}/lib$${%DEPENDS%_NAME} \
-l$${%DEPENDS%_NAME} \

)%)%)%,Depends)%%
%)%)%
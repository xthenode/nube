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
%#   File: qtcreator-target.t
%#
%# Author: $author$
%#   Date: 12/2/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_headers,%(%else-then(%is_headers%,%(%is_Headers%)%)%)%,%
%headers,%(%else-then(%if-no(%is_headers%,,%(%headers%)%)%,%(%if-no(%is_headers%,,%(%Framework%/base/base.hpp)%)%)%)%)%,%
%Headers,%(%else-then(%if-no(%is_headers%,,%(%Headers%)%)%,%(%headers%)%)%)%,%
%HEADERS,%(%else-then(%HEADERS%,%(%toupper(%Headers%)%)%)%)%,%
%headers,%(%else-then(%_Headers%,%(%tolower(%Headers%)%)%)%)%,%
%is_sources,%(%else-then(%is_sources%,%(%is_Sources%)%)%)%,%
%sources,%(%else-then(%if-no(%is_sources%,,%(%sources%)%)%,%(%if-no(%is_sources%,,%(%parse(%Headers%,;,,;,,%(%filebase(%Header%)%.cpp)%,Header)%)%)%)%)%)%,%
%Sources,%(%else-then(%if-no(%is_sources%,,%(%Sources%)%)%,%(%sources%)%)%)%,%
%SOURCES,%(%else-then(%SOURCES%,%(%toupper(%Sources%)%)%)%)%,%
%sources,%(%else-then(%_Sources%,%(%tolower(%Sources%)%)%)%)%,%
%is_objectiveheaders,%(%else-then(%is_objectiveheaders%,%(%is_ObjectiveHeaders%)%)%)%,%
%objectiveheaders,%(%else-then(%if-no(%is_objectiveheaders%,,%(%objectiveheaders%)%)%,%(%if-no(%is_objectiveheaders%,,%(%parse(%Headers%,;,,;,,%(%filebase(%Header%)%.hh)%,Header)%)%)%)%)%)%,%
%ObjectiveHeaders,%(%else-then(%if-no(%is_objectiveheaders%,,%(%ObjectiveHeaders%)%)%,%(%objectiveheaders%)%)%)%,%
%OBJECTIVEHEADERS,%(%else-then(%OBJECTIVEHEADERS%,%(%toupper(%ObjectiveHeaders%)%)%)%)%,%
%objectiveheaders,%(%else-then(%_ObjectiveHeaders%,%(%tolower(%ObjectiveHeaders%)%)%)%)%,%
%is_objectivesources,%(%else-then(%is_objectivesources%,%(%is_ObjectiveSources%)%)%)%,%
%objectivesources,%(%else-then(%if-no(%is_objectivesources%,,%(%objectivesources%)%)%,%(%if-no(%is_objectivesources%,,%(%parse(%Headers%,;,,;,,%(%filebase(%Header%)%.mm)%,Header)%)%)%)%)%)%,%
%ObjectiveSources,%(%else-then(%if-no(%is_objectivesources%,,%(%ObjectiveSources%)%)%,%(%objectivesources%)%)%)%,%
%OBJECTIVESOURCES,%(%else-then(%OBJECTIVESOURCES%,%(%toupper(%ObjectiveSources%)%)%)%)%,%
%objectivesources,%(%else-then(%_ObjectiveSources%,%(%tolower(%ObjectiveSources%)%)%)%)%,%
%%(%
%
########################################################################
# %lib%%Target%

# %lib%%Target%%exe% TARGET
#
%lib%%Target%%exe%_TARGET = %Target%%
%%if(%Lib%%SLib%,%(
%lib%%Target%%exe%_TEMPLATE = lib%if(%Lib%,%(
%lib%%Target%%exe%_CONFIG += staticlib)%)%)%)%

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
#%parse(%ObjectiveHeaders%,;,,%(\ )%,,%($${%FRAMEWORK%_SRC}/%Header%)%,Header)% \

# %lib%%Target%%exe% OBJECTIVE_SOURCES
#
#%lib%%Target%%exe%_OBJECTIVE_SOURCES += \
#%parse(%ObjectiveSources%,;,,%(\ )%,,%($${%FRAMEWORK%_SRC}/%Source%)%,Source)% \

########################################################################
# %lib%%Target%%exe% HEADERS
#
#%lib%%Target%%exe%_HEADERS += \
#%parse(%Headers%,;,,%(\ )%,,%($${%FRAMEWORK%_SRC}/%Header%)%,Header)% \

# %lib%%Target%%exe% SOURCES
#
#%lib%%Target%%exe%_SOURCES += \
#%parse(%Sources%,;,,%(\ )%,,%($${%FRAMEWORK%_SRC}/%Source%)%,Source)% \

%else(%lib%,%(########################################################################
# %lib%%Target%%exe% FRAMEWORKS
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
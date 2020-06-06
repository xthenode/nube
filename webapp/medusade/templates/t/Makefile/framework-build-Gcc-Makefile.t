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
%#   File: framework-build-Gcc-Makefile.t
%#
%# Author: $author$
%#   Date: 7/15/2017
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
%title,%(%else-then(%title%,%(build Gcc %Makefile%%then-if(%Framework%, for )%)%)%)%,%
%Title,%(%else-then(%Title%,%(%title%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_Title%,%(%tolower(%Title%)%)%)%)%,%
%%(%
%%include(%Filepath%/Makefile-file.t)%%
%%parse(%Depends%,;,,,,%(
########################################################################
# %Depends%
#
# pkg-config --cflags --libs %Depends%
#

ifndef USE_HOME_BUILD_%Depends%
USE_HOME_BUILD_%Depends% = no
endif

ifeq ($(USE_HOME_BUILD_%Depends%),yes)
#
# home build %Depends%
#
build_%Depends%_USRDEFINES += \

build_%Depends%_USRINCLUDES += \
-I$(HOME)/build/%Depends%/include \

build_%Depends%_USRCXXFLAGS += \

build_%Depends%_USRLIBDIRS += \
-L$(HOME)/build/%Depends%/lib \

build_%Depends%_LIBS += \
-l%Depends% \

build_%Depends%_FRAMEWORKS += \

else
#
# build %Depends%
#
build_%Depends%_USRDEFINES += \

build_%Depends%_USRINCLUDES += \

build_%Depends%_USRCXXFLAGS += \

build_%Depends%_USRLIBDIRS += \

build_%Depends%_LIBS += \

build_%Depends%_FRAMEWORKS += \

endif
)%,Depends)%%
%
########################################################################
# %Framework%

# build %Framework% USRDEFINES
#
build_%Framework%_USRDEFINES += \
%parse(%Depends%,;,,,,%(${build_%Depends%_USRDEFINES} \
)%,Depends)%

# build %Framework% USRINCLUDES
#
build_%Framework%_USRINCLUDES += \
%reverse-parse(%Depends%,;,,,,%(${build_%Depends%_USRINCLUDES} \
)%,Depends)%

# build %Framework% USRCXXFLAGS
#
build_%Framework%_USRCXXFLAGS += \
%parse(%Depends%,;,,,,%(${build_%Depends%_USRCXXFLAGS} \
)%,Depends)%

# build %Framework% USRLIBDIRS
#
build_%Framework%_USRLIBDIRS += \
%reverse-parse(%Depends%,;,,,,%(${build_%Depends%_USRLIBDIRS} \
)%,Depends)%

# build %Framework% FRAMEWORKS
#
build_%Framework%_FRAMEWORKS += \
%reverse-parse(%Depends%,;,,,,%(${build_%Depends%_FRAMEWORKS} \
)%,Depends)%

# build %Framework% LIBS
#
build_%Framework%_LIBS += \
%reverse-parse(%Depends%,;,,,,%(${build_%Depends%_LIBS} \
)%,Depends)%%
%${build_%Framework%_FRAMEWORKS}

%
%)%)%

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
%#   File: lib-qtcreator-build-config.t
%#
%# Author: $author$
%#   Date: 12/3/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_depends,%(%else-then(%is_depends%,%(%is_Depends%)%)%)%,%
%depends,%(%else-then(%if-no(%is_depends%,,%(%depends%)%)%,%(%if-no(%is_depends%,,%(Depends)%)%)%)%)%,%
%Depends,%(%else-then(%if-no(%is_depends%,,%(%Depends%)%)%,%(%depends%)%)%)%,%
%DEPENDS,%(%else-then(%DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_Depends%,%(%tolower(%Depends%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,%(Framework)%,%(Framework)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%framework%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_Framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_target,%(%else-then(%is_target%,%(%is_Target%)%)%)%,%
%target,%(%else-then(%if-no(%is_target%,,%(%target%)%)%,%(%if-no(%is_target%,%(%Framework%)%,%(%Framework%)%)%)%)%)%,%
%Target,%(%else-then(%if-no(%is_target%,,%(%Target%)%)%,%(%target%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_Target%,%(%tolower(%Target%)%)%)%)%,%
%is_target,%(yes)%,%
%is_lib,%(%else-then(%is_lib%,%(%is_Lib%)%)%)%,%
%lib,%(%else-then(%if-no(%is_lib%,,%(%lib%)%)%,%(%if-no(%is_lib%,,%(lib)%)%)%)%)%,%
%Lib,%(%else-then(%if-no(%is_lib%,,%(%Lib%)%)%,%(%lib%)%)%)%,%
%LIB,%(%else-then(%LIB%,%(%toupper(%Lib%)%)%)%)%,%
%lib,%(%else-then(%_Lib%,%(%tolower(%Lib%)%)%)%)%,%
%is_lib,%(yes)%,%
%is_bin,%(%else-then(%is_bin%,%(%is_Bin%)%)%)%,%
%bin,%(%else-then(%if-no(%is_bin%,,%(%bin%)%)%,%(%if-no(%is_bin%,,%(lib)%)%)%)%)%,%
%Bin,%(%else-then(%if-no(%is_bin%,,%(%Bin%)%)%,%(%bin%)%)%)%,%
%BIN,%(%else-then(%BIN%,%(%toupper(%Bin%)%)%)%)%,%
%bin,%(%else-then(%_Bin%,%(%tolower(%Bin%)%)%)%)%,%
%is_bin,%(yes)%,%
%%(%
%%include(%include_path%/qtcreator-build-config.t)%%
%)%)%
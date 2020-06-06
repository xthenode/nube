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
%#   File: hxx-cxx.t
%#
%# Author: $author$
%#   Date: 11/26/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_namespace,%(%else-then(%is_namespace%,%(%is_Namespace%)%)%)%,%
%namespace,%(%else-then(%if-no(%is_namespace%,,%(%namespace%)%)%,%(%if-no(%is_namespace%,,%(xos)%)%)%)%)%,%
%Namespace,%(%else-then(%if-no(%is_namespace%,,%(%Namespace%)%)%,%(%namespace%)%)%)%,%
%NAMESPACE,%(%else-then(%NAMESPACE%,%(%toupper(%Namespace%)%)%)%)%,%
%namespace,%(%else-then(%_Namespace%,%(%tolower(%Namespace%)%)%)%)%,%
%is_ifndef,%(%else-then(%is_ifndef%,%(%is_Ifndef%)%)%)%,%
%ifndef,%(%else-then(%if-no(%is_ifndef%,,%(%ifndef%)%)%,%(%if-no(%is_ifndef%,,%(%else-then(%Namespace%,xos/base)%)%)%)%)%)%,%
%Ifndef,%(%else-then(%if-no(%is_ifndef%,,%(%Ifndef%)%)%,%(%ifndef%)%)%)%,%
%Ifndef,%(%parse(%Ifndef%,/,,_)%)%,%
%IFNDEF,%(%else-then(%IFNDEF%,%(%toupper(%Ifndef%)%)%)%)%,%
%ifndef,%(%else-then(%_Ifndef%,%(%tolower(%Ifndef%)%)%)%)%,%
%is_include,%(%else-then(%is_include%,%(%is_Include%)%)%)%,%
%include,%(%else-then(%if-no(%is_include%,,%(%include%)%)%,%(%if-no(%is_include%,,%(xos/base/base.hpp)%)%)%)%)%,%
%Include,%(%else-then(%if-no(%is_include%,,%(%Include%)%)%,%(%include%)%)%)%,%
%INCLUDE,%(%else-then(%INCLUDE%,%(%toupper(%Include%)%)%)%)%,%
%include,%(%else-then(%_Include%,%(%tolower(%Include%)%)%)%)%,%
%is_sys_include,%(%else-then(%is_sys_include%,%(%is_Sys_include%)%)%)%,%
%sys_include,%(%else-then(%if-no(%is_sys_include%,,%(%sys_include%)%)%,%(%if-no(%is_sys_include%,,%(stdio.h)%)%)%)%)%,%
%Sys_include,%(%else-then(%if-no(%is_sys_include%,,%(%Sys_include%)%)%,%(%sys_include%)%)%)%,%
%SYS_INCLUDE,%(%else-then(%SYS_INCLUDE%,%(%toupper(%Sys_include%)%)%)%)%,%
%sys_include,%(%else-then(%_Sys_include%,%(%tolower(%Sys_include%)%)%)%)%,%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(derive)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%name%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_Name%,%(%tolower(%Name%)%)%)%)%,%
%is_file,%(%else-then(%is_file%,%(%is_File%)%)%)%,%
%file,%(%else-then(%if-no(%is_file%,,%(%file%)%)%,%(%if-no(%is_file%,,%(%Name%)%)%)%)%)%,%
%File,%(%else-then(%if-no(%is_file%,,%(%File%)%)%,%(%file%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_File%,%(%tolower(%File%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%filebase(%File%)%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%base%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_Base%,%(%tolower(%Base%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%(%is_Extension%)%)%)%,%
%extension,%(%else-then(%if-no(%is_extension%,,%(%extension%)%)%,%(%if-no(%is_extension%,,%(%fileextension(%File%)%)%)%)%)%)%,%
%Extension,%(%else-then(%if-no(%is_extension%,,%(%Extension%)%)%,%(%extension%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_Extension%,%(%tolower(%Extension%)%)%)%)%,%
%is_h,%(%else-then(%is_h%,%(%is_H%)%)%)%,%
%h,%(%else-then(%if-no(%is_h%,,%(%h%)%)%,%(%if-no(%is_h%,,%(%equal(h,%Extension%)%)%)%)%)%)%,%
%H,%(%else-then(%if-no(%is_h%,,%(%H%)%)%,%(%h%)%)%)%,%
%H,%(%else-then(%H%,%(%toupper(%H%)%)%)%)%,%
%h,%(%else-then(%_H%,%(%tolower(%H%)%)%)%)%,%
%is_c,%(%else-then(%is_c%,%(%is_C%)%)%)%,%
%c,%(%else-then(%if-no(%is_c%,,%(%c%)%)%,%(%if-no(%is_c%,,%(%equal(c,%Extension%)%)%)%)%)%)%,%
%C,%(%else-then(%if-no(%is_c%,,%(%C%)%)%,%(%c%)%)%)%,%
%C,%(%else-then(%C%,%(%toupper(%C%)%)%)%)%,%
%c,%(%else-then(%_C%,%(%tolower(%C%)%)%)%)%,%
%is_hxx,%(%else-then(%is_hxx%,%(%is_Hxx%)%)%)%,%
%hxx,%(%else-then(%if-no(%is_hxx%,,%(%hxx%)%)%,%(%if-no(%is_hxx%,,%(%if(%H%%C%,h,hpp)%)%)%)%)%)%,%
%Hxx,%(%else-then(%if-no(%is_hxx%,,%(%Hxx%)%)%,%(%hxx%)%)%)%,%
%HXX,%(%else-then(%HXX%,%(%toupper(%Hxx%)%)%)%)%,%
%hxx,%(%else-then(%_Hxx%,%(%tolower(%Hxx%)%)%)%)%,%
%is_cxx,%(%else-then(%is_cxx%,%(%is_Cxx%)%)%)%,%
%cxx,%(%else-then(%if-no(%is_cxx%,,%(%cxx%)%)%,%(%if-no(%is_cxx%,,%(%Extension%)%)%)%)%)%,%
%Cxx,%(%else-then(%if-no(%is_cxx%,,%(%Cxx%)%)%,%(%cxx%)%)%)%,%
%CXX,%(%else-then(%CXX%,%(%toupper(%Cxx%)%)%)%)%,%
%cxx,%(%else-then(%_Cxx%,%(%tolower(%Cxx%)%)%)%)%,%
%is_ifndef_begin,%(%else-then(%is_ifndef_begin%,%(%is_Ifndef_begin%)%)%)%,%
%ifndef_begin,%(%else-then(%if-no(%is_ifndef_begin%,,%(%ifndef_begin%)%)%,%(%if-no(%is_ifndef_begin%,,%(#ifndef %IFNDEF%_%BASE%_%EXTENSION%
#define %IFNDEF%_%BASE%_%EXTENSION%
)%)%)%)%)%,%
%Ifndef_begin,%(%else-then(%if-no(%is_ifndef_begin%,,%(%Ifndef_begin%)%)%,%(%ifndef_begin%)%)%)%,%
%IFNDEF_BEGIN,%(%else-then(%IFNDEF_BEGIN%,%(%toupper(%Ifndef_begin%)%)%)%)%,%
%ifndef_begin,%(%else-then(%_Ifndef_begin%,%(%tolower(%Ifndef_begin%)%)%)%)%,%
%is_ifndef_end,%(%else-then(%is_ifndef_end%,%(%is_Ifndef_end%)%)%)%,%
%ifndef_end,%(%else-then(%if-no(%is_ifndef_end%,,%(%ifndef_end%)%)%,%(%if-no(%is_ifndef_end%,,%(#endif %if(%H%,/*/,///)% ndef %IFNDEF%_%BASE%_%EXTENSION% %if(%H%,/*/)%
)%)%)%)%)%,%
%Ifndef_end,%(%else-then(%if-no(%is_ifndef_end%,,%(%Ifndef_end%)%)%,%(%ifndef_end%)%)%)%,%
%IFNDEF_END,%(%else-then(%IFNDEF_END%,%(%toupper(%Ifndef_end%)%)%)%)%,%
%ifndef_end,%(%else-then(%_Ifndef_end%,%(%tolower(%Ifndef_end%)%)%)%)%,%
%is_ifndef_directory,%(%else-then(%is_ifndef_directory%,%(%is_Ifndef_directory%)%)%)%,%
%ifndef_directory,%(%else-then(%if-no(%is_ifndef_directory%,,%(%ifndef_directory%)%)%,%(%if-no(%is_ifndef_directory%,,%(%
%%parse(%Ifndef%,_,,/,%(%Ifndef%)%,Ifndef)%%
%)%)%)%)%)%,%
%Ifndef_directory,%(%else-then(%if-no(%is_ifndef_directory%,,%(%Ifndef_directory%)%)%,%(%ifndef_directory%)%)%)%,%
%IFNDEF_DIRECTORY,%(%else-then(%IFNDEF_DIRECTORY%,%(%toupper(%Ifndef_directory%)%)%)%)%,%
%ifndef_directory,%(%else-then(%_Ifndef_directory%,%(%tolower(%Ifndef_directory%)%)%)%)%,%
%is_ifndef_include,%(%else-then(%is_ifndef_include%,%(%is_Ifndef_include%)%)%)%,%
%ifndef_include,%(%else-then(%if-no(%is_ifndef_include%,,%(%ifndef_include%)%)%,%(%if-no(%is_ifndef_include%,,%(%
%#include "%if-then(%Ifndef_directory%,/)%%Base%.%Hxx%"
%
%)%)%)%)%)%,%
%Ifndef_include,%(%else-then(%if-no(%is_ifndef_include%,,%(%Ifndef_include%)%)%,%(%ifndef_include%)%)%)%,%
%IFNDEF_INCLUDE,%(%else-then(%IFNDEF_INCLUDE%,%(%toupper(%Ifndef_include%)%)%)%)%,%
%ifndef_include,%(%else-then(%_Ifndef_include%,%(%tolower(%Ifndef_include%)%)%)%)%,%
%is_includes,%(%else-then(%is_includes%,%(%is_Includes%)%)%)%,%
%includes,%(%else-then(%if-no(%is_includes%,,%(%includes%)%)%,%(%if-no(%is_includes%,,%(%
%%parse(%Include%,;,,,,%(#include "%include%"
)%,include)%%
%)%)%)%)%)%,%
%Includes,%(%else-then(%if-no(%is_includes%,,%(%Includes%)%)%,%(%includes%)%)%)%,%
%INCLUDES,%(%else-then(%INCLUDES%,%(%toupper(%Includes%)%)%)%)%,%
%includes,%(%else-then(%_Includes%,%(%tolower(%Includes%)%)%)%)%,%
%is_sys_includes,%(%else-then(%is_sys_includes%,%(%is_Sys_includes%)%)%)%,%
%sys_includes,%(%else-then(%if-no(%is_sys_includes%,,%(%sys_includes%)%)%,%(%if-no(%is_sys_includes%,,%(%
%%parse(%Sys_include%,;,,,,%(#include <%include%>
)%,include)%%
%)%)%)%)%)%,%
%Sys_includes,%(%else-then(%if-no(%is_sys_includes%,,%(%Sys_includes%)%)%,%(%sys_includes%)%)%)%,%
%SYS_INCLUDES,%(%else-then(%SYS_INCLUDES%,%(%toupper(%Sys_includes%)%)%)%)%,%
%sys_includes,%(%else-then(%_Sys_includes%,%(%tolower(%Sys_includes%)%)%)%)%,%
%is_namespace_begin,%(%else-then(%is_namespace_begin%,%(%is_Namespace_begin%)%)%)%,%
%namespace_begin,%(%else-then(%if-no(%is_namespace_begin%,,%(%namespace_begin%)%)%,%(%if-no(%is_namespace_begin%,,%(%
%%parse(%Namespace%,/,,,,%(namespace %ns% {
)%,ns)%%
%)%)%)%)%)%,%
%Namespace_begin,%(%else-then(%if-no(%is_namespace_begin%,,%(%Namespace_begin%)%)%,%(%namespace_begin%)%)%)%,%
%NAMESPACE_BEGIN,%(%else-then(%NAMESPACE_BEGIN%,%(%toupper(%Namespace_begin%)%)%)%)%,%
%namespace_begin,%(%else-then(%_Namespace_begin%,%(%tolower(%Namespace_begin%)%)%)%)%,%
%is_namespace_end,%(%else-then(%is_namespace_end%,%(%is_Namespace_end%)%)%)%,%
%namespace_end,%(%else-then(%if-no(%is_namespace_end%,,%(%namespace_end%)%)%,%(%if-no(%is_namespace_end%,,%(%
%%reverse-parse(%Namespace%,/,,,,%(} /// namespace %ns%
)%,ns)%%
%)%)%)%)%)%,%
%Namespace_end,%(%else-then(%if-no(%is_namespace_end%,,%(%Namespace_end%)%)%,%(%namespace_end%)%)%)%,%
%NAMESPACE_END,%(%else-then(%NAMESPACE_END%,%(%toupper(%Namespace_end%)%)%)%)%,%
%namespace_end,%(%else-then(%_Namespace_end%,%(%tolower(%Namespace_end%)%)%)%)%,%
%%(%
%%include(%include_path%/file-hxx-cxx.t)%%
%%include(%include_path%/%Prefix%%Cxx%-%Cxx%.t)%%
%)%)%
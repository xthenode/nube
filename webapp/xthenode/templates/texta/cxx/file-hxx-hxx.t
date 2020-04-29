%########################################################################
%# Copyright (c) 1988-2020 $organization$
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
%#   File: file-hxx-hxx.t
%#
%# Author: $author$
%#   Date: 4/18/2020
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_file_ifndef_file,%(%else-then(%is_file_ifndef_file%,%(%is_File_ifndef_file%)%)%)%,%
%file_ifndef_file,%(%else-then(%if-no(%is_file_ifndef_file%,,%(%file_ifndef_file%)%)%,%(%if-no(%is_file_ifndef_file%,,%(%then-if(%Base%,_)%%then-if(%Extension%,_)%)%)%)%)%)%,%
%File_ifndef_file,%(%else-then(%if-no(%is_file_ifndef_file%,,%(%File_ifndef_file%)%)%,%(%if-no(%is_file_ifndef_file%,,%(%file_ifndef_file%)%)%)%)%)%,%
%FILE_IFNDEF_FILE,%(%else-then(%FILE_IFNDEF_FILE%,%(%toupper(%File_ifndef_file%)%)%)%)%,%
%file_ifndef_file,%(%else-then(%_file_ifndef_file%,%(%tolower(%File_ifndef_file%)%)%)%)%,%
%is_file_ifndef,%(%else-then(%is_file_ifndef%,%(%is_File_ifndef%)%)%)%,%
%file_ifndef,%(%else-then(%if-no(%is_file_ifndef%,,%(%file_ifndef%)%)%,%(%if-no(%is_file_ifndef%,,%(%Namespace%)%)%)%)%)%,%
%File_ifndef,%(%else-then(%if-no(%is_file_ifndef%,,%(%File_ifndef%)%)%,%(%if-no(%is_file_ifndef%,,%(%file_ifndef%)%)%)%)%)%,%
%FILE_IFNDEF,%(%else-then(%FILE_IFNDEF%,%(%toupper(%File_ifndef%)%)%)%)%,%
%file_ifndef,%(%else-then(%_file_ifndef%,%(%tolower(%File_ifndef%)%)%)%)%,%
%is_file_ifndef_define,%(%else-then(%is_file_ifndef_define%,%(%is_File_ifndef_define%)%)%)%,%
%file_ifndef_define,%(%else-then(%if-no(%is_file_ifndef_define%,,%(%file_ifndef_define%)%)%,%(%if-no(%is_file_ifndef_define%,,%(%parse(%File_ifndef%,/,,_)%%file_ifndef_file%)%)%)%)%)%,%
%File_ifndef_define,%(%else-then(%if-no(%is_file_ifndef_define%,,%(%File_ifndef_define%)%)%,%(%if-no(%is_file_ifndef_define%,,%(%file_ifndef_define%)%)%)%)%)%,%
%FILE_IFNDEF_DEFINE,%(%else-then(%FILE_IFNDEF_DEFINE%,%(%toupper(%File_ifndef_define%)%)%)%)%,%
%file_ifndef_define,%(%else-then(%_file_ifndef_define%,%(%tolower(%File_ifndef_define%)%)%)%)%,%
%is_include,%(%else-then(%is_include%,%(%is_Include%)%)%)%,%
%include,%(%else-then(%if-no(%is_include%,,%(%include%)%)%,%(%if-no(%is_include%,,%(xos/base/Base.hxx)%)%)%)%)%,%
%Include,%(%else-then(%if-no(%is_include%,,%(%Include%)%)%,%(%if-no(%is_include%,,%(%include%)%)%)%)%)%,%
%INCLUDE,%(%else-then(%INCLUDE%,%(%toupper(%Include%)%)%)%)%,%
%include,%(%else-then(%_include%,%(%tolower(%Include%)%)%)%)%,%
%is_sys_include,%(%else-then(%is_sys_include%,%(%is_Sys_include%)%)%)%,%
%sys_include,%(%else-then(%if-no(%is_sys_include%,,%(%sys_include%)%)%,%(%if-no(%is_sys_include%,,%(string)%)%)%)%)%,%
%Sys_include,%(%else-then(%if-no(%is_sys_include%,,%(%Sys_include%)%)%,%(%if-no(%is_sys_include%,,%(%sys_include%)%)%)%)%)%,%
%SYS_INCLUDE,%(%else-then(%SYS_INCLUDE%,%(%toupper(%Sys_include%)%)%)%)%,%
%sys_include,%(%else-then(%_sys_include%,%(%tolower(%Sys_include%)%)%)%)%,%
%is_includes,%(%else-then(%is_includes%,%(%is_Includes%)%)%)%,%
%includes,%(%else-then(%if-no(%is_includes%,,%(%includes%)%)%,%(%if-no(%is_includes%,,%(%parse(%Include%,;,,%(
)%,,%(#include "%Include%")%,Include)%)%)%)%)%)%,%
%Includes,%(%else-then(%if-no(%is_includes%,,%(%Includes%)%)%,%(%if-no(%is_includes%,,%(%includes%)%)%)%)%)%,%
%INCLUDES,%(%else-then(%INCLUDES%,%(%toupper(%Includes%)%)%)%)%,%
%includes,%(%else-then(%_includes%,%(%tolower(%Includes%)%)%)%)%,%
%is_sys_includes,%(%else-then(%is_sys_includes%,%(%is_Sys_includes%)%)%)%,%
%sys_includes,%(%else-then(%if-no(%is_sys_includes%,,%(%sys_includes%)%)%,%(%if-no(%is_sys_includes%,,%(%parse(%Sys_include%,;,,%(
)%,,%(#include <%Sys_include%>)%,Sys_include)%)%)%)%)%)%,%
%Sys_includes,%(%else-then(%if-no(%is_sys_includes%,,%(%Sys_includes%)%)%,%(%if-no(%is_sys_includes%,,%(%sys_includes%)%)%)%)%)%,%
%SYS_INCLUDES,%(%else-then(%SYS_INCLUDES%,%(%toupper(%Sys_includes%)%)%)%)%,%
%sys_includes,%(%else-then(%_sys_includes%,%(%tolower(%Sys_includes%)%)%)%)%,%
%%(%
%%include(%Include_path%/t-file.t)%%
%#ifndef %FILE_IFNDEF_DEFINE%
#define %FILE_IFNDEF_DEFINE%
%if(%Include%%Sys_include%,%(
%if-then(%Includes%,%(
)%)%%if-then(%Sys_includes%,%(
)%)%)%)%
#endif /// ndef %FILE_IFNDEF_DEFINE%
%
%)%)%
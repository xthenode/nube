%########################################################################
%# Copyright (c) 1988-2018 $organization$
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
%#   File: hpp-cpp.t
%#
%# Author: $author$
%#   Date: 4/13/2018
%########################################################################
%with(%
%name,%(%else-then(%do(%if-no(%is_name%,,%name%)%)%,%(%else-then(%do(%if-no(%is_name%,,%name%)%)%,%(%if-no(%is_name%,,name)%)%)%)%)%)%,%
%Name,%(%else-then(%Name%,%(%name%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_Name%,%(%tolower(%Name%)%)%)%)%,%
%file,%(%else-then(%do(%file%)%,%(%else-then(%Name%,%(name)%)%)%)%)%,%
%File,%(%else-then(%File%,%(%file%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_File%,%(%tolower(%File%)%)%)%)%,%
%base,%(%else-then(%base%,%(%filebase(%File%)%)%)%)%,%
%Base,%(%else-then(%Base%,%(%base%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_Base%,%(%tolower(%Base%)%)%)%)%,%
%header,%(%else-then(%header%,%(hpp)%)%)%,%
%Header,%(%else-then(%Header%,%(%header%)%)%)%,%
%HEADER,%(%else-then(%HEADER%,%(%toupper(%Header%)%)%)%)%,%
%header,%(%else-then(%_Header%,%(%tolower(%Header%)%)%)%)%,%
%cheader,%(%else-then(%cheader%,%(CHeader)%)%)%,%
%CHeader,%(%else-then(%CHeader%,%(hxx)%)%)%,%
%CHEADER,%(%else-then(%CHEADER%,%(%toupper(%CHeader%)%)%)%)%,%
%cheader,%(%else-then(%_CHeader%,%(%tolower(%CHeader%)%)%)%)%,%
%extension,%(%else-then(%extension%,%(hpp)%)%)%,%
%Extension,%(%else-then(%Extension%,%(%extension%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_Extension%,%(%tolower(%Extension%)%)%)%)%,%
%directory,%(%else-then(%if-no(%is_directory%,,%directory%)%,%(%else-then(%if-no(%is_ifndef%,,%ifndef_directory%)%,%(%if-no(%is_ifndef%,,xos)%)%)%)%)%)%,%
%Directory,%(%else-then(%Directory%,%(%directory%)%)%)%,%
%DIRECTORY,%(%else-then(%DIRECTORY%,%(%toupper(%Directory%)%)%)%)%,%
%directory,%(%else-then(%_Directory%,%(%tolower(%Directory%)%)%)%)%,%
%ifndef_directory,%(%else-then(%if-no(%is_ifndef%,,%ifndef_directory%)%,%(%if-no(%is_ifndef%,,%Directory%)%)%)%)%,%
%Ifndef_directory,%(%else-then(%Ifndef_directory%,%(%ifndef_directory%)%)%)%,%
%Ifndef_directory,%(%
%%then-if(%parse(%Ifndef_directory%,/,,_)%,_)%%
%)%,%
%IFNDEF_DIRECTORY,%(%else-then(%IFNDEF_DIRECTORY%,%(%toupper(%Ifndef_directory%)%)%)%)%,%
%ifndef_directory,%(%else-then(%_Ifndef_directory%,%(%tolower(%Ifndef_directory%)%)%)%)%,%
%include_directory,%(%else-then(%include_directory%,%(%Directory%)%)%)%,%
%Include_directory,%(%else-then(%Include_directory%,%(%include_directory%)%)%)%,%
%INCLUDE_DIRECTORY,%(%else-then(%INCLUDE_DIRECTORY%,%(%toupper(%Include_directory%)%)%)%)%,%
%include_directory,%(%else-then(%_Include_directory%,%(%tolower(%Include_directory%)%)%)%)%,%
%include,%(%else-then(%do(%if-no(%is_include%,,%include%)%)%,%(%if-no(%is_include%,,xos/base/Base.hpp)%)%)%)%,%
%Include,%(%else-then(%Include%,%(%include%)%)%)%,%
%INCLUDE,%(%else-then(%INCLUDE%,%(%toupper(%Include%)%)%)%)%,%
%include,%(%else-then(%_Include%,%(%tolower(%Include%)%)%)%)%,%
%sys_include,%(%else-then(%sys_include%,%()%)%)%,%
%Sys_include,%(%else-then(%Sys_include%,%(%sys_include%)%)%)%,%
%SYS_INCLUDE,%(%else-then(%SYS_INCLUDE%,%(%toupper(%Sys_include%)%)%)%)%,%
%sys_include,%(%else-then(%_Sys_include%,%(%tolower(%Sys_include%)%)%)%)%,%
%namespace,%(%else-then(%if-no(%is_namespace%,,%namespace%)%,%(%if-no(%is_namespace%,,%Include_directory%)%)%)%)%,%
%Namespace,%(%else-then(%Namespace%,%(%namespace%)%)%)%,%
%NAMESPACE,%(%else-then(%NAMESPACE%,%(%toupper(%Namespace%)%)%)%)%,%
%namespace,%(%else-then(%_Namespace%,%(%tolower(%Namespace%)%)%)%)%,%
%namespace_begin,%(%else-then(%namespace_begin%,%(%Namespace%)%)%)%,%
%Namespace_begin,%(%else-then(%Namespace_begin%,%(%namespace_begin%)%)%)%,%
%namespace__begin,%(%else-then(%namespace__begin%,%(%Namespace_begin%)%)%)%,%
%Namespace__begin,%(%else-then(%Namespace__begin%,%(%namespace__begin%)%)%)%,%
%NAMESPACE__BEGIN,%(%else-then(%NAMESPACE__BEGIN%,%(%toupper(%Namespace__begin%)%)%)%)%,%
%namespace__begin,%(%else-then(%_Namespace__begin%,%(%tolower(%Namespace__begin%)%)%)%)%,%
%Namespace_begin,%(%
%%if-then(%parse(%Namespace_begin%,/,,,,%(namespace %ns% {
)%,ns)%,%(
)%)%%
%)%,%
%NAMESPACE_BEGIN,%(%else-then(%NAMESPACE_BEGIN%,%(%toupper(%Namespace_begin%)%)%)%)%,%
%namespace_begin,%(%else-then(%_Namespace_begin%,%(%tolower(%Namespace_begin%)%)%)%)%,%
%namespace_end,%(%else-then(%namespace_end%,%(%Namespace%)%)%)%,%
%Namespace_end,%(%else-then(%Namespace_end%,%(%namespace_end%)%)%)%,%
%namespace__end,%(%else-then(%namespace__end%,%(%Namespace_end%)%)%)%,%
%Namespace__end,%(%else-then(%Namespace__end%,%(%namespace__end%)%)%)%,%
%NAMESPACE__END,%(%else-then(%NAMESPACE__END%,%(%toupper(%Namespace__end%)%)%)%)%,%
%namespace__end,%(%else-then(%_Namespace__end%,%(%tolower(%Namespace__end%)%)%)%)%,%
%Namespace_end,%(%
%%then-if(%reverse-parse(%Namespace_end%,/,,,,%(} // namespace %ns%
)%,ns)%,%(
)%)%%
%)%,%
%NAMESPACE_END,%(%else-then(%NAMESPACE_END%,%(%toupper(%Namespace_end%)%)%)%)%,%
%namespace_end,%(%else-then(%_Namespace_end%,%(%tolower(%Namespace_end%)%)%)%)%,%
%c_namespace,%(%else-then(%c_namespace%,%(c_NAMESPACE)%)%)%,%
%c_NAMESPACE,%(%else-then(%c_NAMESPACE%,%(%c_namespace%)%)%)%,%
%C_NAMESPACE,%(%else-then(%C_NAMESPACE%,%(%toupper(%c_NAMESPACE%)%)%)%)%,%
%c_namespace,%(%else-then(%_c_NAMESPACE%,%(%tolower(%c_NAMESPACE%)%)%)%)%,%
%cnamespace_begin,%(%else-then(%cnamespace_begin%,%if-no(%is_namespace%,,%(#if defined(%c_NAMESPACE%)
namespace %c_NAMESPACE% {
#endif /* defined(%c_NAMESPACE%) */
)%)%)%)%,%
%CNamespace_begin,%(%else-then(%CNamespace_begin%,%(%cnamespace_begin%)%)%)%,%
%CNAMESPACE_BEGIN,%(%else-then(%CNAMESPACE_BEGIN%,%(%toupper(%CNamespace_begin%)%)%)%)%,%
%cnamespace_begin,%(%else-then(%_CNamespace_begin%,%(%tolower(%CNamespace_begin%)%)%)%)%,%
%cnamespace_end,%(%else-then(%cnamespace_end%,%if-no(%is_namespace%,,%(
#if defined(%c_NAMESPACE%)
} /* namespace %c_NAMESPACE% */
#endif /* defined(%c_NAMESPACE%) */
)%)%)%)%,%
%CNamespace_end,%(%else-then(%CNamespace_end%,%(%cnamespace_end%)%)%)%,%
%CNAMESPACE_END,%(%else-then(%CNAMESPACE_END%,%(%toupper(%CNamespace_end%)%)%)%)%,%
%cnamespace_end,%(%else-then(%_CNamespace_end%,%(%tolower(%CNamespace_end%)%)%)%)%,%
%enum_do,%(%else-then(%enum_do%,%(%else-then(%left(%enum_name%,/)%,%(%else-then(%enum_name%,%(%Name%)%)%)%)%)%)%)%,%
%Enum_do,%(%else-then(%Enum_do%,%(%enum_do%)%)%)%,%
%ENUM_DO,%(%else-then(%ENUM_DO%,%(%toupper(%Enum_do%)%)%)%)%,%
%enum_do,%(%else-then(%_Enum_do%,%(%tolower(%Enum_do%)%)%)%)%,%
%enum_undo,%(%else-then(%enum_undo%,%(%right(%enum_name%,/)%)%)%)%,%
%Enum_undo,%(%else-then(%Enum_undo%,%(%enum_undo%)%)%)%,%
%ENUM_UNDO,%(%else-then(%ENUM_UNDO%,%(%toupper(%Enum_undo%)%)%)%)%,%
%enum_undo,%(%else-then(%_Enum_undo%,%(%tolower(%Enum_undo%)%)%)%)%,%
%enum_name,%(%else-then(%Enum_do%,%(%else-then(%enum_name%,%(%Name%)%)%)%)%)%,%
%Enum_name,%(%else-then(%Enum_name%,%(%enum_name%)%)%)%,%
%ENUM_NAME,%(%else-then(%ENUM_NAME%,%(%toupper(%Enum_name%)%)%)%)%,%
%enum_name,%(%else-then(%_Enum_name%,%(%tolower(%Enum_name%)%)%)%)%,%
%enum_value,%(%else-then(%enum_value%,%(%if-then(%Enum_undo%,Success;)%%Enum_do%Success;%Enum_do%Failed;%if-then(%Enum_undo%,Failed;)%%Enum_do%Busy;%Enum_do%Interrupted;%Enum_do%Invalid;%if-then(%Enum_undo%,Busy;%Enum_undo%Interrupted;%Enum_undo%Invalid;)%)%)%)%,%
%Enum_value,%(%else-then(%Enum_value%,%(%enum_value%)%)%)%,%
%ENUM_VALUE,%(%else-then(%ENUM_VALUE%,%(%toupper(%Enum_value%)%)%)%)%,%
%enum_value,%(%else-then(%_Enum_value%,%(%tolower(%Enum_value%)%)%)%)%,%
%%(%
%%include(%filepath(%input%)%/%Prefix%%Extension%.t)%%
%)%)%
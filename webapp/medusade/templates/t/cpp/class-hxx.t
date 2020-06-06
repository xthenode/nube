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
%#   File: class-hxx.t
%#
%# Author: $author$
%#   Date: 5/7/2018
%########################################################################
%with(%
%extension,%(%else-then(%extension%,%(hxx)%)%)%,%
%Extension,%(%else-then(%Extension%,%(%extension%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_Extension%,%(%tolower(%Extension%)%)%)%)%,%
%Implement_base,%(%else-then(%Implement_base%,%(cImplementBase)%)%)%,%
%Extend_base,%(%else-then(%Extend_base%,%(cBase)%)%)%,%
%Name_implement,%(%else-then(%Name_implement%,%(%Name%Implement)%)%)%,%
%Name_extend,%(%else-then(%Name_extend%,%(%Name%Extend)%)%)%,%
%Implements,%(%else-then(%if-no(%is_implements%,,%else-then(%Implements%,%(%implements%)%)%)%,%(%if-no(%is_implements%,,%Implement_base%)%)%)%)%,%
%Extends,%(%else-then(%if-no(%is_extends%,,%else-then(%Extends%,%(%extends%)%)%)%,%(%if-no(%is_extends%,,%Extend_base%)%)%)%)%,%
%Namet,%(%else-then(%Namet%,%(%Name%T)%)%)%,%
%Implementst,%(%else-then(%Implementst%,%(%Implements%T)%)%)%,%
%Namet_implements,%(%else-then(%Namet_implements%,%(%Namet%Implements)%)%)%,%
%Namet_extends,%(%else-then(%Namet_extends%,%(%Namet%Extends)%)%)%,%
%Implementst_implements,%(%else-then(%Implementst_implements%,%(%Implementst%Implements)%)%)%,%
%cImplements,%(%else-then(%cImplements%,%(cImplements)%)%)%,%
%cExtends,%(%else-then(%cExtends%,%(cExtends)%)%)%,%
%cDerives,%(%else-then(%cDerives%,%(cDerives)%)%)%,%
%Namespace_begin,%(%
%%if-then(%else-then(%parse(%Namespace__begin%,/,,,,%(namespace %ns% {
)%,ns)%,%(%CNamespace_begin%)%)%,%(
)%)%%
%)%,%
%Namespace_end,%(%
%%then-if(%else-then(%reverse-parse(%Namespace__end%,/,,,,%(} /* namespace %ns% */
)%,ns)%,%(%CNamespace_end%)%)%,%(
)%)%%
%)%,%
%Name_comment,%(%else-then(%Name_comment%,%(/**
 **********************************************************************
 *  Class: %Name%
 *
 * Author: $author$
 *   Date: %date()%
 **********************************************************************
 */
)%)%)%,%
%Namet_comment,%(%else-then(%Namet_comment%,%(/**
 **********************************************************************
 *  Class: %Namet%
 *
 * Author: $author$
 *   Date: %date()%
 **********************************************************************
 */
)%)%)%,%
%Implementst_comment,%(%else-then(%Implementst_comment%,%(/**
 **********************************************************************
 *  Class: %Implementst%
 *
 * Author: $author$
 *   Date: %date()%
 **********************************************************************
 */
)%)%)%,%
%_EXPORT_CLASS,%(%else-then(%_EXPORT_CLASS%,%(c_EXPORT_CLASS)%)%)%,%
%%(%
%%include(%filepath(%input%)%/class-hpp.t)%%
%)%)%
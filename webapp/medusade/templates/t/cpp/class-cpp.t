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
%#   File: class-cpp.t
%#
%# Author: $author$
%#   Date: 4/1/2018
%########################################################################
%with(%
%extension,%(%else-then(%extension%,%(cpp)%)%)%,%
%Extension,%(%else-then(%Extension%,%(%extension%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_Extension%,%(%tolower(%Extension%)%)%)%)%,%
%Name_implement,%(%else-then(%Name_implement%,%(%Name%_implement)%)%)%,%
%Name_extend,%(%else-then(%Name_extend%,%(%Name%_extend)%)%)%,%
%Implements,%(%else-then(%if-no(%is_implements%,,%else-then(%Implements%,%(%implements%)%)%)%,%(%if-no(%is_implements%,,%Name_implement%)%)%)%)%,%
%Extends,%(%else-then(%if-no(%is_extends%,,%else-then(%Extends%,%(%extends%)%)%)%,%(%if-no(%is_extends%,,%Name_extend%)%)%)%)%,%
%Namet,%(%else-then(%Namet%,%(%Name%t)%)%)%,%
%Implementst,%(%else-then(%Implementst%,%(%Implements%t)%)%)%,%
%Namet_implements,%(%else-then(%Namet_implements%,%(%Namet%_implements)%)%)%,%
%Namet_extends,%(%else-then(%Namet_extends%,%(%Namet%_extends)%)%)%,%
%Implementst_implements,%(%else-then(%Implementst_implements%,%(%Implementst%_implements)%)%)%,%
%cImplements,%(%else-then(%cImplements%,%(Implements)%)%)%,%
%cExtends,%(%else-then(%cExtends%,%(Extends)%)%)%,%
%cDerives,%(%else-then(%cDerives%,%(Derives)%)%)%,%
%Name_comment,%(%else-then(%Name_comment%,%(%
%///////////////////////////////////////////////////////////////////////
///  Class: %Name%
///////////////////////////////////////////////////////////////////////
)%)%)%,%
%Namet_comment,%(%else-then(%Namet_comment%,%(%
%///////////////////////////////////////////////////////////////////////
///  Class: %Namet%
///////////////////////////////////////////////////////////////////////
)%)%)%,%
%Implementst_comment,%(%else-then(%Implementst_comment%,%(%
%///////////////////////////////////////////////////////////////////////
///  Class: %Implementst%
///////////////////////////////////////////////////////////////////////
)%)%)%,%
%%(%
%%include(%filepath(%input%)%/%Prefix%cpp-cpp.t)%%
%)%)%
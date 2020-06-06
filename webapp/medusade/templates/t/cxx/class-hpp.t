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
%#   File: class-hpp.t
%#
%# Author: $author$
%#   Date: 11/26/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%%(%
%%if(%Class%,%(
/// class %Namet%%
%%if-no(%is_template%,,%(
template <%Template%%then-if(%Extends%,%(%if(%Template%,%(, )%)%class TExtends = )%)%%then-if(%Implements%,%(%if(%Template%%Extends%,%(, )%)%class TImplements = )%)%>)%)%
class exported %Namet%%if(%Implements%%Extends%,%(: %
%%then-if(%TImplements%,%(virtual %Access% )%)%%
%%then-if(%TExtends%,%(%if(%Implements%,%(, )%)%%Access% )%)%%
%)%)% {
%Access%:%
%%if(%Implements%,%(
    typedef %TImplements% implements;)%)%%
%%if(%Extends%,%(
    typedef %TExtends% extends;)%)%
    typedef %Namet% derives;
%if(%Coopy_constructor%%Constructor%%Destructor%,%(
    /// constructor / destructor%
%%if(%Copy_constructor%,%(%if(%Private_copy_constructor%,,%(
    %if(%Explicit_copy_constructor%,explicit )%%Namet%%(()%const %Namet%& copy%())%%if(%Extends%,%(: extends%(()%copy%())%)%)% {
    })%)%)%)%%
%%if(%Constructor%,%(%if(%Private_constructor%,,%(
    %if(%Explicit_constructor%,explicit )%%Namet%%(()%%())% {
    })%)%)%)%%
%%if(%Destructor%,%(%if(%Private_destructor%,,%(
    %if(%Virtual_destructor%,virtual )%~%Namet%%(()%%())% {
    })%)%)%)%%
%%if(%Private_copy_constructor%%Private_constructor%%Private_destructor%,%(
private:%
%%if(%Copy_constructor%,%(%if(%Private_copy_constructor%,%(
    %if(%Explicit_copy_constructor%,explicit )%%Namet%%(()%const %Namet%& copy%())%%if(%Extends%,%(: extends%(()%copy%())%)%)% {
    })%)%)%)%%
%%if(%Constructor%,%(%if(%Private_constructor%,%(
    %if(%Explicit_constructor%,explicit )%%Namet%%(()%%())% {
    })%)%)%)%%
%%if(%Destructor%,%(%if(%Private_destructor%,%(
    %if(%Virtual_destructor%,virtual )%~%Namet%%(()%%())% {
    })%)%)%)%%
%
%Access%:%
%)%)%%
%)%)%%
%
}; /// class %Namet%
%if-no(%is_template%,,%(typedef %Namet%<> %Name%;
)%)%%
%)%)%
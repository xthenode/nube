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
%#   File: implement-class-hpp-hpp.t
%#
%# Author: $author$
%#   Date: 5/10/2018
%########################################################################
%with(%
%%(%
%%include(%filepath(%input%)%/file-begin-%Extension%.t)%%
%%if-then(%parse(%Include%,%(,)%,,,,%(#include "%Include%"
)%,Include)%%parse(%Sys_include%,%(,)%,,,,%(#include <%Include%>
)%,Include)%,
)%%
%%Namespace_begin%%
%%if(%Implements%,%(typedef %Implements% %Namet_implements%;
)%)%%
%%Namet_comment%template <%if(%Implements%,%(class TImplements = %Namet_implements%)%)%>
class %_EXPORT_CLASS% %Namet%: %if(%Implements%,%(virtual public TImplements)%)% {
public:
    %if(%Implements%,%(typedef TImplements %cImplements%;)%)%
};
typedef %Namet%<> %Name%;
%
%%Namespace_end%%
%%include(%filepath(%input%)%/file-end-%Extension%.t)%%
%)%)%
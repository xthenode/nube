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
%#   File: Application-popdown-html.t
%#
%# Author: $author$
%#   Date: 4/28/2020
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_application,%(%else-then(%is_application%,%(%is_Application%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(Application)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%if-no(%is_application%,,%(%application%)%)%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_application%,%(%tolower(%Application%)%)%)%)%,%
%is_file,%(%else-then(%is_file%,%(%is_File%)%)%)%,%
%file,%(%else-then(%if-no(%is_file%,,%(%file%)%)%,%(%if-no(%is_file%,,%(%Application%-popdown)%)%)%)%)%,%
%File,%(%else-then(%if-no(%is_file%,,%(%File%)%)%,%(%if-no(%is_file%,,%(%file%)%)%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_file%,%(%tolower(%File%)%)%)%)%,%
%is_applicationpopdown,%(%else-then(%is_applicationpopdown%,%(%is_ApplicationPopdown%)%)%)%,%
%applicationpopdown,%(%else-then(%if-no(%is_applicationpopdown%,,%(%applicationpopdown%)%)%,%(%if-no(%is_applicationpopdown%,,%(%
%Xthenode,Aegirde,Sthenode;%
%frame-square:Medusade@/medusade/html/Medusade-home.html,frame-square:Euryalede@/medusade/html/Euryalede-home.html,frame-square:Sthenode@/medusade/html/Sthenode-home.html;%
%frame-square:Application,Xthenode@/xthenode/html/Xthenode.html%
%)%)%)%)%)%,%
%ApplicationPopdown,%(%else-then(%if-no(%is_applicationpopdown%,,%(%ApplicationPopdown%)%)%,%(%if-no(%is_applicationpopdown%,,%(%applicationpopdown%)%)%)%)%)%,%
%APPLICATIONPOPDOWN,%(%else-then(%APPLICATIONPOPDOWN%,%(%toupper(%ApplicationPopdown%)%)%)%)%,%
%applicationpopdown,%(%else-then(%_applicationpopdown%,%(%tolower(%ApplicationPopdown%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-html.t)%%
%<div id="myPopdown" class="popdown-content">
<table class="popover" border="0"><tr>
%parse(%ApplicationPopdown%,;,,%(
    </tr><tr>
)%,,%(%parse(%PopdownRow%,%(,)%,,,,%(%
%%include(%Include_path%/Application-popdown-item-html.t)%%
%)%,PopdownColumn)%)%,PopdownRow)%</tr></table>
</div>
)%)%
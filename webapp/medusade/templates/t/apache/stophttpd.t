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
%#   File: stophttpd.t
%#
%# Author: $author$
%#   Date: 12/1/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_file,%(%else-then(%is_file%,%(%is_File%)%)%)%,%
%file,%(%else-then(%if-no(%is_file%,,%(%file%)%)%,%(%if-no(%is_file%,%(%filebase(%filename(%input%)%)%)%,%(%filebase(%filename(%input%)%)%)%)%)%)%)%,%
%File,%(%else-then(%if-no(%is_file%,,%(%File%)%)%,%(%file%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_File%,%(%tolower(%File%)%)%)%)%,%
%is_file,%(yes)%,%
%is_action,%(%else-then(%is_action%,%(%is_Action%)%)%)%,%
%action,%(%else-then(%if-no(%is_action%,,%(%action%)%)%,%(%if-no(%is_action%,,%(stop)%)%)%)%)%,%
%Action,%(%else-then(%if-no(%is_action%,,%(%Action%)%)%,%(%action%)%)%)%,%
%ACTION,%(%else-then(%ACTION%,%(%toupper(%Action%)%)%)%)%,%
%action,%(%else-then(%_Action%,%(%tolower(%Action%)%)%)%)%,%
%%(%
%%include(%include_path%/starthttpd.t)%%
%)%)%
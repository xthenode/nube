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
%#   File: application-footer-html.t
%#
%# Author: $author$
%#   Date: 12/13/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_prefix,%(%else-then(%is_prefix%,%(%is_Prefix%)%)%)%,%
%prefix,%(%else-then(%if-no(%is_prefix%,,%(%prefix%)%)%,%(%if-no(%is_prefix%,,%(html)%)%)%)%)%,%
%Prefix,%(%else-then(%if-no(%is_prefix%,,%(%Prefix%)%)%,%(%prefix%)%)%)%,%
%PREFIX,%(%else-then(%PREFIX%,%(%toupper(%Prefix%)%)%)%)%,%
%prefix,%(%else-then(%_Prefix%,%(%tolower(%Prefix%)%)%)%)%,%
%is_suffix,%(%else-then(%is_suffix%,%(%is_Suffix%)%)%)%,%
%suffix,%(%else-then(%if-no(%is_suffix%,,%(%suffix%)%)%,%(%if-no(%is_suffix%,,%(footer-html)%)%)%)%)%,%
%Suffix,%(%else-then(%if-no(%is_suffix%,,%(%Suffix%)%)%,%(%suffix%)%)%)%,%
%SUFFIX,%(%else-then(%SUFFIX%,%(%toupper(%Suffix%)%)%)%)%,%
%suffix,%(%else-then(%_Suffix%,%(%tolower(%Suffix%)%)%)%)%,%
%%(%
%%include(%include_path%/application.t)%%
%)%)%
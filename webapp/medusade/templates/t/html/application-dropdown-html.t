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
%#   File: application-dropdown-html.t
%#
%# Author: $author$
%#   Date: 12/10/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_dropdownitems,%(%else-then(%is_dropdownitems%,%(%is_DropdownItems%)%)%)%,%
%dropdownitems,%(%else-then(%if-no(%is_dropdownitems%,,%(%dropdownitems%)%)%,%(%if-no(%is_dropdownitems%,,%(Home:%Application%.html)%)%)%)%)%,%
%DropdownItems,%(%else-then(%if-no(%is_dropdownitems%,,%(%DropdownItems%)%)%,%(%dropdownitems%)%)%)%,%
%DROPDOWNITEMS,%(%else-then(%DROPDOWNITEMS%,%(%toupper(%DropdownItems%)%)%)%)%,%
%dropdownitems,%(%else-then(%_DropdownItems%,%(%tolower(%DropdownItems%)%)%)%)%,%
%%(%
%%if(%Html%,,%(%
%%include(%include_path%/../html/html-file.t)%%
%%)%)%%
%<div id="myDropdown" class="dropdown-content">
%parse(%DropdownItems%,;,,,,%(%
%%with(%
%is_itemlabel,%(%else-then(%is_itemlabel%,%(%is_ItemLabel%)%)%)%,%
%itemlabel,%(%else-then(%if-no(%is_itemlabel%,,%(%itemlabel%)%)%,%(%if-no(%is_itemlabel%,,%(%left(%Item%,:)%)%)%)%)%)%,%
%ItemLabel,%(%else-then(%if-no(%is_itemlabel%,,%(%ItemLabel%)%)%,%(%itemlabel%)%)%)%,%
%ITEMLABEL,%(%else-then(%ITEMLABEL%,%(%toupper(%ItemLabel%)%)%)%)%,%
%itemlabel,%(%else-then(%_ItemLabel%,%(%tolower(%ItemLabel%)%)%)%)%,%
%is_itemhref,%(%else-then(%is_itemhref%,%(%is_ItemHref%)%)%)%,%
%itemhref,%(%else-then(%if-no(%is_itemhref%,,%(%itemhref%)%)%,%(%if-no(%is_itemhref%,,%(%right-of-left(%Item%,:)%)%)%)%)%)%,%
%ItemHref,%(%else-then(%if-no(%is_itemhref%,,%(%ItemHref%)%)%,%(%itemhref%)%)%)%,%
%ITEMHREF,%(%else-then(%ITEMHREF%,%(%toupper(%ItemHref%)%)%)%)%,%
%itemhref,%(%else-then(%_ItemHref%,%(%tolower(%ItemHref%)%)%)%)%,%
%%(    <a class="dropdown-item" href="%ItemHref%">%ItemLabel%</a>)%)%%
%)%,Item)%
</div>
%
%)%)%
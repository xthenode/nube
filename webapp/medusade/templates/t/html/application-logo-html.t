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
%#   File: application-logo-html.t
%#
%# Author: $author$
%#   Date: 12/10/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%%(%
%%if(%Html%,,%(%
%%include(%include_path%/../html/html-file.t)%%
%%)%)%%
%<table class="body-logo">
    <tr><td>
        <table class="body-logo-icon" onclick="onDropdownClick('myDropdown', event)">
            <tr><td class="body-logo-icon-image">
                <table class="body-logo-label">
                    <tr><td class="body-logo-label-text">%Application%</td></tr>
                </table>
            </td></tr>
        </table>
    </td></tr>
</table>
%
%)%)%
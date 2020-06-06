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
%#   File: application-header-html.t
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
%<table class="header" border="0"><tr>
    <!--
    =====================================================================
    === parent
    =====================================================================
    -->
    <td class="header-button">
    <table class="parent" border="0"><tr><td>
        <button class="parent-button" onclick="onClickParentLocation(event)">
            <table class="parent-dots"><tr>
                <td class="parent-dot"></td>
                <td class="parent-dot"></td>
            </tr></table>
        </button>
    </td></tr></table>
    <!--
    =====================================================================
    === self
    =====================================================================
    -->
    <table class="parent" border="0"><tr><td>
        <button class="parent-button" onclick="onClickSelfLocation(event)">
            <table class="parent-dots"><tr>
                <td class="parent-dot"></td>
            </tr></table>
        </button>
    </td></tr></table>
    <!--
    =====================================================================
    === logo
    =====================================================================
    -->
    <table class="parent" border="0"><tr><td>
        <button class="header-logo-button" onclick="onClickSelfLocation(event)">
            <table class="header-logo"><tr><td>
                    <table class="header-logo-icon">
                        <tr><td class="header-logo-icon-image">
                            <table class="header-logo-label">
                                <tr><td class="header-logo-label-text">%Application%</td></tr>
                            </table>
                        </td></tr>
                    </table>
                </td></tr></table>
        </button>
    </td></tr></table>
    <!--
    =====================================================================
    === title
    =====================================================================
    -->
    <table class="parent" border="0"><tr><td>
        <button class="header-title-button" onclick="onClickSelfLocation(event)">
            <table class="header-title"><tr><td>
                    <table class="header-title-label">
                        <tr><td class="header-title-label-text">%Application%</td></tr>
                    </table>
                </td></tr></table>
        </button>
    </td></tr></table>
    </td><td class="header-button">
    <!--
    =====================================================================
    === dropdown
    =====================================================================
    -->
    <table class="dropdown" border="0"><tr><td>
        <button class="dropdown-button" onclick="onDropdownClick('myDropdown')">
            <table class="dropdown-bars"><tr>
                <td class="dropdown-bar"></td></tr><tr>
                <td class="dropdown-bar"></td></tr><tr>
                <td class="dropdown-bar"></td>
            </tr></table>
        </button>
    </td></tr></table>
</td></tr></table>
%
%)%)%
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
%#   Date: 12/12/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%%(%
%%if(%Html%,,%(%
%%include(%include_path%/../html/html-file.t)%%
%%)%)%%
%
<table class="footer" border="0"><tr>
    <!--
    =====================================================================
    === dropover
    =====================================================================
    -->
    <td id="myDropover" class="footer-button">
    <table class="dropover" border="0"><tr><td>
        <button class="dropover-button" onclick="onDropoverClick('myDropover', event)">
            <table class="dropover-bars"><tr>
                <td class="dropover-bar"></td>
                <td class="dropover-bar"></td>
                <td class="dropover-bar"></td>
            </tr></table>
        </button>
    </td></tr></table>

    <!--
    =====================================================================
    === %Application%
    =====================================================================
    -->
    </td><td name="myDropover" class="footer-buttons"><a href="%Application%.html">
    <table class="footer-logo" border="0"><tr><td>
        <table class="footer-logo-icon">
            <tr><td class="footer-logo-icon-image" style="background-image:url('%FooterLogoImage%')">
                <table class="footer-logo-label">
                    <tr><td class="footer-logo-label-text">%Application%</td></tr>
                </table>
            </td></tr>
        </table>
    </td></tr></table></a>

</td></tr></table>
%
%)%)%
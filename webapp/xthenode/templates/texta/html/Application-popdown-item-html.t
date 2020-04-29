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
%#   File: Application-popdown-item-html.t
%#
%# Author: $author$
%#   Date: 4/29/2020
%########################################################################
%with(%
%is_popdowntype,%(%else-then(%is_popdowntype%,%(%is_PopdownType%)%)%)%,%
%popdowntype,%(%else-then(%if-no(%is_popdowntype%,,%(%popdowntype%)%)%,%(%if-no(%is_popdowntype%,,%(%left(%PopdownColumn%,:)%)%)%)%)%)%,%
%PopdownType,%(%else-then(%if-no(%is_popdowntype%,,%(%PopdownType%)%)%,%(%if-no(%is_popdowntype%,,%(%popdowntype%)%)%)%)%)%,%
%POPDOWNTYPE,%(%else-then(%POPDOWNTYPE%,%(%toupper(%PopdownType%)%)%)%)%,%
%popdowntype,%(%else-then(%_popdowntype%,%(%tolower(%PopdownType%)%)%)%)%,%
%is_popdowntarget,%(%else-then(%is_popdowntarget%,%(%is_PopdownTarget%)%)%)%,%
%popdowntarget,%(%else-then(%if-no(%is_popdowntarget%,,%(%popdowntarget%)%)%,%(%if-no(%is_popdowntarget%,,%(%right(%PopdownColumn%,@)%)%)%)%)%)%,%
%PopdownTarget,%(%else-then(%if-no(%is_popdowntarget%,,%(%PopdownTarget%)%)%,%(%if-no(%is_popdowntarget%,,%(%popdowntarget%)%)%)%)%)%,%
%POPDOWNTARGET,%(%else-then(%POPDOWNTARGET%,%(%toupper(%PopdownTarget%)%)%)%)%,%
%popdowntarget,%(%else-then(%_popdowntarget%,%(%tolower(%PopdownTarget%)%)%)%)%,%
%is_popdowncolumntype,%(%else-then(%is_popdowncolumntype%,%(%is_PopdownColumnType%)%)%)%,%
%popdowncolumntype,%(%else-then(%if-no(%is_popdowncolumntype%,,%(%popdowncolumntype%)%)%,%(%if-no(%is_popdowncolumntype%,,%(%else-then(%left(%PopdownColumn%,@)%,%(%PopdownColumn%)%)%)%)%)%)%)%,%
%PopdownColumnType,%(%else-then(%if-no(%is_popdowncolumntype%,,%(%PopdownColumnType%)%)%,%(%if-no(%is_popdowncolumntype%,,%(%popdowncolumntype%)%)%)%)%)%,%
%POPDOWNCOLUMNTYPE,%(%else-then(%POPDOWNCOLUMNTYPE%,%(%toupper(%PopdownColumnType%)%)%)%)%,%
%popdowncolumntype,%(%else-then(%_popdowncolumntype%,%(%tolower(%PopdownColumnType%)%)%)%)%,%
%is_popdowncol,%(%else-then(%is_popdowncol%,%(%is_PopdownCol%)%)%)%,%
%popdowncol,%(%else-then(%if-no(%is_popdowncol%,,%(%popdowncol%)%)%,%(%if-no(%is_popdowncol%,,%(%else-then(%right(%PopdownColumnType%,:)%,%(%PopdownColumnType%)%)%)%)%)%)%)%,%
%PopdownCol,%(%else-then(%if-no(%is_popdowncol%,,%(%PopdownCol%)%)%,%(%if-no(%is_popdowncol%,,%(%popdowncol%)%)%)%)%)%,%
%POPDOWNCOL,%(%else-then(%POPDOWNCOL%,%(%toupper(%PopdownCol%)%)%)%)%,%
%popdowncol,%(%else-then(%_popdowncol%,%(%tolower(%PopdownCol%)%)%)%)%,%
%is_popdownlabel,%(%else-then(%is_popdownlabel%,%(%is_PopdownLabel%)%)%)%,%
%popdownlabel,%(%else-then(%if-no(%is_popdownlabel%,,%(%popdownlabel%)%)%,%(%if-no(%is_popdownlabel%,,%(%else-then(%left(%PopdownCol%,=)%,%(%PopdownCol%)%)%)%)%)%)%)%,%
%PopdownLabel,%(%else-then(%if-no(%is_popdownlabel%,,%(%PopdownLabel%)%)%,%(%if-no(%is_popdownlabel%,,%(%popdownlabel%)%)%)%)%)%,%
%POPDOWNLABEL,%(%else-then(%POPDOWNLABEL%,%(%toupper(%PopdownLabel%)%)%)%)%,%
%popdownlabel,%(%else-then(%_popdownlabel%,%(%tolower(%PopdownLabel%)%)%)%)%,%
%is_popdownimage,%(%else-then(%is_popdownimage%,%(%is_PopdownImage%)%)%)%,%
%popdownimage,%(%else-then(%if-no(%is_popdownimage%,,%(%popdownimage%)%)%,%(%if-no(%is_popdownimage%,,%(%else-then(%right(%PopdownCol%,=)%,%(%PopdownCol%)%)%)%)%)%)%)%,%
%PopdownImage,%(%else-then(%if-no(%is_popdownimage%,,%(%PopdownImage%)%)%,%(%if-no(%is_popdownimage%,,%(%popdownimage%)%)%)%)%)%,%
%POPDOWNIMAGE,%(%else-then(%POPDOWNIMAGE%,%(%toupper(%PopdownImage%)%)%)%)%,%
%popdownimage,%(%else-then(%_popdownimage%,%(%tolower(%PopdownImage%)%)%)%)%,%
%is_logolabeltext,%(%else-then(%is_logolabeltext%,%(%is_LogoLabelText%)%)%)%,%
%logolabeltext,%(%else-then(%if-no(%is_logolabeltext%,,%(%logolabeltext%)%)%,%(%if-no(%is_logolabeltext%,,%(%POPDOWNLABEL%)%)%)%)%)%,%
%LogoLabelText,%(%else-then(%if-no(%is_logolabeltext%,,%(%LogoLabelText%)%)%,%(%if-no(%is_logolabeltext%,,%(%logolabeltext%)%)%)%)%)%,%
%LOGOLABELTEXT,%(%else-then(%LOGOLABELTEXT%,%(%toupper(%LogoLabelText%)%)%)%)%,%
%logolabeltext,%(%else-then(%_logolabeltext%,%(%tolower(%LogoLabelText%)%)%)%)%,%
%is_logoimagefile,%(%else-then(%is_logoimagefile%,%(%is_LogoImageFile%)%)%)%,%
%logoimagefile,%(%else-then(%if-no(%is_logoimagefile%,,%(%logoimagefile%)%)%,%(%if-no(%is_logoimagefile%,,%(%PopdownImage%)%)%)%)%)%,%
%LogoImageFile,%(%else-then(%if-no(%is_logoimagefile%,,%(%LogoImageFile%)%)%,%(%if-no(%is_logoimagefile%,,%(%logoimagefile%)%)%)%)%)%,%
%LOGOIMAGEFILE,%(%else-then(%LOGOIMAGEFILE%,%(%toupper(%LogoImageFile%)%)%)%)%,%
%logoimagefile,%(%else-then(%_logoimagefile%,%(%tolower(%LogoImageFile%)%)%)%)%,%
%is_logoimagebase,%(%else-then(%is_logoimagebase%,%(%is_LogoImageBase%)%)%)%,%
%logoimagebase,%(%else-then(%if-no(%is_logoimagebase%,,%(%logoimagebase%)%)%,%(%if-no(%is_logoimagebase%,,%(%filebase(%LogoImageFile%)%)%)%)%)%)%,%
%LogoImageBase,%(%else-then(%if-no(%is_logoimagebase%,,%(%LogoImageBase%)%)%,%(%if-no(%is_logoimagebase%,,%(%logoimagebase%)%)%)%)%)%,%
%LOGOIMAGEBASE,%(%else-then(%LOGOIMAGEBASE%,%(%toupper(%LogoImageBase%)%)%)%)%,%
%logoimagebase,%(%else-then(%_logoimagebase%,%(%tolower(%LogoImageBase%)%)%)%)%,%
%is_logoimageextension,%(%else-then(%is_logoimageextension%,%(%is_LogoImageExtension%)%)%)%,%
%logoimageextension,%(%else-then(%if-no(%is_logoimageextension%,,%(%logoimageextension%)%)%,%(%if-no(%is_logoimageextension%,,%(%else-then(%fileextension(%LogoImageFile%)%,%(jpeg)%)%)%)%)%)%)%,%
%LogoImageExtension,%(%else-then(%if-no(%is_logoimageextension%,,%(%LogoImageExtension%)%)%,%(%if-no(%is_logoimageextension%,,%(%logoimageextension%)%)%)%)%)%,%
%LOGOIMAGEEXTENSION,%(%else-then(%LOGOIMAGEEXTENSION%,%(%toupper(%LogoImageExtension%)%)%)%)%,%
%logoimageextension,%(%else-then(%_logoimageextension%,%(%tolower(%LogoImageExtension%)%)%)%)%,%
%is_footerlogoring,%(%else-then(%is_footerlogoring%,%(%is_FooterLogoRing%)%)%)%,%
%footerlogoring,%(%else-then(%if-no(%is_footerlogoring%,,%(%footerlogoring%)%)%,%(%if-no(%is_footerlogoring%,,%(%else-then(%left(%PopdownType%,-)%,%(ring)%)%)%)%)%)%)%,%
%FooterLogoRing,%(%else-then(%if-no(%is_footerlogoring%,,%(%FooterLogoRing%)%)%,%(%if-no(%is_footerlogoring%,,%(%footerlogoring%)%)%)%)%)%,%
%FOOTERLOGORING,%(%else-then(%FOOTERLOGORING%,%(%toupper(%FooterLogoRing%)%)%)%)%,%
%footerlogoring,%(%else-then(%_footerlogoring%,%(%tolower(%FooterLogoRing%)%)%)%)%,%
%is_footerlogocircle,%(%else-then(%is_footerlogocircle%,%(%is_FooterLogoCircle%)%)%)%,%
%footerlogocircle,%(%else-then(%if-no(%is_footerlogocircle%,,%(%footerlogocircle%)%)%,%(%if-no(%is_footerlogocircle%,,%(%else-then(%right(%PopdownType%,-)%,%(circle)%)%)%)%)%)%)%,%
%FooterLogoCircle,%(%else-then(%if-no(%is_footerlogocircle%,,%(%FooterLogoCircle%)%)%,%(%if-no(%is_footerlogocircle%,,%(%footerlogocircle%)%)%)%)%)%,%
%FOOTERLOGOCIRCLE,%(%else-then(%FOOTERLOGOCIRCLE%,%(%toupper(%FooterLogoCircle%)%)%)%)%,%
%footerlogocircle,%(%else-then(%_footerlogocircle%,%(%tolower(%FooterLogoCircle%)%)%)%)%,%
%is_popdownlocation,%(%else-then(%is_popdownlocation%,%(%is_PopdownLocation%)%)%)%,%
%popdownlocation,%(%else-then(%if-no(%is_popdownlocation%,,%(%popdownlocation%)%)%,%(%if-no(%is_popdownlocation%,,%(%else-then(%PopdownTarget%,%(%PopdownLabel%-html.t)%)%)%)%)%)%)%,%
%PopdownLocation,%(%else-then(%if-no(%is_popdownlocation%,,%(%PopdownLocation%)%)%,%(%if-no(%is_popdownlocation%,,%(%popdownlocation%)%)%)%)%)%,%
%POPDOWNLOCATION,%(%else-then(%POPDOWNLOCATION%,%(%toupper(%PopdownLocation%)%)%)%)%,%
%popdownlocation,%(%else-then(%_popdownlocation%,%(%tolower(%PopdownLocation%)%)%)%)%,%
%%(%
%    <!--
    =====================================================================
    === %Application%
    =====================================================================
    -->
    <td name="myPopover" class="popover-buttons"><a href="%PopdownLocation%">
    <table class="footer-logo" border="0"><tr><td>
        <table class="footer-logo-%FooterLogoRing%" border="0"><tr><td>
            <table class="footer-logo-%FooterLogoCircle%" border="0"><tr class="footer-logo-background"><td>
                <table class="footer-logo-background-background" border="0"><tr class="footer-logo-icon"><td>
                    <table class="footer-logo-icon-icon" border="0"><tr>
                    <td class="footer-logo-icon-image" style="background-image:url('../images/%LogoImageBase%%then-if(%LogoImageExtension%,%(.)%)%')">
                    </td></tr></table>
                </td></tr><tr><td class="footer-logo-label">
                    <table class="footer-logo-label-label" border="0"><tr>
                    <td class="footer-logo-label-text">%LogoLabelText%</td></tr></table>
                </td></tr></table>
            </td></tr></table>
        </td></tr></table>
    </td></tr></table></a></td>
)%)%
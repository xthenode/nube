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
%#   File: Application-header-css.t
%#
%# Author: $author$
%#   Date: 4/26/2020
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
%file,%(%else-then(%if-no(%is_file%,,%(%file%)%)%,%(%if-no(%is_file%,,%(%Application%-header)%)%)%)%)%,%
%File,%(%else-then(%if-no(%is_file%,,%(%File%)%)%,%(%if-no(%is_file%,,%(%file%)%)%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_file%,%(%tolower(%File%)%)%)%)%,%
%is_parentdotcolor,%(%else-then(%is_parentdotcolor%,%(%is_ParentDotColor%)%)%)%,%
%parentdotcolor,%(%else-then(%if-no(%is_parentdotcolor%,,%(%parentdotcolor%)%)%,%(%if-no(%is_parentdotcolor%,,%(black)%)%)%)%)%,%
%ParentDotColor,%(%else-then(%if-no(%is_parentdotcolor%,,%(%ParentDotColor%)%)%,%(%if-no(%is_parentdotcolor%,,%(%parentdotcolor%)%)%)%)%)%,%
%PARENTDOTCOLOR,%(%else-then(%PARENTDOTCOLOR%,%(%toupper(%ParentDotColor%)%)%)%)%,%
%parentdotcolor,%(%else-then(%_parentdotcolor%,%(%tolower(%ParentDotColor%)%)%)%)%,%
%is_parentdothover,%(%else-then(%is_parentdothover%,%(%is_ParentDotHover%)%)%)%,%
%parentdothover,%(%else-then(%if-no(%is_parentdothover%,,%(%parentdothover%)%)%,%(%if-no(%is_parentdothover%,,%(gray)%)%)%)%)%,%
%ParentDotHover,%(%else-then(%if-no(%is_parentdothover%,,%(%ParentDotHover%)%)%,%(%if-no(%is_parentdothover%,,%(%parentdothover%)%)%)%)%)%,%
%PARENTDOTHOVER,%(%else-then(%PARENTDOTHOVER%,%(%toupper(%ParentDotHover%)%)%)%)%,%
%parentdothover,%(%else-then(%_parentdothover%,%(%tolower(%ParentDotHover%)%)%)%)%,%
%is_logoringcolor,%(%else-then(%is_logoringcolor%,%(%is_LogoRingColor%)%)%)%,%
%logoringcolor,%(%else-then(%if-no(%is_logoringcolor%,,%(%logoringcolor%)%)%,%(%if-no(%is_logoringcolor%,,%(gray)%)%)%)%)%,%
%LogoRingColor,%(%else-then(%if-no(%is_logoringcolor%,,%(%LogoRingColor%)%)%,%(%if-no(%is_logoringcolor%,,%(%logoringcolor%)%)%)%)%)%,%
%LOGORINGCOLOR,%(%else-then(%LOGORINGCOLOR%,%(%toupper(%LogoRingColor%)%)%)%)%,%
%logoringcolor,%(%else-then(%_logoringcolor%,%(%tolower(%LogoRingColor%)%)%)%)%,%
%is_logoringhover,%(%else-then(%is_logoringhover%,%(%is_LogoRingHover%)%)%)%,%
%logoringhover,%(%else-then(%if-no(%is_logoringhover%,,%(%logoringhover%)%)%,%(%if-no(%is_logoringhover%,,%(teal)%)%)%)%)%,%
%LogoRingHover,%(%else-then(%if-no(%is_logoringhover%,,%(%LogoRingHover%)%)%,%(%if-no(%is_logoringhover%,,%(%logoringhover%)%)%)%)%)%,%
%LOGORINGHOVER,%(%else-then(%LOGORINGHOVER%,%(%toupper(%LogoRingHover%)%)%)%)%,%
%logoringhover,%(%else-then(%_logoringhover%,%(%tolower(%LogoRingHover%)%)%)%)%,%
%is_logoimagefile,%(%else-then(%is_logoimagefile%,%(%is_LogoImageFile%)%)%)%,%
%logoimagefile,%(%else-then(%if-no(%is_logoimagefile%,,%(%logoimagefile%)%)%,%(%if-no(%is_logoimagefile%,,%(%Application%)%)%)%)%)%,%
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
%%(%
%%include(%Include_path%/file-css.t)%%
%
/*
**********************************************************************
** header
** ...
*/
.header {
    width: 100%(%)%;
    height: 42px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: black;
    border-spacing: 0px 0px;
    position: relative;
    float: top;
    z-index: 1;
}
.header-button {
    padding: 0px;
}

/*
** parent
** ...
*/
.parent {
     width: 64px;
     height: 100%(%)%;
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: black;
     border-spacing: 0px 0px;
     text-align: center;
     float: left;
}
.parent-button {
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: black;
     border-spacing: 0px 0px;
     background-color: transparent;
     cursor: pointer;
}
.parent-button:hover, .parent-button:focus {
     outline: none;
}
.parent-button:hover .parent-dot, .parent-button:focus .parent-dot {
     background-color: %ParentDotHover%;
}
.parent-dots {
    width: 100%(%)%;
    height: 100%(%)%;
    margin: auto;
    border: 0px;
    border-style: solid;
    border-color: black;
    border-spacing: 4px 20px;
}
.parent-dot {
     width: 8px;
     height: 8px;
     padding: 0px;
     border-radius: 4px;
     background-color: %ParentDotColor%;
}
/*
** ...
** parent
*/

/*
** popdown
** ...
*/
.popdown {
     width: 64px;
     height: 100%(%)%;
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: black;
     border-spacing: 0px 0px;
     text-align: center;
     float: right;
}
.popdown-button {
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: black;
     border-spacing: 0px 0px;
     background-color: transparent;
     cursor: pointer;
}
.popdown-button:hover, .popdown-button:focus {
     outline: none;
}
.popdown-button:hover .popdown-dot, .popdown-button:focus .popdown-dot {
     background-color: %ParentDotHover%;
}
.popdown-dots {
    width: 100%(%)%;
    height: 100%(%)%;
    margin: auto;
    border: 0px;
    border-style: solid;
    border-color: black;
    border-spacing: 4px 4px;
}
.popdown-dot {
     width: 7px;
     height: 7px;
     padding: 0px;
     border-radius: 4px;
     background-color: %ParentDotColor%;
}
.popdown-content {
     padding: 0px;
     border-spacing: 0px 0px;
     border-style: solid;
     border-color: gray;
     border-width: 1px 3px 3px 1px;
     border-radius: 5px 5px 5px 5px;
     background-color: lightgray;
     position: absolute;
     min-width: 160px;
     right: 0;
     z-index: 2;
     display: none;
 }
.popdown-content a {
     color: black;
     padding: 12px 16px;
     border-spacing: 0px 0px;
     text-decoration: none;
     font-size: 18;  
     display: block;
}
.popdown-content a:hover {
     color: %ParentDotHover%;
     text-decoration: underline;
}
/*
** ...
** popdown
*/

/*
** dropdown
** ...
*/
.dropdown {
     width: 64px;
     height: 100%(%)%;
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: black;
     border-spacing: 0px 0px;
     text-align: center;
     float: right;
}
.dropdown-button {
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: black;
     border-spacing: 0px 0px;
     background-color: transparent;
     cursor: pointer;
}
.dropdown-button:hover, .dropdown-button:focus {
     outline: none;
}
.dropdown-button:hover .dropdown-bar, .dropdown-button:focus .dropdown-bar {
     background-color: %ParentDotHover%;
}
.dropdown-bars {
    width: 100%(%)%;
    height: 100%(%)%;
    margin: auto;
    border: 0px;
    border-style: solid;
    border-color: black;
    border-spacing: 4px 4px;
}
.dropdown-bar {
     width: 32px;
     height: 6px;
     padding: 0px;
     border-radius: 3px;
     background-color: black;
}
.dropdown-content {
     padding: 0px;
     border-spacing: 0px 0px;
     border-style: solid;
     border-color: gray;
     border-width: 1px 3px 3px 1px;
     border-radius: 5px 5px 5px 5px;
     background-color: lightgray;
     position: absolute;
     min-width: 160px;
     right: 0;
     z-index: 2;
     display: none;
 }
.dropdown-content a {
     color: black;
     padding: 12px 16px;
     border-spacing: 0px 0px;
     text-decoration: none;
     font-size: 18;  
     display: block;
}
.dropdown-content a:hover {
     color: %ParentDotHover%;
     text-decoration: underline;
}
/*
** ...
** dropdown
*/

/*
** ...
** header
**********************************************************************
*/

/*
**********************************************************************
** footer
** ...
*/
.footer {
    width: 100%(%)%;
    height: 64px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: black;
    border-spacing: 0px 0px;
    position: absolute;
    bottom: 5;
    z-index: 1;
}
.footer-buttons {
    width: 84px;
    height: 64px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: black;
    border-spacing: 0px 0px;
    text-align: center;
    float: left;
    visibility: hidden;
}
.footer-button {
    width: 64px;
    height: 64px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: black;
    border-spacing: 0px 0px;
    text-align: center;
    float: left;
}
.footer-logo {
    width: 64px;
    height: 64px;
    margin: auto;
    background-color: transparent;
    padding: 0px;
    border-spacing: 0px 0px;
    position: relative;
}
.footer-logo-ring { 
    width: 64px;
    height: 64px;
    margin: auto;
    background-color: %LogoRingColor%;
    padding: 0px;
    border-spacing: 0px 0px;
    border-radius: 32px;
    cursor: pointer;
}
.footer-logo-ring:hover {
    background-color: %LogoRingHover%;
}
.footer-logo-circle { 
    width: 56px;
    height: 56px;
    margin: auto;
    background-color: black;
    padding: 0px;
    border-spacing: 0px 0px;
    border-radius: 28px;
}
.footer-logo-frame { 
    width: 64px;
    height: 64px;
    margin: auto;
    background-color: black;
    padding: 0px;
    border-spacing: 0px 0px;
    border-radius: 0px;
    cursor: pointer;
}
.footer-logo-frame:hover {
    background-color: %LogoRingHover%;
}
.footer-logo-square { 
    width: 56px;
    height: 56px;
    margin: auto;
    background-color: black;
    padding: 0px;
    border-spacing: 0px 0px;
    border-radius: 0px;
}
.footer-logo-background { 
    vertical-align: center;
}
.footer-logo-background-background { 
    width: 48px;
    height: 48px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: white;
    border-spacing: 0px 0px;
    border-radius: 18px;
}
.footer-logo-icon {
    height: 40px;
    vertical-align: bottom;
}
.footer-logo-icon-icon { 
    width: 32px;
    height: 32px;
    margin: auto;
    padding: 0px;
    border: 0px;
    border-style: solid;
    border-color: white;
    border-spacing: 0px 0px;
    border-radius: 8px;
}
.footer-logo-icon-image {
    background-image: url('../images/%LogoImageBase%%then-if(%LogoImageExtension%,%(.)%)%');
    background-repeat: no-repeat;
    background-position: bottom;
    background-size: 100%(%)%;
    border: 0px;
    border-style: solid;
    border-color: white;
    border-radius: 8px 8px 8px 8px;
}
.footer-logo-label-label { 
    width: 80%(%)%;
    height: 80%(%)%;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
}
.footer-logo-label-text {
    font-size: 6px;
    font-weight: bold;
    text-align: center;
    color: gray;
    opacity: 0;
    transition: .5s ease;                
}
.footer-logo-ring:hover .footer-logo-label-text {
    opacity: 1;
}
.footer-logo-frame:hover .footer-logo-label-text {
    opacity: 1;
}

/*
** dropover
** ...
*/
.dropover {
     width: 64px;
     height: 100%(%)%;
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: black;
     border-spacing: 0px 0px;
     text-align: center;
     float: right;
}
.dropover-button {
     margin: auto;
     border: 0px;
     border-style: solid;
     border-color: black;
     border-spacing: 0px 0px;
     background-color: transparent;
     cursor: pointer;
}
.dropover-button:hover, .dropover-button:focus {
     outline: none;
}
.dropover-button:hover .dropover-bar, .dropover-button:focus .dropover-bar {
     background-color: %ParentDotHover%;
}
.dropover-bars {
    width: 100%(%)%;
    height: 100%(%)%;
    margin: auto;
    border: 0px;
    border-style: solid;
    border-color: black;
    border-spacing: 4px 4px;
}
.dropover-bar {
     width: 6px;
     height: 32px;
     padding: 0px;
     border-radius: 3px;
     background-color: black;
}
/*
** dropover
** ...
*/

/*
** ...
** footer
**********************************************************************
*/
)%)%
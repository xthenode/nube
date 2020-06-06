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
%#   File: application-css.t
%#
%# Author: $author$
%#   Date: 12/9/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%%(%
%%if(%Html%,%(%
%%with(Html,,%(%
%<html><head><title>%Application%</title><style>%
%)%)%%
%)%)%%
%%include(%include_path%/../css/css-file.t)%%
%
/*
** global
** ...
*/
a { 
    color: %BDColor%; 
    font-weight: bolder; 
    text-decoration: none; 
}
a:hover { 
    color: %BDHover%; 
    font-weight: bolder; 
    text-decoration: underline; 
}
table { 
    white-space: nowrap; 
}
/*
** ...
** global
*/

/*
** body
** ...
*/
body { 
    font-family: %Font%; 
}
.body {
    width: 100%%;
    height: 100%%;
    margin: 0px;
    font-family: %Font%;
    color: %BodyFGColor%;
    background-color: %BodyBGColor%;
    background-image: url('%BGImage%');
    background-repeat: no-repeat;
    background-position: center;
    background-size: 100%% 100%%;
}
/*
** ...
** body
*/

/*
** header
** ...
*/
.header {
    width: 100%%;
    height: 42px;
    margin: auto;
    padding: 0px;
    border: %Border%;
    border-style: solid;
    border-color: %HeaderBDColor%;
    border-spacing: 0px 0px;
    background-color: %HeaderBGColor%;
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
     height: 100%%;
     margin: auto;
     padding: 0px;
     border: %Border%;
     border-style: solid;
     border-color: %HeaderBDColor%;
     border-spacing: 0px 0px;
     text-align: center;
     float: left;
}
.parent-button {
     width: 100%%;
     height: 100%%;
     margin: auto;
     padding: 0px;
     border: %Border%;
     border-style: solid;
     border-color: %HeaderBDColor%;
     border-spacing: 0px 0px;
     background-color: transparent;
     cursor: pointer;
}
.parent-button:hover, .parent-button:focus {
     outline: none;
}
.parent-button:hover .parent-dot, .parent-button:focus .parent-dot {
     background-color: %HeaderFGHover%;
}
.parent-dots {
    margin: auto;
    padding: 0px;
    border: %Border%;
    border-style: solid;
    border-color: %HeaderBDColor%;
    border-spacing: 4px 20px;
}
.parent-dot {
     width: 8px;
     height: 8px;
     padding: 0px;
     border-radius: 4px;
     background-color: %HeaderFGColor%;
}
/*
** ...
** parent
*/

/*
** .header-logo
** ...
*/
.header-logo-button {
     width: 100%%;
     height: 100%%;
     margin: auto;
     padding: 0px;
     border: %Border%;
     border-style: solid;
     border-color: %BDColor%;
     border-spacing: 0px 0px;
     background-color: %HeaderBGColor%;
     cursor: pointer;
}
.header-logo-button:hover, .header-logo-button:focus {
     outline: none;
}
.header-logo-button:hover .header-logo-label-text {
    opacity: 1;
}
.header-logo {
    width: 100%%;
    height: 100%%;
    margin: auto;
    padding: 0px;
    border: %Border%;
    border-style: solid;
    border-spacing: 0px 0px;
    background-color: %HeaderBGColor%;
    position: relative;
}
.header-logo-icon { 
    width: 100%%;
    height: 100%%;
    margin: auto;
    padding: 0px;
    border: %Border%;
    border-style: solid;
    border-color: %HeaderBDColor%;
    border-spacing: 0px 0px;
    position: relative;
    cursor: pointer;
}
.header-logo-icon-image {
    margin: auto;
    padding: 0px;
    border: %Border%;
    border-style: solid;
    border-color: %HeaderBDColor%;
    border-spacing: 0px 0px;
    background-image: url('%HeaderLogoImage%');
    background-repeat: no-repeat;
    background-position: center;
    background-size: 40px 40px;
    vertical-align: bottom;
}
.header-logo-label { 
    width: 100%%;
    margin: auto;
    padding: 0px;
    border: %Border%;
    border-style: solid;
    border-color: %HeaderBDColor%;
    border-spacing: 0px 0px;
}
.header-logo-label-text {
    font-size: 6px;
    font-weight: bold;
    font-family: %Font%;
    text-align: center;
    color: %HeaderFGColor%;
    background-color: %HeaderBGColor%;
    opacity: 0;
    transition: .5s ease;                
}
/*
** ...
** .header-logo
*/

/*
** .header-title
** ...
*/
.header-title-button {
     height: 100%%;
     margin: auto;
     padding: 0px;
     border: %Border%;
     border-style: solid;
     border-color: %BDColor%;
     border-spacing: 0px 0px;
     background-color: %HeaderBGColor%;
     cursor: pointer;
}
.header-title-button:hover, .header-title-button:focus {
     outline: none;
}
.header-title-button:hover .header-title-label-text {
    color: %HeaderFGHover%;
}
.header-title {
    height: 100%%;
    margin: auto;
    padding: 0px;
    border: %Border%;
    border-style: solid;
    border-spacing: 0px 0px;
    background-color: %HeaderBGColor%;
    position: relative;
}
.header-title-label { 
    height: 100%%;
    margin: auto;
    padding: 0px;
    border: %Border%;
    border-style: solid;
    border-color: %HeaderBDColor%;
    border-spacing: 0px 0px;
}
.header-title-label-text {
    font-size: 24px;
    font-weight: bold;
    font-family: %Font%;
    text-align: center;
    color: %HeaderFGColor%;
    background-color: %HeaderBGColor%;
}
/*
** ...
** .header-title
*/

/*
** dropdown
** ...
*/
.dropdown {
     width: 64px;
     height: 100%%;
     margin: auto;
     padding: 0px;
     border: %Border%;
     border-style: solid;
     border-color: %HeaderBDColor%;
     border-spacing: 0px 0px;
     text-align: center;
     float: right;
}
.dropdown-button {
     width: 100%%;
     height: 100%%;
     margin: auto;
     padding: 0px;
     border: %Border%;
     border-style: solid;
     border-color: %HeaderBDColor%;
     border-spacing: 0px 0px;
     background-color: %HeaderBGColor%;
     cursor: pointer;
}
.dropdown-button:hover, .dropdown-button:focus {
     outline: none;
}
.dropdown-button:hover .dropdown-bar, .dropdown-button:focus .dropdown-bar {
     background-color: %HeaderFGHover%;
}
.dropdown-bars {
    margin: auto;
    padding: 0px;
    border: %Border%;
    border-style: solid;
    border-color: %HeaderBDColor%;
    border-spacing: 4px 4px;
}
.dropdown-bar {
     width: 32px;
     height: 6px;
     padding: 0px;
     border-radius: 3px;
     background-color: %HeaderFGColor%;
}
.dropdown-content {
     padding: 0px;
     border-spacing: 0px 0px;
     border-style: solid;
     border-color: %DropdownBDColor%;
     border-width: %DropdownBDWidth%;
     border-radius: %DropdownBDRadius%;
     background-color: %DropdownBGColor%;
     position: absolute;
     min-width: 160px;
     right: 0;
     z-index: 2;
     display: none;
 }
.dropdown-content a {
     color: %DropdownFGColor%;
     padding: 12px 16px;
     border-spacing: 0px 0px;
     text-decoration: none;
     font-size: 18;  
     display: block;
}
.dropdown-content a:hover {
     color: %DropdownFGHover%;
     text-decoration: underline;
}
/*
** ...
** dropdown
*/

/*
** ...
** header
*/

/*
** footer
** ...
*/
.footer {
    width: 100%%;
    height: 64px;
    margin: auto;
    padding: 0px;
    border: %Border%;
    border-style: solid;
    border-color: %BDColor%;
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
    border: %Border%;
    border-style: solid;
    border-color: %BDColor%;
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
    border: %Border%;
    border-style: solid;
    border-color: %BDColor%;
    border-spacing: 0px 0px;
    text-align: center;
    float: left;
}
.footer-logo {
    width: 64px;
    height: 64px;
    margin: auto;
    padding: 0px;
    border: %Border%;
    border-style: solid;
    border-spacing: 0px 0px;
    background-color: %BGColor%;
    position: relative;
}
.footer-logo-icon { 
    width: 100%%;
    height: 100%%;
    margin: auto;
    padding: 0px;
    border: %Border%;
    border-style: solid;
    border-color: %BDColor%;
    border-spacing: 0px 0px;
    cursor: pointer;
}
.footer-logo-icon-image {
    background-image: url('%FooterLogoImage%');
    background-repeat: no-repeat;
    background-position: bottom;
    background-size: 100%%;
    border: %Border%;
    border-style: solid;
    border-color: %BDColor%;
    border-radius: 0px 0px 16px 20px;
    vertical-align: bottom;
}
.footer-logo-label { 
    width: 100%%;
    padding: 0px;
    border: %Border%;
    border-style: solid;
    border-color: %BDColor%;
    border-spacing: 0px 0px;
}
.footer-logo-label-text {
    font-size: 7px;
    font-weight: bold;
    text-align: center;
    color: %FGHover%;
    background-color: %BGColor%;
    opacity: 0;
    transition: .5s ease;                
}
.footer-logo:hover .footer-logo-label-text {
    opacity: 1;
}

/*
** dropover
** ...
*/
.dropover {
     width: 64px;
     height: 100%%;
     margin: auto;
     padding: 0px;
     border: %Border%;
     border-style: solid;
     border-color: %BDColor%;
     border-spacing: 0px 0px;
     text-align: center;
     float: right;
}
.dropover-button {
     width: 100%%;
     height: 100%%;
     margin: auto;
     border: %Border%;
     border-style: solid;
     border-color: %BDColor%;
     border-spacing: 0px 0px;
     background-color: transparent;
     cursor: pointer;
}
.dropover-button:hover, .dropover-button:focus {
     outline: none;
}
.dropover-button:hover .dropover-bar, .dropover-button:focus .dropover-bar {
     background-color: %FGHover%;
}
.dropover-bars {
    margin: auto;
    padding: 0px;
    border: %Border%;
    border-style: solid;
    border-color: %BDColor%;
    border-spacing: 4px 4px;
}
.dropover-bar {
     width: 6px;
     height: 32px;
     padding: 0px;
     border-radius: 3px;
     background-color: %FGColor%;
}
/*
** dropover
** ...
*/

/*
** ...
** footer
*/

/*
** .body-logo
** ...
*/
.body-logo {
    width: 100%%;
    height: 100%%;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
    border: %Border%;
    border-style: solid;
    border-color: %BDColor%;
    background-color: %BGColor%;
    position: absolute;
    z-index: 0;
}
.body-logo-icon {
    width: 400px;
    height: 400px;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
    border: %Border%;
    border-style: solid;
    border-color: %BDColor%;
    background-color: %BGColor%;
    position: relative;
    cursor: pointer;
}
.body-logo-icon-image { 
    border: %Border%;
    border-style: solid;
    border-color: %BDColor%;
    background-image: url('%BodyLogoImage%');
    background-repeat: no-repeat;
    background-position: center;
    background-size: 400px 400px;
    vertical-align: bottom;
}
.body-logo-label {
    width: 100%%;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
    border: %Border%;
    border-style: solid;
    border-color: %BDColor%;
}
.body-logo-label-label {
    opacity: 0;
    margin: auto;
    padding: 0px;
    border-spacing: 0px 0px;
    border: %Border%;
    border-style: solid;
    border-color: %BDColor%;
    background-color: %BGColor%;
}
.body-logo-label-text {
    opacity: 0;
    color: %FGColor%;
    transition: .5s ease;
    font-size: 40px;
    font-weight: bolder; 
    font-family: %Font%;
    text-align: center;
}
.body-logo-icon:hover .body-logo-label-label {
    opacity: 1;
}
.body-logo-icon:hover .body-logo-label-text {
    opacity: 1;
}
/*
** ...
** .body-logo
*/
%
%%if(%Html%,%(%
%%with(Html,,%(%
%</style><script>%
%%include(%include_path%/../js/application-js.t)%%
%</script><script>
onLocationInit('%Application%.html','%Application%.html');
</script>%
%</head><body class="body">%
%%include(%include_path%/../html/application-logo-html.t)%%
%%include(%include_path%/../html/application-header-html.t)%%
%%include(%include_path%/../html/application-dropdown-html.t)%%
%%include(%include_path%/../html/application-footer-html.t)%%
%</body></html>%
%)%)%%
%)%)%%
%)%)%
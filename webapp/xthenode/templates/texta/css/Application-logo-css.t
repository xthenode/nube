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
%#   File: Application-logo-css.t
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
%file,%(%else-then(%if-no(%is_file%,,%(%file%)%)%,%(%if-no(%is_file%,,%(%Application%-logo)%)%)%)%)%,%
%File,%(%else-then(%if-no(%is_file%,,%(%File%)%)%,%(%if-no(%is_file%,,%(%file%)%)%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_file%,%(%tolower(%File%)%)%)%)%,%
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
** logo
** ...
*/
.logo-body {
    width: 100%(%)%;
    height: 100%(%)%;
    margin: auto;
    background-color: transparent;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
    position: absolute;
    z-index: 0;
}
.body-logo {
    width: 360px;
    height: 360px;
    margin: auto;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
    position: relative;
}
.logo-ring { 
    width: 360px;
    height: 360px;
    margin: auto;
    background-color: %LogoRingColor%;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
    border-radius: 330px;
    cursor: pointer;
}
.logo-ring:hover {
    background-color: %LogoRingHover%;
}
.logo-circle { 
    width: 330px;
    height: 330px;
    margin: auto;
    background-color: black;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
    border-radius: 165px;
}
.logo-background { 
    vertical-align: center;
}
.logo-background-background { 
    width: 290px;
    height: 290px;
    margin: auto;
    background-color: black;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
    border-radius: 145px;
}
.logo-icon {
    height: 250px;
    vertical-align: bottom;
}
.logo-icon-icon { 
    width: 240px;
    height: 240px;
    margin: auto;
    background-color: black;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
    border-radius: 90px;
}
.logo-icon-image {
    background-image: url('../images/%LogoImageBase%%then-if(%LogoImageExtension%,%(.)%)%');
    background-repeat: no-repeat;
    background-position: bottom;
    background-size: 100%(%)%;
    border-radius: 90px 90px 40px 60px;
}
.logo-label {
    vertical-align: top;
}
.logo-label-label { 
    width: 100%(%)%;
    height: 100%(%)%;
    margin: auto;
    padding: 0px 0px 0px 0px;
    border-spacing: 0px 0px 0px 0px;
}
.logo-label-text {
    font-size: 30px;
    font-weight: bold;
    text-align: center;
    color: gray;
    opacity: 0;
    transition: .5s ease;                
}
.logo-ring:hover .logo-label-text {
    opacity: 1;
}
/*
** ...
** logo
*/
)%)%
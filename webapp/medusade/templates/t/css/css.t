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
%#   File: css.t
%#
%# Author: $author$
%#   Date: 11/27/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_width,%(%else-then(%is_width%,%(%is_Width%)%)%)%,%
%width,%(%else-then(%if-no(%is_width%,,%(%width%)%)%,%(%if-no(%is_width%,,%(100%%)%)%)%)%)%,%
%Width,%(%else-then(%if-no(%is_width%,,%(%Width%)%)%,%(%width%)%)%)%,%
%WIDTH,%(%else-then(%WIDTH%,%(%toupper(%Width%)%)%)%)%,%
%width,%(%else-then(%_Width%,%(%tolower(%Width%)%)%)%)%,%
%is_height,%(%else-then(%is_height%,%(%is_Height%)%)%)%,%
%height,%(%else-then(%if-no(%is_height%,,%(%height%)%)%,%(%if-no(%is_height%,,%(%Width%)%)%)%)%)%,%
%Height,%(%else-then(%if-no(%is_height%,,%(%Height%)%)%,%(%height%)%)%)%,%
%HEIGHT,%(%else-then(%HEIGHT%,%(%toupper(%Height%)%)%)%)%,%
%height,%(%else-then(%_Height%,%(%tolower(%Height%)%)%)%)%,%
%is_margin,%(%else-then(%is_margin%,%(%is_Margin%)%)%)%,%
%margin,%(%else-then(%if-no(%is_margin%,,%(%margin%)%)%,%(%if-no(%is_margin%,,%(0px)%)%)%)%)%,%
%Margin,%(%else-then(%if-no(%is_margin%,,%(%Margin%)%)%,%(%margin%)%)%)%,%
%MARGIN,%(%else-then(%MARGIN%,%(%toupper(%Margin%)%)%)%)%,%
%margin,%(%else-then(%_Margin%,%(%tolower(%Margin%)%)%)%)%,%
%is_color,%(%else-then(%is_color%,%(%is_Color%)%)%)%,%
%color,%(%else-then(%if-no(%is_color%,,%(%color%)%)%,%(%if-no(%is_color%,,%(lightgray)%)%)%)%)%,%
%Color,%(%else-then(%if-no(%is_color%,,%(%Color%)%)%,%(%color%)%)%)%,%
%COLOR,%(%else-then(%COLOR%,%(%toupper(%Color%)%)%)%)%,%
%color,%(%else-then(%_Color%,%(%tolower(%Color%)%)%)%)%,%
%is_bgcolor,%(%else-then(%is_bgcolor%,%(%is_BGColor%)%)%)%,%
%bgcolor,%(%else-then(%if-no(%is_bgcolor%,,%(%bgcolor%)%)%,%(%if-no(%is_bgcolor%,,%(black)%)%)%)%)%,%
%BGColor,%(%else-then(%if-no(%is_bgcolor%,,%(%BGColor%)%)%,%(%bgcolor%)%)%)%,%
%BGCOLOR,%(%else-then(%BGCOLOR%,%(%toupper(%BGColor%)%)%)%)%,%
%bgcolor,%(%else-then(%_BGColor%,%(%tolower(%BGColor%)%)%)%)%,%
%is_bgwidth,%(%else-then(%is_bgwidth%,%(%is_BGWidth%)%)%)%,%
%bgwidth,%(%else-then(%if-no(%is_bgwidth%,,%(%bgwidth%)%)%,%(%if-no(%is_bgwidth%,,%(100%%)%)%)%)%)%,%
%BGWidth,%(%else-then(%if-no(%is_bgwidth%,,%(%BGWidth%)%)%,%(%bgwidth%)%)%)%,%
%BGWIDTH,%(%else-then(%BGWIDTH%,%(%toupper(%BGWidth%)%)%)%)%,%
%bgwidth,%(%else-then(%_BGWidth%,%(%tolower(%BGWidth%)%)%)%)%,%
%is_bgheight,%(%else-then(%is_bgheight%,%(%is_BGHeight%)%)%)%,%
%bgheight,%(%else-then(%if-no(%is_bgheight%,,%(%bgheight%)%)%,%(%if-no(%is_bgheight%,,%(%BGWidth%)%)%)%)%)%,%
%BGHeight,%(%else-then(%if-no(%is_bgheight%,,%(%BGHeight%)%)%,%(%bgheight%)%)%)%,%
%BGHEIGHT,%(%else-then(%BGHEIGHT%,%(%toupper(%BGHeight%)%)%)%)%,%
%bgheight,%(%else-then(%_BGHeight%,%(%tolower(%BGHeight%)%)%)%)%,%
%is_bgimage,%(%else-then(%is_bgimage%,%(%is_BGImage%)%)%)%,%
%bgimage,%(%else-then(%if-no(%is_bgimage%,,%(%bgimage%)%)%,%(%if-no(%is_bgimage%,,%(../images/jpeg/background.jpg)%)%)%)%)%,%
%BGImage,%(%else-then(%if-no(%is_bgimage%,,%(%BGImage%)%)%,%(%bgimage%)%)%)%,%
%BGIMAGE,%(%else-then(%BGIMAGE%,%(%toupper(%BGImage%)%)%)%)%,%
%bgimage,%(%else-then(%_BGImage%,%(%tolower(%BGImage%)%)%)%)%,%
%is_font,%(%else-then(%is_font%,%(%is_Font%)%)%)%,%
%font,%(%else-then(%if-no(%is_font%,,%(%font%)%)%,%(%if-no(%is_font%,,%(Arial)%)%)%)%)%,%
%Font,%(%else-then(%if-no(%is_font%,,%(%Font%)%)%,%(%font%)%)%)%,%
%FONT,%(%else-then(%FONT%,%(%toupper(%Font%)%)%)%)%,%
%font,%(%else-then(%_Font%,%(%tolower(%Font%)%)%)%)%,%
%%(%
%%include(%include_path%/css-file.t)%%
%
/*
** body
** ...
*/
.body {
    font-family: %Font%;
    width: %Width%;
    height: %Height%;
    margin: %Margin%;
    color: %Color%;
    background-color: %BGColor%;
    background-image: url('%BGImage%');
    background-repeat: no-repeat;
    background-position: center;
    background-size: %BGWidth% %BGHeight%;
}
/*
** ...
** body
*/

/*
** form 
** ...
*/
.form {
    color: %BGColor%;
    background-color: %Color%; 
    border-style: solid;
    border-color: %BGColor%;
    border-width: 1px 0px 1px 0px;
    position: relative;
    z-index: 1;
}
.form a { 
    color: %Color%; 
    font-weight: bolder; 
    text-decoration: none; 
}
.form a:hover { 
    color: %Color%; 
    font-weight: bolder; 
    text-decoration: underline; 
}
.form table td { 
    white-space: nowrap; 
    padding: 0px 10px 0px 0px; 
}
/*
** ...
** form
*/

/*
** global
** ...
*/
body { 
    font-family: %Font%;
}
a { 
    color: black; 
    font-weight: bolder; 
    text-decoration: none; 
}
a:hover { 
    color: red; 
    font-weight: bolder; 
    text-decoration: underline; 
}
table td { 
    white-space: nowrap; 
}
/*
** ...
** global
*/
%
%)%)%
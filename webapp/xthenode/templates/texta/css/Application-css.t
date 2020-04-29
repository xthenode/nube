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
%#   File: Application-css.t
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
%file,%(%else-then(%if-no(%is_file%,,%(%file%)%)%,%(%if-no(%is_file%,,%(%Application%)%)%)%)%)%,%
%File,%(%else-then(%if-no(%is_file%,,%(%File%)%)%,%(%if-no(%is_file%,,%(%file%)%)%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_file%,%(%tolower(%File%)%)%)%)%,%
%is_backgroundimagefile,%(%else-then(%is_backgroundimagefile%,%(%is_BackgroundImageFile%)%)%)%,%
%backgroundimagefile,%(%else-then(%if-no(%is_backgroundimagefile%,,%(%backgroundimagefile%)%)%,%(%if-no(%is_backgroundimagefile%,,%(%Application%-background-image)%)%)%)%)%,%
%BackgroundImageFile,%(%else-then(%if-no(%is_backgroundimagefile%,,%(%BackgroundImageFile%)%)%,%(%if-no(%is_backgroundimagefile%,,%(%backgroundimagefile%)%)%)%)%)%,%
%BACKGROUNDIMAGEFILE,%(%else-then(%BACKGROUNDIMAGEFILE%,%(%toupper(%BackgroundImageFile%)%)%)%)%,%
%backgroundimagefile,%(%else-then(%_backgroundimagefile%,%(%tolower(%BackgroundImageFile%)%)%)%)%,%
%is_backgroundimagebase,%(%else-then(%is_backgroundimagebase%,%(%is_BackgroundImageBase%)%)%)%,%
%backgroundimagebase,%(%else-then(%if-no(%is_backgroundimagebase%,,%(%backgroundimagebase%)%)%,%(%if-no(%is_backgroundimagebase%,,%(%filebase(%BackgroundImageFile%)%)%)%)%)%)%,%
%BackgroundImageBase,%(%else-then(%if-no(%is_backgroundimagebase%,,%(%BackgroundImageBase%)%)%,%(%if-no(%is_backgroundimagebase%,,%(%backgroundimagebase%)%)%)%)%)%,%
%BACKGROUNDIMAGEBASE,%(%else-then(%BACKGROUNDIMAGEBASE%,%(%toupper(%BackgroundImageBase%)%)%)%)%,%
%backgroundimagebase,%(%else-then(%_backgroundimagebase%,%(%tolower(%BackgroundImageBase%)%)%)%)%,%
%is_backgroundimageextension,%(%else-then(%is_backgroundimageextension%,%(%is_BackgroundImageExtension%)%)%)%,%
%backgroundimageextension,%(%else-then(%if-no(%is_backgroundimageextension%,,%(%backgroundimageextension%)%)%,%(%if-no(%is_backgroundimageextension%,,%(%fileextension(%BackgroundImageFile%)%)%)%)%)%)%,%
%BackgroundImageExtension,%(%else-then(%if-no(%is_backgroundimageextension%,,%(%BackgroundImageExtension%)%)%,%(%if-no(%is_backgroundimageextension%,,%(%backgroundimageextension%)%)%)%)%)%,%
%BACKGROUNDIMAGEEXTENSION,%(%else-then(%BACKGROUNDIMAGEEXTENSION%,%(%toupper(%BackgroundImageExtension%)%)%)%)%,%
%backgroundimageextension,%(%else-then(%_backgroundimageextension%,%(%tolower(%BackgroundImageExtension%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-css.t)%%
%
.body {
    width: 100%(%)%;
    height: 100%(%)%;
    margin: 0px;
    font-family: Arial;
    background-color: lightgray;
    background-image: url('../images/%BackgroundImageBase%%then-if(%BackgroundImageExtension%,%(.)%)%');
    background-attachment: fixed;
    background-repeat: no-repeat;
    background-position: center;
    background-size: 100%(%)% 100%(%)%;
}

body { 
    font-family: Arial; 
}
form {
    border-style: solid;
    border-color: black;
    border-width: 0px 0px 1px 0px;
    position: relative;
    z-index: 1;
}
form table td { 
    white-space: nowrap; 
    padding: 0px 10px 0px 0px; 
}
a { 
    color: black; 
    font-weight: bolder; 
    text-decoration: none; 
}
a:hover { 
    color: Teal; 
    font-weight: bolder; 
    text-decoration: underline; 
}
.form { 
    background-color: lightgray; 
}
.table { 
    white-space: nowrap; 
}
)%)%
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
%#   File: Application-menubar-css.t
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
%file,%(%else-then(%if-no(%is_file%,,%(%file%)%)%,%(%if-no(%is_file%,,%(%Application%-menubar)%)%)%)%)%,%
%File,%(%else-then(%if-no(%is_file%,,%(%File%)%)%,%(%if-no(%is_file%,,%(%file%)%)%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_file%,%(%tolower(%File%)%)%)%)%,%
%is_menubarcolor,%(%else-then(%is_menubarcolor%,%(%is_MenubarColor%)%)%)%,%
%menubarcolor,%(%else-then(%if-no(%is_menubarcolor%,,%(%menubarcolor%)%)%,%(%if-no(%is_menubarcolor%,,%(black)%)%)%)%)%,%
%MenubarColor,%(%else-then(%if-no(%is_menubarcolor%,,%(%MenubarColor%)%)%,%(%if-no(%is_menubarcolor%,,%(%menubarcolor%)%)%)%)%)%,%
%MENUBARCOLOR,%(%else-then(%MENUBARCOLOR%,%(%toupper(%MenubarColor%)%)%)%)%,%
%menubarcolor,%(%else-then(%_menubarcolor%,%(%tolower(%MenubarColor%)%)%)%)%,%
%is_menubarhover,%(%else-then(%is_menubarhover%,%(%is_MenubarHover%)%)%)%,%
%menubarhover,%(%else-then(%if-no(%is_menubarhover%,,%(%menubarhover%)%)%,%(%if-no(%is_menubarhover%,,%(teal)%)%)%)%)%,%
%MenubarHover,%(%else-then(%if-no(%is_menubarhover%,,%(%MenubarHover%)%)%,%(%if-no(%is_menubarhover%,,%(%menubarhover%)%)%)%)%)%,%
%MENUBARHOVER,%(%else-then(%MENUBARHOVER%,%(%toupper(%MenubarHover%)%)%)%)%,%
%menubarhover,%(%else-then(%_menubarhover%,%(%tolower(%MenubarHover%)%)%)%)%,%
%is_menubarbackground,%(%else-then(%is_menubarbackground%,%(%is_MenubarBackground%)%)%)%,%
%menubarbackground,%(%else-then(%if-no(%is_menubarbackground%,,%(%menubarbackground%)%)%,%(%if-no(%is_menubarbackground%,,%(lightgray)%)%)%)%)%,%
%MenubarBackground,%(%else-then(%if-no(%is_menubarbackground%,,%(%MenubarBackground%)%)%,%(%if-no(%is_menubarbackground%,,%(%menubarbackground%)%)%)%)%)%,%
%MENUBARBACKGROUND,%(%else-then(%MENUBARBACKGROUND%,%(%toupper(%MenubarBackground%)%)%)%)%,%
%menubarbackground,%(%else-then(%_menubarbackground%,%(%tolower(%MenubarBackground%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-css.t)%%
%
/*
** menubar
** ...
*/
.menubar {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: %MenubarBackground%;
  border-style: solid;
  border-color: black;
  border-width: 1px 0px 1px 0px;
  position: relative;
  z-index: 1;
}
.menubar li {
  float: left;
}
.menubar .home {
  float: right;
}
.menubar li a {
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  font-size: 18;  
  text-decoration: none;
}
.menubar li a {
  color: %MenubarColor%;
  text-decoration: none;
}
.menubar li a:hover {
  color: %MenubarHover%;
  text-decoration: underline;
}
/*
** ...
** menubar
*/
)%)%
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
%#   File: Application-html.t
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
%%(%
%%include(%Include_path%/file-html.t)%%
%<html>
    <!--
    =====================================================================
    === head
    =====================================================================
    -->
    <head>
        <title>%Application%%then-if(%Page%,%( - )%)%</title>

        <!--
        =====================================================================
        === style
        =====================================================================
        -->
        <link rel="stylesheet" type="text/css" href="../css/Application-css.t?Application=%Application%"></link>
        <link rel="stylesheet" type="text/css" href="../css/Application-header-css.t?Application=%Application%"></link>
        <link rel="stylesheet" type="text/css" href="../css/Application-dropdown-css.t?Application=%Application%"></link>
        <link rel="stylesheet" type="text/css" href="../css/Application-menubar-css.t?Application=%Application%"></link>
        <link rel="stylesheet" type="text/css" href="../css/Application-logo-css.t?Application=%Application%"></link>
        <style type="text/css">
        </style>
    
        <!--
        =====================================================================
        === script
        =====================================================================
        -->
        <script type="text/javascript" src="../js/Application-js.t?Application=%Application%"></script>
        <script type="text/javascript">
            onLocationInit('.', 'Application-html.t?Application=%Application%');
        </script>
    </head>

    <!--
    =====================================================================
    === body
    =====================================================================
    -->
    <body class="body">

        <!--
        =====================================================================
        === logo
        =====================================================================
        -->
        <div id="includeLogo" include="Application-logo-html.t?Application=%Application%">
            <script>includeHTML('includeLogo');</script>
        </div>

        <!--
        =====================================================================
        === header
        =====================================================================
        -->
        <div id="includeHeader" include="Application-header-html.t?Application=%Application%">
            <script>includeHTML('includeHeader');</script>
        </div>

        <!--
        =====================================================================
        === popdown
        =====================================================================
        -->
        <div id="includePopdown" include="Application-popdown-html.t?Application=%Application%">
            <script>includeHTML('includePopdown');</script>
        </div>

        <!--
        =====================================================================
        === dropdown
        =====================================================================
        -->
        <div id="includeDropdown" include="Application-dropdown-html.t?Application=%Application%">
            <script>includeHTML('includeDropdown');</script>
        </div>

        <!--
        =====================================================================
        === menubar
        =====================================================================
        -->
        <div id="includeMenubar" include="Application-menubar-html.t?Application=%Application%">
            <script>includeHTML('includeMenubar');</script>
        </div>
    </body>
</html>
)%)%
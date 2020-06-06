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
%#   File: application-home-html.t
%#
%# Author: $author$
%#   Date: 12/9/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%%(%
%%include(%include_path%/../html/html-file.t)%%
%<html>
    <!--
    =====================================================================
    === head
    =====================================================================
    -->
    <head>
        <!--
        =====================================================================
        === title
        =====================================================================
        -->
        <title>%Application% - Home</title>
    
        <!--
        =====================================================================
        === style
        =====================================================================
        -->
%if(%Html%,%(%with(Html,,%(    <style>
%include(%include_path%/../css/application-css.t)%
    </style>)%)%)%,%(        <link rel="stylesheet" type="text/css" href="../css/%Application%.css"></link>
        <link rel="stylesheet" type="text/css" href="../css/%Application%-header.css"></link>
        <link rel="stylesheet" type="text/css" href="../css/%Application%-footer.css"></link>
        <link rel="stylesheet" type="text/css" href="../css/%Application%-dropdown.css"></link>
        <link rel="stylesheet" type="text/css" href="../css/%Application%-menubar.css"></link>
        <link rel="stylesheet" type="text/css" href="../css/%Application%-logo.css"></link>)%)%
        <style type="text/css">
        </style>
    
        <!--
        =====================================================================
        === script
        =====================================================================
        -->
%if(%Html%,%(%with(Html,,%(    <script type="text/javascript">
%include(%include_path%/../js/application-js.t)%
        </script>)%)%)%,%(        <script type="text/javascript" src="../js/%Application%.js"></script>)%)%
        <script type="text/javascript">
            onLocationInit('%Application%.html','%Application%.html');
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
        <div id="includeLogo" include="%Application%-logo.html">
%if(%Html%,%(%with(Html,,%(
%include(%include_path%/../html/application-logo-html.t)%)%)%%
%)%,%(            <script>includeHTML('includeLogo');</script>)%)%
        </div>
        <!--
        =====================================================================
        === header
        =====================================================================
        -->
        <div id="includeHeader" include="%Application%-header.html">
%if(%Html%,%(%with(Html,,%(
%include(%include_path%/../html/application-header-html.t)%)%)%%
%)%,%(            <script>includeHTML('includeHeader');</script>)%)%
        </div>
        <!--
        =====================================================================
        === dropdown
        =====================================================================
        -->
        <div id="includeDropdown" include="%Application%-dropdown.html">
%if(%Html%,%(%with(Html,,%(
%include(%include_path%/../html/application-dropdown-html.t)%)%)%%
%)%,%(            <script>includeHTML('includeDropdown');</script>)%)%
        </div>
        <!--
        =====================================================================
        === footer
        =====================================================================
        -->
        <div id="includeFooter" include="%Application%-footer.html">
%if(%Html%,%(%with(Html,,%(
%include(%include_path%/../html/application-footer-html.t)%)%)%%
%)%,%(            <script>includeHTML('includeFooter');</script>)%)%
        </div>
    
    </body>
</html>
%
%)%)%
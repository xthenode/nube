<?xml version="1.0" encoding="utf-8"?>
<!--
=====================================================================
=== Copyright (c) 1988-2019 $organization$
===
=== This software is provided by the author and contributors ``as is'' 
=== and any express or implied warranties, including, but not limited to, 
=== the implied warranties of merchantability and fitness for a particular 
=== purpose are disclaimed. In no event shall the author or contributors 
=== be liable for any direct, indirect, incidental, special, exemplary, 
=== or consequential damages (including, but not limited to, procurement 
=== of substitute goods or services; loss of use, data, or profits; or 
=== business interruption) however caused and on any theory of liability, 
=== whether in contract, strict liability, or tort (including negligence 
=== or otherwise) arising in any way out of the use of this software, 
=== even if advised of the possibility of such damage.
===
===   File: Medusade-create-css.html.html
===
=== Author: $author$
===   Date: 11/27/2019
=====================================================================
-->
<html>
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
        <title>Medusade - Create .css File</title>
    
        <!--
        =====================================================================
        === style
        =====================================================================
        -->
        <link rel="stylesheet" type="text/css" href="../css/Medusade.css"></link>
        <link rel="stylesheet" type="text/css" href="../css/Medusade-header.css"></link>
        <link rel="stylesheet" type="text/css" href="../css/Medusade-dropdown.css"></link>
        <link rel="stylesheet" type="text/css" href="../css/Medusade-menubar.css"></link>
        <link rel="stylesheet" type="text/css" href="../css/Medusade-logo.css¨ñ_"></link>
        <style type="text/css">
        </style>
    
        <!--
        =====================================================================
        === script
        =====================================================================
        -->
        <script type="text/javascript" src="../js/Medusade.js"></script>
        <script type="text/javascript">
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
        === form
        =====================================================================
        -->
        <form name="Form" method="POST" action="../templates/t/css/css.t"
         onSubmit="return setFormSubmit(getFormValue2('FormTemplate','FormAction','Form'),getFormValue('FormMethod','Form'),'Form')">
            <div class="form">

                <br/>
                Content-Type: <select name="content_type">
                <option value="text/plain">text</option>
                <option value="text/html">html</option>
                <option value="text/xml">xml</option>
                <option value="application/json">json</option>
                <option value="application/javascript">javascript</option>
                <option value=""></option>
                </select><br/>
                Action: <select name="FormAction">
                <option value="../templates/t/css/css.t">Create .css File</option>
                <option value=""></option>
                <option value="../templates/t/t/parameters.t">parameters</option>
                <option value=""></option>
                <option value="/medusade-cgi/cgi">cgi parameters</option>
                <option value="/medusade-cgi/cgicatch">catch cgi parameters</option>
                <option value=""></option>
                <option value="/medusade-http/http">http parameters</option>
                <option value="/medusade-http/httpcatch">catch http parameters</option>
                </select><br/>
                Method: <select name="FormMethod">
                <option value="POST">POST</option>
                <option value="GET">GET</option>
                <option value=""></option>
                </select><br/>
    
                <br/>
                <input type="submit" name="submit" value="submit"/><br/>
            </div>
        </form>
    </body>
</html>

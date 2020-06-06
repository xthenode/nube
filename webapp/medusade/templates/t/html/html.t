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
%#   File: html.t
%#
%# Author: $author$
%#   Date: 11/25/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_includeprefix,%(%else-then(%is_includeprefix%,%(%is_IncludePrefix%)%)%)%,%
%includeprefix,%(%else-then(%if-no(%is_includeprefix%,,%(%includeprefix%)%)%,%(%if-no(%is_includeprefix%,,%(%
%%if(%equal(%content_type%,text/html)%,../../)%%
%)%)%)%)%)%,%
%IncludePrefix,%(%else-then(%if-no(%is_includeprefix%,,%(%IncludePrefix%)%)%,%(%includeprefix%)%)%)%,%
%INCLUDEPREFIX,%(%else-then(%INCLUDEPREFIX%,%(%toupper(%IncludePrefix%)%)%)%)%,%
%includeprefix,%(%else-then(%_IncludePrefix%,%(%tolower(%IncludePrefix%)%)%)%)%,%
%is_application,%(%else-then(%is_application%,%(%is_Application%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(Application)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%application%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_Application%,%(%tolower(%Application%)%)%)%)%,%
%is_page,%(%else-then(%is_page%,%(%is_Page%)%)%)%,%
%page,%(%else-then(%if-no(%is_page%,,%(%page%)%)%,%(%if-no(%is_page%,,%(Page)%)%)%)%)%,%
%Page,%(%else-then(%if-no(%is_page%,,%(%Page%)%)%,%(%page%)%)%)%,%
%PAGE,%(%else-then(%PAGE%,%(%toupper(%Page%)%)%)%)%,%
%page,%(%else-then(%_Page%,%(%tolower(%Page%)%)%)%)%,%
%is_title,%(%else-then(%is_title%,%(%is_Title%)%)%)%,%
%title,%(%else-then(%if-no(%is_title%,,%(%title%)%)%,%(%if-no(%is_title%,,%(%if-then(%Application%,%if(%Page%, - )%)%%Page%)%)%)%)%)%,%
%Title,%(%else-then(%if-no(%is_title%,,%(%Title%)%)%,%(%title%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_Title%,%(%tolower(%Title%)%)%)%)%,%
%is_css,%(%else-then(%is_css%,%(%is_Css%)%)%)%,%
%css,%(%else-then(%if-no(%is_css%,,%(%css%)%)%,%(%if-no(%is_css%,,%(%
%header;dropdown;menubar;body-logo%
%)%)%)%)%)%,%
%Css,%(%else-then(%if-no(%is_css%,,%(%Css%)%)%,%(%css%)%)%)%,%
%CSS,%(%else-then(%CSS%,%(%toupper(%Css%)%)%)%)%,%
%css,%(%else-then(%_Css%,%(%tolower(%Css%)%)%)%)%,%
%is_applicationcss,%(%else-then(%is_applicationcss%,%(%is_ApplicationCss%)%)%)%,%
%applicationcss,%(%else-then(%if-no(%is_applicationcss%,,%(%applicationcss%)%)%,%(%if-no(%is_applicationcss%,,%(%
%../css/%Application%.css%parse(%Css%,;,,,,%(;../css/%Application%-%Css%.css)%,Css)%%
%)%)%)%)%)%,%
%ApplicationCss,%(%else-then(%if-no(%is_applicationcss%,,%(%ApplicationCss%)%)%,%(%applicationcss%)%)%)%,%
%APPLICATIONCSS,%(%else-then(%APPLICATIONCSS%,%(%toupper(%ApplicationCss%)%)%)%)%,%
%applicationcss,%(%else-then(%_ApplicationCss%,%(%tolower(%ApplicationCss%)%)%)%)%,%
%is_js,%(%else-then(%is_js%,%(%is_Js%)%)%)%,%
%js,%(%else-then(%if-no(%is_js%,,%(%js%)%)%,%(%if-no(%is_js%,,%(%
%)%)%)%)%)%,%
%Js,%(%else-then(%if-no(%is_js%,,%(%Js%)%)%,%(%js%)%)%)%,%
%JS,%(%else-then(%JS%,%(%toupper(%Js%)%)%)%)%,%
%js,%(%else-then(%_Js%,%(%tolower(%Js%)%)%)%)%,%
%is_applicationjs,%(%else-then(%is_applicationjs%,%(%is_ApplicationJs%)%)%)%,%
%applicationjs,%(%else-then(%if-no(%is_applicationjs%,,%(%applicationjs%)%)%,%(%if-no(%is_applicationjs%,,%(%
%../js/%Application%.js%parse(%Js%,;,,,,%(;../js/%Application%-%Js%.js)%,Js)%%
%)%)%)%)%)%,%
%ApplicationJs,%(%else-then(%if-no(%is_applicationjs%,,%(%ApplicationJs%)%)%,%(%applicationjs%)%)%)%,%
%APPLICATIONJS,%(%else-then(%APPLICATIONJS%,%(%toupper(%ApplicationJs%)%)%)%)%,%
%applicationjs,%(%else-then(%_ApplicationJs%,%(%tolower(%ApplicationJs%)%)%)%)%,%
%is_applicationscript,%(%else-then(%is_applicationscript%,%(%is_ApplicationScript%)%)%)%,%
%applicationscript,%(%else-then(%if-no(%is_applicationscript%,,%(%applicationscript%)%)%,%(%if-no(%is_applicationscript%,,%(%
%onLocationInit('%Application%.html','%Application%.html');%
%)%)%)%)%)%,%
%ApplicationScript,%(%else-then(%if-no(%is_applicationscript%,,%(%ApplicationScript%)%)%,%(%applicationscript%)%)%)%,%
%APPLICATIONSCRIPT,%(%else-then(%APPLICATIONSCRIPT%,%(%toupper(%ApplicationScript%)%)%)%)%,%
%applicationscript,%(%else-then(%_ApplicationScript%,%(%tolower(%ApplicationScript%)%)%)%)%,%
%is_styletype,%(%else-then(%is_styletype%,%(%is_StyleType%)%)%)%,%
%styletype,%(%else-then(%if-no(%is_styletype%,,%(%styletype%)%)%,%(%if-no(%is_styletype%,,%(text/css)%)%)%)%)%,%
%StyleType,%(%else-then(%if-no(%is_styletype%,,%(%StyleType%)%)%,%(%styletype%)%)%)%,%
%STYLETYPE,%(%else-then(%STYLETYPE%,%(%toupper(%StyleType%)%)%)%)%,%
%styletype,%(%else-then(%_StyleType%,%(%tolower(%StyleType%)%)%)%)%,%
%is_stylehref,%(%else-then(%is_stylehref%,%(%is_StyleHref%)%)%)%,%
%stylehref,%(%else-then(%if-no(%is_stylehref%,,%(%stylehref%)%)%,%(%if-no(%is_stylehref%,%(%ApplicationCss%)%,%(../css/html.css)%)%)%)%)%,%
%StyleHref,%(%else-then(%if-no(%is_stylehref%,,%(%StyleHref%)%)%,%(%stylehref%)%)%)%,%
%STYLEHREF,%(%else-then(%STYLEHREF%,%(%toupper(%StyleHref%)%)%)%)%,%
%stylehref,%(%else-then(%_StyleHref%,%(%tolower(%StyleHref%)%)%)%)%,%
%is_style,%(%else-then(%is_style%,%(%is_Style%)%)%)%,%
%style,%(%else-then(%if-no(%is_style%,,%(%style%)%)%,%(%if-no(%is_style%,,%(Style)%)%)%)%)%,%
%Style,%(%else-then(%if-no(%is_style%,,%(%Style%)%)%,%(%style%)%)%)%,%
%STYLE,%(%else-then(%STYLE%,%(%toupper(%Style%)%)%)%)%,%
%style,%(%else-then(%_Style%,%(%tolower(%Style%)%)%)%)%,%
%is_scripttype,%(%else-then(%is_scripttype%,%(%is_ScriptType%)%)%)%,%
%scripttype,%(%else-then(%if-no(%is_scripttype%,,%(%scripttype%)%)%,%(%if-no(%is_scripttype%,,%(text/javascript)%)%)%)%)%,%
%ScriptType,%(%else-then(%if-no(%is_scripttype%,,%(%ScriptType%)%)%,%(%scripttype%)%)%)%,%
%SCRIPTTYPE,%(%else-then(%SCRIPTTYPE%,%(%toupper(%ScriptType%)%)%)%)%,%
%scripttype,%(%else-then(%_ScriptType%,%(%tolower(%ScriptType%)%)%)%)%,%
%is_scriptsrc,%(%else-then(%is_scriptsrc%,%(%is_ScriptSrc%)%)%)%,%
%scriptsrc,%(%else-then(%if-no(%is_scriptsrc%,,%(%scriptsrc%)%)%,%(%if-no(%is_scriptsrc%,%(%ApplicationJs%)%,%(../js/html.js)%)%)%)%)%,%
%ScriptSrc,%(%else-then(%if-no(%is_scriptsrc%,,%(%ScriptSrc%)%)%,%(%scriptsrc%)%)%)%,%
%SCRIPTSRC,%(%else-then(%SCRIPTSRC%,%(%toupper(%ScriptSrc%)%)%)%)%,%
%scriptsrc,%(%else-then(%_ScriptSrc%,%(%tolower(%ScriptSrc%)%)%)%)%,%
%is_script,%(%else-then(%is_script%,%(%is_Script%)%)%)%,%
%script,%(%else-then(%if-no(%is_script%,,%(%script%)%)%,%(%if-no(%is_script%,%(%ApplicationScript%)%,%()%)%)%)%)%,%
%Script,%(%else-then(%if-no(%is_script%,,%(%Script%)%)%,%(%script%)%)%)%,%
%SCRIPT,%(%else-then(%SCRIPT%,%(%toupper(%Script%)%)%)%)%,%
%script,%(%else-then(%_Script%,%(%tolower(%Script%)%)%)%)%,%
%form,%(%else-then(%if-no(%is_form%,,%(%form%)%)%,%(%if-no(%is_form%,,%(Form)%)%)%)%)%,%
%Form,%(%else-then(%if-no(%is_form%,,%(%Form%)%)%,%(%form%)%)%)%,%
%FORM,%(%else-then(%FORM%,%(%toupper(%Form%)%)%)%)%,%
%form,%(%else-then(%_Form%,%(%tolower(%Form%)%)%)%)%,%
%is_method,%(%else-then(%is_method%,%(%is_Method%)%)%)%,%
%method,%(%else-then(%if-no(%is_method%,,%(%method%)%)%,%(%if-no(%is_method%,,%(POST)%)%)%)%)%,%
%Method,%(%else-then(%if-no(%is_method%,,%(%Method%)%)%,%(%method%)%)%)%,%
%METHOD,%(%else-then(%METHOD%,%(%toupper(%Method%)%)%)%)%,%
%method,%(%else-then(%_Method%,%(%tolower(%Method%)%)%)%)%,%
%is_action,%(%else-then(%is_action%,%(%is_Action%)%)%)%,%
%action,%(%else-then(%if-no(%is_action%,,%(%action%)%)%,%(%if-no(%is_action%,,%(%IncludePrefix%../templates/t/html/html.t)%)%)%)%)%,%
%Action,%(%else-then(%if-no(%is_action%,,%(%Action%)%)%,%(%action%)%)%)%,%
%ACTION,%(%else-then(%ACTION%,%(%toupper(%Action%)%)%)%)%,%
%action,%(%else-then(%_Action%,%(%tolower(%Action%)%)%)%)%,%
%is_target,%(%else-then(%is_target%,%(%is_Target%)%)%)%,%
%target,%(%else-then(%if-no(%is_target%,,%(%target%)%)%,%(%if-no(%is_target%,,%(Target)%)%)%)%)%,%
%Target,%(%else-then(%if-no(%is_target%,,%(%Target%)%)%,%(%target%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_Target%,%(%tolower(%Target%)%)%)%)%,%
%is_onsubmit,%(%else-then(%is_onsubmit%,%(%is_OnSubmit%)%)%)%,%
%onsubmit,%(%else-then(%if-no(%is_onsubmit%,,%(%onsubmit%)%)%,%(%if-no(%is_onsubmit%,,%(%
%return setFormSubmit%(()%getFormValue2%(()%'FormTemplate'%(,)%'FormAction'%(,)%'%Form%'%())%%(,)%getFormValue%(()%'FormMethod'%(,)%'%Form%'%())%%(,)%'%Form%'%())%%
%)%)%)%)%)%,%
%OnSubmit,%(%else-then(%if-no(%is_onsubmit%,,%(%OnSubmit%)%)%,%(%onsubmit%)%)%)%,%
%ONSUBMIT,%(%else-then(%ONSUBMIT%,%(%toupper(%OnSubmit%)%)%)%)%,%
%onsubmit,%(%else-then(%_OnSubmit%,%(%tolower(%OnSubmit%)%)%)%)%,%
%%(%
%%include(%include_path%/html-file.t)%%
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
        <title>%Title%</title>
    
        <!--
        =====================================================================
        === style
        =====================================================================
        -->
        %parse(%StyleHref%,;,,,,%(<link rel="stylesheet" type="%StyleType%" href="%StyleHref%"></link>
        )%,StyleHref)%<style type="%StyleType%">
        </style>
    
        <!--
        =====================================================================
        === script
        =====================================================================
        -->
        %parse(%ScriptSrc%,;,,,,%(<script type="%ScriptType%" src="%ScriptSrc%"></script>
        )%,ScriptSrc)%<script type="%ScriptType%">%parse(%Script%,;,,,,%(
            %Script%;)%,Script)%
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
        <form name="%Form%" method="%Method%" action="%Action%"
         onSubmit="%OnSubmit%">
            <div class="%form%">
%parse(%Input%,;,,,,%(%
%%with(%
%inputname,%(%else-then(%if-no(%is_inputname%,,%(%inputname%)%)%,%(%if-no(%is_inputname%,,%(%left(%Input%,=)%)%)%)%)%)%,%
%InputName,%(%else-then(%if-no(%is_inputname%,,%(%InputName%)%)%,%(%inputname%)%)%)%,%
%inputvalue,%(%else-then(%if-no(%is_inputvalue%,,%(%inputvalue%)%)%,%(%if-no(%is_inputvalue%,,%(%right-of-left(%Input%,=)%)%)%)%)%)%,%
%InputValue,%(%else-then(%if-no(%is_inputvalue%,,%(%InputValue%)%)%,%(%inputvalue%)%)%)%,%
%%(
                %InputName%: <input name="%InputName%" value="%InputValue%"/>
                <input name="is_%InputName%" value="no" type="checkbox" unchecked="checked">no</input><br/>)%)%%
%)%,Input)%%
%%parse(%Select%,;,,,,%(%
%%with(%
%inputname,%(%else-then(%if-no(%is_inputname%,,%(%inputname%)%)%,%(%if-no(%is_inputname%,,%(%left(%Input%,=)%)%)%)%)%)%,%
%InputName,%(%else-then(%if-no(%is_inputname%,,%(%InputName%)%)%,%(%inputname%)%)%)%,%
%inputvalue,%(%else-then(%if-no(%is_inputvalue%,,%(%inputvalue%)%)%,%(%if-no(%is_inputvalue%,,%(%right-of-left(%Input%,=)%)%)%)%)%)%,%
%InputValue,%(%else-then(%if-no(%is_inputvalue%,,%(%InputValue%)%)%,%(%inputvalue%)%)%)%,%
%%(
                %InputName%: <select name="%InputName%">
%parse(%InputValue%,%(,)%,,,,%(%
%%with(%
%optionvalue,%(%else-then(%if-no(%is_optionvalue%,,%(%optionvalue%)%)%,%(%if-no(%is_optionvalue%,,%(%left(%Option%,:)%)%)%)%)%)%,%
%OptionValue,%(%else-then(%if-no(%is_optionvalue%,,%(%OptionValue%)%)%,%(%optionvalue%)%)%)%,%
%optionlabel,%(%else-then(%if-no(%is_optionlabel%,,%(%optionlabel%)%)%,%(%if-no(%is_optionlabel%,,%(%right-of-left(%Option%,:)%%)%)%)%)%)%,%
%OptionLabel,%(%else-then(%if-no(%is_optionlabel%,,%(%OptionLabel%)%)%,%(%optionlabel%)%)%)%,%
%%(                <option value="%OptionValue%">%OptionLabel%</option>
)%)%)%,Option)%                </select>
                <input name="is_%InputName%" value="no" type="checkbox" unchecked="checked">no</input><br/>)%)%%
%)%,Input)%

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
                <option value="%Action%">%Page%</option>
                <option value=""></option>
                <option value="/%application%-cgi/cgi">cgi parameters</option>
                <option value="/%application%-cgi/cgicatch">catch cgi parameters</option>
                <option value=""></option>
                <option value="/%application%-http/http">http parameters</option>
                <option value="/%application%-http/httpcatch">catch http parameters</option>
                <option value=""></option>
                <option value="%IncludePrefix%../templates/t/t/parameters.t">t parameters</option>
                <option value="%IncludePrefix%../templates/t/t/functions.t">t functions</option>
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
%
%)%)%
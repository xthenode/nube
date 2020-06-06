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
%#   File: application-form-html.t
%#
%# Author: $author$
%#   Date: 12/10/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_application,%(%else-then(%is_application%,%(%is_Application%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(Application)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%application%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_Application%,%(%tolower(%Application%)%)%)%)%,%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%Application%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%name%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_Name%,%(%tolower(%Name%)%)%)%)%,%
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
%<form name="%Form%" method="%Method%" action="%Action%"
 onSubmit="%OnSubmit%">
    <div class="%form%">
%parse(%Input%,;,,,,%(%
%%with(%
%inputname,%(%else-then(%if-no(%is_inputname%,,%(%inputname%)%)%,%(%if-no(%is_inputname%,,%(%else-then(%left(%Input%,=)%,%(%Input%)%)%)%)%)%)%)%,%
%InputName,%(%else-then(%if-no(%is_inputname%,,%(%InputName%)%)%,%(%inputname%)%)%)%,%
%inputvalue,%(%else-then(%if-no(%is_inputvalue%,,%(%inputvalue%)%)%,%(%if-no(%is_inputvalue%,,%(%right-of-left(%Input%,=)%)%)%)%)%)%,%
%InputValue,%(%else-then(%if-no(%is_inputvalue%,,%(%InputValue%)%)%,%(%inputvalue%)%)%)%,%
%%(
        <b></b>%InputName%: <input name="%InputName%" value="%InputValue%"/>
        <input name="is_%InputName%" value="no" type="checkbox" unchecked="checked">no</input><b></b><br/>)%)%%
%)%,Input)%%
%%parse(%Select%,;,,,,%(%
%%with(%
%inputname,%(%else-then(%if-no(%is_inputname%,,%(%inputname%)%)%,%(%if-no(%is_inputname%,,%(%left(%Input%,=)%)%)%)%)%)%,%
%InputName,%(%else-then(%if-no(%is_inputname%,,%(%InputName%)%)%,%(%inputname%)%)%)%,%
%inputvalue,%(%else-then(%if-no(%is_inputvalue%,,%(%inputvalue%)%)%,%(%if-no(%is_inputvalue%,,%(%right-of-left(%Input%,=)%)%)%)%)%)%,%
%InputValue,%(%else-then(%if-no(%is_inputvalue%,,%(%InputValue%)%)%,%(%inputvalue%)%)%)%,%
%%(
        <b></b>%InputName%: <select name="%InputName%">
%parse(%InputValue%,%(,)%,,,,%(%
%%with(%
%optionvalue,%(%else-then(%if-no(%is_optionvalue%,,%(%optionvalue%)%)%,%(%if-no(%is_optionvalue%,,%(%left(%Option%,:)%)%)%)%)%)%,%
%OptionValue,%(%else-then(%if-no(%is_optionvalue%,,%(%OptionValue%)%)%,%(%optionvalue%)%)%)%,%
%optionlabel,%(%else-then(%if-no(%is_optionlabel%,,%(%optionlabel%)%)%,%(%if-no(%is_optionlabel%,,%(%right-of-left(%Option%,:)%%)%)%)%)%)%,%
%OptionLabel,%(%else-then(%if-no(%is_optionlabel%,,%(%OptionLabel%)%)%,%(%optionlabel%)%)%)%,%
%%(        <option value="%OptionValue%">%OptionLabel%</option>
)%)%)%,Option)%        </select>
        <input name="is_%InputName%" value="no" type="checkbox" unchecked="checked">no</input><b></b><br/>)%)%%
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
%
%)%)%
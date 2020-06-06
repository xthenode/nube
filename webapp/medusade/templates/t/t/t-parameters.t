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
%#   File: t-parameters.t
%#
%# Author: $author$
%#   Date: 11/25/2019
%########################################################################
%with(%
%is_is_lower,%(%else-then(%is_is_lower%,%(%is_is_Lower%)%)%)%,%
%is_lower,%(%else-then(%if-no(%is_is_lower%,,%(%is_lower%)%)%,%(%if-no(%is_is_lower%,,%(yes)%)%)%)%)%,%
%is_Lower,%(%else-then(%if-no(%is_is_lower%,,%(%is_Lower%)%)%,%(%if-no(%is_is_lower%,,%(%is_lower%)%)%)%)%)%,%
%IS_LOWER,%(%else-then(%IS_LOWER%,%(%toupper(%is_Lower%)%)%)%)%,%
%is_lower,%(%else-then(%_is_lower%,%(%tolower(%is_Lower%)%)%)%)%,%
%is_is_upperlower,%(%else-then(%is_is_upperlower%,%(%is_is_UpperLower%)%)%)%,%
%is_upperlower,%(%else-then(%if-no(%is_is_upperlower%,,%(%is_upperlower%)%)%,%(%if-no(%is_is_upperlower%,,%(yes)%)%)%)%)%,%
%is_UpperLower,%(%else-then(%if-no(%is_is_upperlower%,,%(%is_UpperLower%)%)%,%(%if-no(%is_is_upperlower%,,%(%is_upperlower%)%)%)%)%)%,%
%IS_UPPERLOWER,%(%else-then(%IS_UPPERLOWER%,%(%toupper(%is_UpperLower%)%)%)%)%,%
%is_upperlower,%(%else-then(%_is_upperlower%,%(%tolower(%is_UpperLower%)%)%)%)%,%
%is_parameters,%(%else-then(%is_parameters%,%(%is_Parameters%)%)%)%,%
%parameters,%(%else-then(%if-no(%is_parameters%,,%(%parameters%)%)%,%(%if-no(%is_parameters%,,%()%)%)%)%)%,%
%Parameters,%(%else-then(%if-no(%is_parameters%,,%(%Parameters%)%)%,%(%if-no(%is_parameters%,,%(%parameters%)%)%)%)%)%,%
%PARAMETERS,%(%else-then(%PARAMETERS%,%(%toupper(%Parameters%)%)%)%)%,%
%parameters,%(%else-then(%_parameters%,%(%tolower(%Parameters%)%)%)%)%,%
%%(%
%%if-no(%is_Parameters%,,%(%
%%parse(%Parameters%,;,,,,%(%
%%with(%
%Value,%(%else-then(%right-of-left(%Parameter%,=)%,%(%Parameter%)%)%)%,%
%Name,%(%else-then(%left(%Parameter%,=)%,%(%Parameter%)%)%)%,%
%Parameter,%(%Name%)%,%
%PARAMETER,%(%else-then(%PARAMETER%,%(%toupper(%Parameter%)%)%)%)%,%
%parameter,%(%else-then(%parameter%,%(%tolower(%Parameter%)%)%)%)%,%
%%(%
%%if-no(%is_Lower%,%(%
%%%is_%Parameter%%(,)%%%%(()%%%else-then%(()%%%is_%Parameter%%%%(,)%%%%(()%%%is_%parameter%%%%())%%%%())%%%%())%%%%(,)%%%
%
%%%%Parameter%%(,)%%%%(()%%%else-then%(()%%%if-no%(()%%%is_%Parameter%%%,,%%%(()%%%%Parameter%%%%())%%%%())%%%%(,)%%%%(()%%%if-no%(()%%%is_%Parameter%%%,,%%%(()%%Value%%())%%%%())%%%%())%%%%())%%%%())%%%%(,)%%%
%
%)%,%(%
%%%is_%parameter%%(,)%%%%(()%%%else-then%(()%%%is_%parameter%%%%(,)%%%%(()%%%is_%Parameter%%%%())%%%%())%%%%())%%%%(,)%%%
%
%%%%parameter%%(,)%%%%(()%%%else-then%(()%%%if-no%(()%%%is_%parameter%%%,,%%%(()%%%%parameter%%%%())%%%%())%%%%(,)%%%%(()%%%if-no%(()%%%is_%parameter%%%,,%%%(()%%Value%%())%%%%())%%%%())%%%%())%%%%())%%%%(,)%%%
%
%%if-no(%is_UpperLower%,,%(%
%%%%Parameter%%(,)%%%%(()%%%else-then%(()%%%if-no%(()%%%is_%parameter%%%,,%%%(()%%%%Parameter%%%%())%%%%())%%%%(,)%%%%(()%%%if-no%(()%%%is_%parameter%%%,,%%%(()%%%%parameter%%%%())%%%%())%%%%())%%%%())%%%%())%%%%(,)%%%
%)%)%%
%)%)%%
%%if-no(%is_UpperLower%,,%(%
%%%%PARAMETER%%(,)%%%%(()%%%else-then%(()%%%%PARAMETER%%%%(,)%%%%(()%%%toupper%(()%%%%Parameter%%%%())%%%%())%%%%())%%%%())%%%%(,)%%%
%
%%if-no(%is_Lower%,%(%
%%%%parameter%%(,)%%%%(()%%%else-then%(()%%%%parameter%%%%(,)%%%%(()%%%tolower%(()%%%%Parameter%%%%())%%%%())%%%%())%%%%())%%%%(,)%%%
%
%)%,%(%
%%%%parameter%%(,)%%%%(()%%%else-then%(()%%%_%parameter%%%%(,)%%%%(()%%%tolower%(()%%%%Parameter%%%%())%%%%())%%%%())%%%%())%%%%(,)%%%
%
%)%)%%
%)%)%%
%)%)%%
%)%,Parameter)%%
%)%)%%
%)%)%
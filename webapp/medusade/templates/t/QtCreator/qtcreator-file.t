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
%#   File: qtcreator-file.t
%#
%# Author: $author$
%#   Date: 12/2/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_organization,%(%else-then(%is_organization%,%(%is_Organization%)%)%)%,%
%organization,%(%else-then(%if-no(%is_organization%,,%(%organization%)%)%,%(%if-no(%is_organization%,,%($organization$)%)%)%)%)%,%
%Organization,%(%else-then(%if-no(%is_organization%,,%(%Organization%)%)%,%(%organization%)%)%)%,%
%ORGANIZATION,%(%else-then(%ORGANIZATION%,%(%toupper(%Organization%)%)%)%)%,%
%organization,%(%else-then(%_Organization%,%(%tolower(%Organization%)%)%)%)%,%
%is_author,%(%else-then(%is_author%,%(%is_Author%)%)%)%,%
%author,%(%else-then(%if-no(%is_author%,,%(%author%)%)%,%(%if-no(%is_author%,,%($author$)%)%)%)%)%,%
%Author,%(%else-then(%if-no(%is_author%,,%(%Author%)%)%,%(%author%)%)%)%,%
%AUTHOR,%(%else-then(%AUTHOR%,%(%toupper(%Author%)%)%)%)%,%
%author,%(%else-then(%_Author%,%(%tolower(%Author%)%)%)%)%,%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,%(%Framework%)%,%(%else-then(%Target%,%Framework%)%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%name%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_Name%,%(%tolower(%Name%)%)%)%)%,%
%is_file,%(%else-then(%is_file%,%(%is_File%)%)%)%,%
%file,%(%else-then(%if-no(%is_file%,,%(%file%)%)%,%(%if-no(%is_file%,,%(%Name%)%)%)%)%)%,%
%File,%(%else-then(%if-no(%is_file%,,%(%File%)%)%,%(%file%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%filebase(%File%)%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%base%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_Base%,%(%tolower(%Base%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%(%is_Extension%)%)%)%,%
%extension,%(%else-then(%if-no(%is_extension%,,%(%extension%)%)%,%(%if-no(%is_extension%,,%(%else-then(%fileextension(%File%)%,pri)%)%)%)%)%)%,%
%Extension,%(%else-then(%if-no(%is_extension%,,%(%Extension%)%)%,%(%extension%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_Extension%,%(%tolower(%Extension%)%)%)%)%,%
%File,%(%lib%%Base%%then-if(%Extension%,.)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_File%,%(%tolower(%File%)%)%)%)%,%
%is_os,%(%else-then(%is_os%,%(%is_Os%)%)%)%,%
%os,%(%else-then(%if-no(%is_os%,,%(%os%)%)%,%(%if-no(%is_os%,,%(generic)%)%)%)%)%,%
%Os,%(%else-then(%if-no(%is_os%,,%(%Os%)%)%,%(%os%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_Os%,%(%tolower(%Os%)%)%)%)%,%
%is_titleos,%(%else-then(%is_titleos%,%(%is_TitleOs%)%)%)%,%
%titleos,%(%else-then(%if-no(%is_titleos%,,%(%titleos%)%)%,%(%if-no(%is_titleos%,,%(%if-then(%Os%, )%)%)%)%)%)%,%
%TitleOs,%(%else-then(%if-no(%is_titleos%,,%(%TitleOs%)%)%,%(%titleos%)%)%)%,%
%TITLEOS,%(%else-then(%TITLEOS%,%(%toupper(%TitleOs%)%)%)%)%,%
%titleos,%(%else-then(%_TitleOs%,%(%tolower(%TitleOs%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(Framework)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%framework%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_Framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_titleframework,%(%else-then(%is_titleframework%,%(%is_TitleFramework%)%)%)%,%
%titleframework,%(%else-then(%if-no(%is_titleframework%,,%(%titleframework%)%)%,%(%if-no(%is_titleframework%,,%(%then-if(%Framework%, for )%)%)%)%)%)%,%
%TitleFramework,%(%else-then(%if-no(%is_titleframework%,,%(%TitleFramework%)%)%,%(%titleframework%)%)%)%,%
%TITLEFRAMEWORK,%(%else-then(%TITLEFRAMEWORK%,%(%toupper(%TitleFramework%)%)%)%)%,%
%titleframework,%(%else-then(%_TitleFramework%,%(%tolower(%TitleFramework%)%)%)%)%,%
%is_executable,%(%else-then(%is_executable%,%(%is_Executable%)%)%)%,%
%executable,%(%else-then(%if-no(%is_executable%,,%(%executable%)%)%,%(%if-no(%is_executable%,,%(executable)%)%)%)%)%,%
%Executable,%(%else-then(%if-no(%is_executable%,,%(%Executable%)%)%,%(%executable%)%)%)%,%
%EXECUTABLE,%(%else-then(%EXECUTABLE%,%(%toupper(%Executable%)%)%)%)%,%
%executable,%(%else-then(%_Executable%,%(%tolower(%Executable%)%)%)%)%,%
%is_library,%(%else-then(%is_library%,%(%is_Library%)%)%)%,%
%library,%(%else-then(%if-no(%is_library%,,%(%library%)%)%,%(%if-no(%is_library%,,%(static library)%)%)%)%)%,%
%Library,%(%else-then(%if-no(%is_library%,,%(%Library%)%)%,%(%library%)%)%)%,%
%LIBRARY,%(%else-then(%LIBRARY%,%(%toupper(%Library%)%)%)%)%,%
%library,%(%else-then(%_Library%,%(%tolower(%Library%)%)%)%)%,%
%is_lib,%(%else-then(%is_lib%,%(%is_Lib%)%)%)%,%
%lib,%(%else-then(%if-no(%is_lib%,,%(%lib%)%)%,%(%if-no(%is_lib%,,%(lib)%)%)%)%)%,%
%Lib,%(%else-then(%if-no(%is_lib%,,%(%Lib%)%)%,%(%lib%)%)%)%,%
%LIB,%(%else-then(%LIB%,%(%toupper(%Lib%)%)%)%)%,%
%lib,%(%else-then(%_Lib%,%(%tolower(%Lib%)%)%)%)%,%
%is_target,%(%else-then(%is_target%,%(%is_Target%)%)%)%,%
%target,%(%else-then(%if-no(%is_target%,,%(%target%)%)%,%(%if-no(%is_target%,,%(%framework%)%)%)%)%)%,%
%Target,%(%else-then(%if-no(%is_target%,,%(%Target%)%)%,%(%target%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_Target%,%(%tolower(%Target%)%)%)%)%,%
%is_titletarget,%(%else-then(%is_titletarget%,%(%is_TitleTarget%)%)%)%,%
%titletarget,%(%else-then(%if-no(%is_titletarget%,,%(%titletarget%)%)%,%(%if-no(%is_titletarget%,,%(%if(%Target%,%(%then-if(%Library%, )%%then-if(%lib%%Target%, )%)%)%)%)%)%)%)%,%
%TitleTarget,%(%else-then(%if-no(%is_titletarget%,,%(%TitleTarget%)%)%,%(%titletarget%)%)%)%,%
%TITLETARGET,%(%else-then(%TITLETARGET%,%(%toupper(%TitleTarget%)%)%)%)%,%
%titletarget,%(%else-then(%_TitleTarget%,%(%tolower(%TitleTarget%)%)%)%)%,%
%is_title,%(%else-then(%is_title%,%(%is_Title%)%)%)%,%
%title,%(%else-then(%if-no(%is_title%,,%(%title%)%)%,%(%if-no(%is_title%,,%(%TitleOs%QtCreator project%TitleFramework%%TitleTarget%)%)%)%)%)%,%
%Title,%(%else-then(%if-no(%is_title%,,%(%Title%)%)%,%(%title%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_Title%,%(%tolower(%Title%)%)%)%)%,%
%%(%
%########################################################################
# Copyright (c) 1988-%year()% %Organization%
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: %File%
#
# Author: %Author%
#   Date: %date()%
#%if(%Title%,%(
# %Title%)%)%
########################################################################
%
%)%)%
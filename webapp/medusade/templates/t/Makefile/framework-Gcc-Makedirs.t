%########################################################################
%# Copyright (c) 1988-2017 $organization$
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
%#   File: framework-Gcc-Makedirs.t
%#
%# Author: $author$
%#   Date: 7/21/2017
%########################################################################
%with(%
%filepath,%(%else-then(%filepath%,%(%filepath(%input%)%)%)%)%,%
%Filepath,%(%else-then(%Filepath%,%(%filepath%)%)%)%,%
%FILEPATH,%(%else-then(%FILEPATH%,%(%toupper(%Filepath%)%)%)%)%,%
%filepath,%(%else-then(%_Filepath%,%(%tolower(%Filepath%)%)%)%)%,%
%organization,%(%else-then(%organization%,%($organization$)%)%)%,%
%Organization,%(%else-then(%Organization%,%(%organization%)%)%)%,%
%ORGANIZATION,%(%else-then(%ORGANIZATION%,%(%toupper(%Organization%)%)%)%)%,%
%organization,%(%else-then(%_Organization%,%(%tolower(%Organization%)%)%)%)%,%
%author,%(%else-then(%author%,%($author$)%)%)%,%
%Author,%(%else-then(%Author%,%(%author%)%)%)%,%
%AUTHOR,%(%else-then(%AUTHOR%,%(%toupper(%Author%)%)%)%)%,%
%author,%(%else-then(%_Author%,%(%tolower(%Author%)%)%)%)%,%
%date,%(%else-then(%date%,%(%date()%)%)%)%,%
%Date,%(%else-then(%Date%,%(%date%)%)%)%,%
%DATE,%(%else-then(%DATE%,%(%toupper(%Date%)%)%)%)%,%
%date,%(%else-then(%_Date%,%(%tolower(%Date%)%)%)%)%,%
%year,%(%else-then(%year%,%(%year()%)%)%)%,%
%Year,%(%else-then(%Year%,%(%year%)%)%)%,%
%YEAR,%(%else-then(%YEAR%,%(%toupper(%Year%)%)%)%)%,%
%year,%(%else-then(%_Year%,%(%tolower(%Year%)%)%)%)%,%
%month,%(%else-then(%month%,%(%month()%)%)%)%,%
%Month,%(%else-then(%Month%,%(%month%)%)%)%,%
%MONTH,%(%else-then(%MONTH%,%(%toupper(%Month%)%)%)%)%,%
%month,%(%else-then(%_Month%,%(%tolower(%Month%)%)%)%)%,%
%day,%(%else-then(%day%,%(%day()%)%)%)%,%
%Day,%(%else-then(%Day%,%(%day%)%)%)%,%
%DAY,%(%else-then(%DAY%,%(%toupper(%Day%)%)%)%)%,%
%day,%(%else-then(%_Day%,%(%tolower(%Day%)%)%)%)%,%
%depends,%(%else-then(%depends%,%(depends)%)%)%,%
%Depends,%(%else-then(%Depends%,%(%depends%)%)%)%,%
%DEPENDS,%(%else-then(%DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_Depends%,%(%tolower(%Depends%)%)%)%)%,%
%framework,%(%else-then(%framework%,%(framework)%)%)%,%
%Framework,%(%else-then(%Framework%,%(%framework%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_Framework%,%(%tolower(%Framework%)%)%)%)%,%
%target,%(%else-then(%target%,%()%)%)%,%
%Target,%(%else-then(%Target%,%(%target%)%)%)%,%
%TARGET,%(%else-then(%TARGET%,%(%toupper(%Target%)%)%)%)%,%
%target,%(%else-then(%_Target%,%(%tolower(%Target%)%)%)%)%,%
%os,%(%else-then(%os%,%()%)%)%,%
%Os,%(%else-then(%Os%,%(%os%)%)%)%,%
%OS,%(%else-then(%OS%,%(%toupper(%Os%)%)%)%)%,%
%os,%(%else-then(%_Os%,%(%tolower(%Os%)%)%)%)%,%
%makefile,%(%else-then(%makefile%,%(Makedirs)%)%)%,%
%Makefile,%(%else-then(%Makefile%,%(%makefile%)%)%)%,%
%MAKEFILE,%(%else-then(%MAKEFILE%,%(%toupper(%Makefile%)%)%)%)%,%
%makefile,%(%else-then(%_Makefile%,%(%tolower(%Makefile%)%)%)%)%,%
%extension,%(%else-then(%extension%,%(%fileextension(%file%)%)%)%)%,%
%Extension,%(%else-then(%Extension%,%(%extension%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_Extension%,%(%tolower(%Extension%)%)%)%)%,%
%file,%(%else-then(%file%,%(%Makefile%)%)%)%,%
%File,%(%else-then(%File%,%(%file%)%)%)%,%
%FILE,%(%else-then(%FILE%,%(%toupper(%File%)%)%)%)%,%
%file,%(%else-then(%_File%,%(%tolower(%File%)%)%)%)%,%
%title,%(%else-then(%title%,%(generic Gcc %Makefile%)%)%)%,%
%Title,%(%else-then(%Title%,%(%title%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_Title%,%(%tolower(%Title%)%)%)%)%,%
%%(%
%%include(%Filepath%/Makefile-file.t)%%
%all:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir" ; \
		(cd $$dir && make) || (echo "Make $$dir Failed") ; \
	done

install:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir install" ; \
		(cd $$dir && make install) || (echo "Make $$dir install Failed") ; \
	done

clean:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir clean" ; \
		(cd $$dir && make clean) || (echo "Make $$dir clean Failed") ; \
	done

again:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir again" ; \
		(cd $$dir && make again) || (echo "Make $$dir again Failed") ; \
	done
	
########################################################################

help:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir help" ; \
		(cd $$dir && make help) || (echo "Make $$dir help Failed") ; \
	done

install-links:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir install-links" ; \
		(cd $$dir && make install-links) || (echo "Make $$dir install-links Failed") ; \
	done

build:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir build" ; \
		(cd $$dir && make build) || (echo "Make $$dir build Failed") ; \
	done

config:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir config" ; \
		(cd $$dir && make config) || (echo "Make $$dir config Failed") ; \
	done

unconfig:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir unconfig" ; \
		(cd $$dir && make unconfig) || (echo "Make $$dir unconfig Failed") ; \
	done

extract:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir extract" ; \
		(cd $$dir && make extract) || (echo "Make $$dir extract Failed") ; \
	done

unextract:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir unextract" ; \
		(cd $$dir && make unextract) || (echo "Make $$dir unextract Failed") ; \
	done

extract-patch:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir extract-patch" ; \
		(cd $$dir && make extract-patch) || (echo "Make $$dir extract-patch Failed") ; \
	done

extract-docs:
	@for dir in $(SRC_DIRS); do \
		echo "Make $$dir extract-docs" ; \
		(cd $$dir && make extract-docs) || (echo "Make $$dir extract-docs Failed") ; \
	done

%
%)%)%

%########################################################################
%# Copyright (c) 1988-2018 $organization$
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
%#   File: thirdparty-framework-Gcc-Makefile-rules.t
%#
%# Author: $author$
%#   Date: 3/11/2018
%########################################################################
%with(%
%name_separator,%(%else-then(%name_separator%,%(-)%)%)%,%
%version_separator,%(%else-then(%version_separator%,%(.)%)%)%,%
%version_major,%(%else-then(%version_major%,%(1)%)%)%,%
%version_minor,%(%else-then(%version_minor%,%()%)%)%,%
%version_release,%(%else-then(%version_release%,%()%)%)%,%
%archived,%(%else-then(%archived%,%(tar)%)%)%,%
%compressed,%(%else-then(%compressed%,%()%)%)%,%
%%(%
%
%cc_%########################################################################
#
# %What% defs
#
########################################################################%_cc%
%WHAT%_MAKEDIR=$(PWD)

%WHAT%_THIRDPARTY = $(%WHAT%_MAKEDIR)/..
#%WHAT%_BUILD_HOME = $(%WHAT%_THIRDPARTY)

ifndef %WHAT%_UNAME
%WHAT%_UNAME = $(shell uname)
endif

ifndef %WHAT%_OS
ifneq ($(%WHAT%_UNAME),Darwin)
%WHAT%_OS = linux
else
%WHAT%_OS = macosx
endif
endif

%cc_%#
# %What% version
#%_cc%
%WHAT%_VERSION_MAJOR = %version_major%
%WHAT%_VERSION_MINOR = %version_minor%
%WHAT%_VERSION_RELEASE = %version_release%

%WHAT%_VERSION_SEPARATOR = %version_separator%
%WHAT%_VERSION_MAJOR_SEPARATOR = %if(%version_minor%,%($(%WHAT%_VERSION_SEPARATOR))%)%
%WHAT%_VERSION_MINOR_SEPARATOR = %if(%version_release%,%($(%WHAT%_VERSION_SEPARATOR))%)%

%WHAT%_VERSION_SHORT = $(%WHAT%_VERSION_MAJOR)$(%WHAT%_VERSION_MINOR)$(%WHAT%_VERSION_RELEASE)
%WHAT%_VERSION = $(%WHAT%_VERSION_MAJOR)$(%WHAT%_VERSION_MAJOR_SEPARATOR)$(%WHAT%_VERSION_MINOR)$(%WHAT%_VERSION_MINOR_SEPARATOR)$(%WHAT%_VERSION_RELEASE)

%cc_%#
# %What% name
#%_cc%
%WHAT%_NAME_SEPARATOR = %name_separator%
%WHAT%_NAME_BASE = %what%
%WHAT%_NAME = $(%WHAT%_NAME_BASE)$(%WHAT%_NAME_SEPARATOR)$(%WHAT%_VERSION)
%WHAT%_INSTALL_NAME_SEPARATOR = %name_separator%
%WHAT%_INSTALL_NAME = $(%WHAT%_NAME_BASE)$(%WHAT%_INSTALL_NAME_SEPARATOR)$(%WHAT%_VERSION)
%WHAT%_DIR = $(%WHAT%_NAME)

%cc_%#
# %What% archive
#%_cc%
%WHAT%_ARCHIVED = %archived%
%WHAT%_COMPRESSED = %compressed%
%WHAT%_ARCHIVE_SEPARATOR = %archive_separator%
%WHAT%_ARCHIVED_SEPARATOR = %if(%archived%,%($(%WHAT%_ARCHIVE_SEPARATOR))%)%
%WHAT%_COMPRESSED_SEPARATOR = %if(%compressed%,%($(%WHAT%_ARCHIVE_SEPARATOR))%)%

%WHAT%_EXTRACT_DIR = $(%WHAT%_NAME)
%WHAT%_TGZ_PREFIX = 
%WHAT%_TGZ = $(%WHAT%_NAME)$(%WHAT%_TGZ_PREFIX)$(%WHAT%_ARCHIVED_SEPARATOR)$(%WHAT%_ARCHIVED)$(%WHAT%_COMPRESSED_SEPARATOR)$(%WHAT%_COMPRESSED)
%WHAT%_PATCH_TGZ_PREFIX = $(%WHAT%_NAME_SEPARATOR)patch
%WHAT%_PATCH_TGZ = $(%WHAT%_NAME)$(%WHAT%_PATCH_TGZ_PREFIX)$(%WHAT%_ARCHIVED_SEPARATOR)$(%WHAT%_ARCHIVED)$(%WHAT%_COMPRESSED_SEPARATOR)$(%WHAT%_COMPRESSED)
%WHAT%_DOCS_TGZ_PREFIX = $(%WHAT%_NAME_SEPARATOR)docs
%WHAT%_DOCS_TGZ = $(%WHAT%_NAME)$(%WHAT%_DOCS_TGZ_PREFIX)$(%WHAT%_ARCHIVED_SEPARATOR)$(%WHAT%_ARCHIVED)$(%WHAT%_COMPRESSED_SEPARATOR)$(%WHAT%_COMPRESSED)

%cc_%#
# %What% extract
#%_cc%
ifeq ($(%WHAT%_ARCHIVED),tar)
ifeq ($(%WHAT%_COMPRESSED),gz)
%WHAT%_TAR_UNCOMPRESS = z
%WHAT%_TAR_COMPRESS = z
else
ifeq ($(%WHAT%_COMPRESSED),bz2)
%WHAT%_TAR_UNCOMPRESS = j
%WHAT%_TAR_COMPRESS = j
else
ifeq ($(%WHAT%_COMPRESSED),xz)
%WHAT%_TAR_UNCOMPRESS = J
%WHAT%_TAR_COMPRESS = J
else
endif
endif
endif
%WHAT%_LIST = tar -tv$(%WHAT%_TAR_UNCOMPRESS)f
%WHAT%_EXTRACT = tar -x$(%WHAT%_TAR_UNCOMPRESS)f
%WHAT%_ARCHIVE = tar -cv$(%WHAT%_TAR_COMPRESS)f
else
ifeq ($(%WHAT%_ARCHIVED),zip)
%WHAT%_LIST = unzip -l
%WHAT%_EXTRACT = unzip
%WHAT%_ARCHIVE = zip
else
%WHAT%_LIST = echo unable to list
%WHAT%_EXTRACT = echo unable to extract
%WHAT%_ARCHIVE = echo unable to archive
endif
endif

%WHAT%_LIST_TGZ = $(%WHAT%_LIST) $(%WHAT%_TGZ)
%WHAT%_EXTRACT_TGZ = $(%WHAT%_EXTRACT) $(%WHAT%_TGZ)
%WHAT%_TOUCH_EXTRACT = touch $(%WHAT%_DIR)
%WHAT%_REMOVE_DIR = $(%WHAT%_REMOVE) $(%WHAT%_DIR)

%WHAT%_LIST_PATCH = $(%WHAT%_LIST)
%WHAT%_EXTRACT_PATCH = $(%WHAT%_EXTRACT)
%WHAT%_LIST_PATCH_TGZ = $(%WHAT%_LIST_PATCH) $(%WHAT%_PATCH_TGZ)
%WHAT%_EXTRACT_PATCH_TGZ = $(%WHAT%_EXTRACT_PATCH) $(%WHAT%_PATCH_TGZ)

%WHAT%_LIST_DOCS = $(%WHAT%_LIST)
%WHAT%_EXTRACT_DOCS = $(%WHAT%_EXTRACT)
%WHAT%_LIST_DOCS_TGZ = $(%WHAT%_LIST_DOCS) $(%WHAT%_DOCS_TGZ)
%WHAT%_EXTRACT_DOCS_TGZ = $(%WHAT%_EXTRACT_DOCS) $(%WHAT%_DOCS_TGZ) -C$(%WHAT%_DOCS_PREFIX)

%cc_%#
# %What% build
#%_cc%
ifndef %WHAT%_BUILD_HOME
%WHAT%_BUILD = $(HOME)/build
else
%WHAT%_BUILD = $(%WHAT%_BUILD_HOME)/build
endif
%WHAT%_PREFIX = $(%WHAT%_BUILD)/$(%WHAT%_INSTALL_NAME)
%WHAT%_EXEC_PREFIX = $(%WHAT%_PREFIX)
%WHAT%_CONF_PREFIX = $(%WHAT%_PREFIX)
%WHAT%_DOCS_PREFIX = $(%WHAT%_PREFIX)
%WHAT%_LINK_NAME = $(%WHAT%_BUILD)/$(%WHAT%_NAME_BASE)

%WHAT%_MKDIR = mkdir -p
%WHAT%_REMOVE = rm -r -f

%WHAT%_MAKE_DIR = $(%WHAT%_DIR)
%WHAT%_MAKE_PUSHD = pushd $(%WHAT%_MAKE_DIR)
%WHAT%_MAKE = make

%cc_%#
# %What% configure
#%_cc%
ifneq ($(%WHAT%_UNAME), Darwin)
%WHAT%_CONFIGURE_UNAME = 
else
%WHAT%_CONFIGURE_UNAME = 
endif
%WHAT%_CONFIGURE_CONFIGURE = ./configure
%WHAT%_CONFIGURE_HELP = $(%WHAT%_CONFIGURE_CONFIGURE) --help
%WHAT%_CONFIGURE_PUSHD = pushd $(%WHAT%_MAKE_DIR)
%WHAT%_CONFIGURE = $(%WHAT%_CONFIGURE_CONFIGURE) \
$(%WHAT%_CONFIGURE_UNAME) --prefix=$(%WHAT%_PREFIX) --exec_prefix=$(%WHAT%_EXEC_PREFIX)

%cc_%#
# %What% help
#%_cc%
%WHAT%_HELP = $(%WHAT%_CONFIGURE_HELP)

%cc_%########################################################################
#
# rules
#
########################################################################%_cc%

all: build

package: archive unextract

again: unextract build

test: test-%what%

install-links: install-%what%-links

install-docs: install-%what%-docs

install-prefix: install-%what%-prefix

install: install-%what%

build: build-%what%

clean: clean-%what%

configed: configed-$(%WHAT%_DIR)

config: config-$(%WHAT%_DIR)

help: help-%what%

list-docs: list-%what%-docs

list-patch: list-%what%-patch

extract-patch: extract-%what%-patch

list: list-%what%

extract: extract-%what%

unextract: unextract-%what%

archive: archive-%what%

linked: %what%-linked

prefixed: %what%-prefixed

archived: %what%-archived

extracted: %what%-extracted

%cc_%########################################################################
#
# %What% rules
#
########################################################################%_cc%

%cc_%#
# Help %What%
#%_cc%
help-%what%: $(%WHAT%_DIR)
	@($(%WHAT%_CONFIGURE_PUSHD);\
	  (($(%WHAT%_HELP)) || (exit 1));\
	  popd)

%cc_%#
# Install %What%
#%_cc%
install-%what%: configed-$(%WHAT%_DIR)
	@(echo Installing $(%WHAT%_DIR)...;\
	  $(%WHAT%_MAKE_PUSHD);\
	  (($(%WHAT%_MAKE) install) || (exit 1)) && \
	  ((touch $(%WHAT%_MAKEDIR)/configed-$(%WHAT%_DIR)) || (exit 1));\
	  popd)
	  
%cc_%#
# Build %What%
#%_cc%
build-%what%: configed-$(%WHAT%_DIR)
	@(echo Building $(%WHAT%_DIR)...;\
	  $(%WHAT%_MAKE_PUSHD);\
	  (($(%WHAT%_MAKE)) || (exit 1)) && \
	  ((touch $(%WHAT%_MAKEDIR)/configed-$(%WHAT%_DIR)) || (exit 1));\
	  popd)
	  
%cc_%#
# Clean %What%
#%_cc%
clean-%what%: configed-$(%WHAT%_DIR)
	@(echo Cleaning $(%WHAT%_DIR)...;\
	  $(%WHAT%_MAKE_PUSHD);\
	  (($(%WHAT%_MAKE) clean) || (exit 1)) && \
	  ((touch $(%WHAT%_MAKEDIR)/configed-$(%WHAT%_DIR)) || (exit 1));\
	  popd)
	  
%cc_%#
# Test %What%
#%_cc%
test-%what%: configed-$(%WHAT%_DIR)
	@(echo Building test $(%WHAT%_DIR)...;\
	  $(%WHAT%_MAKE_PUSHD);\
	  (($(%WHAT%_MAKE) test) || (exit 1)) && \
	  ((touch $(%WHAT%_MAKEDIR)/configed-$(%WHAT%_DIR)) || (exit 1));\
	  popd)
	  
%cc_%#
# Config %What%
#%_cc%
config-$(%WHAT%_DIR): unconfig-$(%WHAT%_DIR) configed-$(%WHAT%_DIR)

unconfig-$(%WHAT%_DIR):
	@(rm -f configed-$(%WHAT%_DIR))

configed-$(%WHAT%_DIR): $(%WHAT%_DIR)
	@(echo Configing $(%WHAT%_DIR)...;\
	  $(%WHAT%_CONFIGURE_PUSHD);\
	  (($(%WHAT%_CONFIGURE)) || (exit 1)) && \
	  ((touch $(%WHAT%_DIR)) || (exit 1)) && \
	  ((touch $(%WHAT%_MAKEDIR)/configed-$(%WHAT%_DIR)) || (exit 1));\
	  popd)

%cc_%########################################################################
# docs
########################################################################%_cc%

%cc_%#
# List %What% Docs
#%_cc%
list-%what%-docs: $(%WHAT%_DOCS_TGZ)
	@(echo Listing $(%WHAT%_DOCS_TGZ)...;\
	  (($(%WHAT%_LIST_DOCS_TGZ)) || (exit 1)))

%cc_%#
# Install %What% Docs
#%_cc%
install-%what%-docs: $(%WHAT%_DOCS_PREFIX)
	@(echo Extracting $(%WHAT%_DOCS_TGZ)...;\
	  (($(%WHAT%_EXTRACT_DOCS_TGZ)) || (exit 1)))

%cc_%########################################################################
# patch
########################################################################%_cc%

%cc_%#
# List %What% Patch
#%_cc%
list-%what%-patch: $(%WHAT%_PATCH_TGZ)
	@(echo Listing $(%WHAT%_PATCH_TGZ)...;\
	  (($(%WHAT%_LIST_PATCH_TGZ)) || (exit 1)))

%cc_%#
# Extract %What% patch
#%_cc%
extract-%what%-patch: $(%WHAT%_DIR)
	@(echo Extracting $(%WHAT%_PATCH_TGZ)...;\
	  (($(%WHAT%_EXTRACT_PATCH_TGZ)) || (exit 1)))

%cc_%########################################################################
# archive
########################################################################%_cc%

%cc_%#
# List %What%
#%_cc%
list-%what%: 
	@(echo Listing $(%WHAT%_TGZ)...;\
	  (($(%WHAT%_LIST_TGZ)) || (exit 1)))

%cc_%#
# %What% extracted
#%_cc%
%what%-extracted: 
	@(echo $(%WHAT%_EXTRACT) $(%WHAT%_TGZ))

%cc_%#
# Extract %What%
#%_cc%
extract-%what%: unextract-%what% $(%WHAT%_DIR)

unextract-%what%: unconfig-$(%WHAT%_DIR)
	@(echo Removing $(%WHAT%_DIR)...;\
	  (($(%WHAT%_REMOVE_DIR)) || (exit 1)))

$(%WHAT%_DIR): $(%WHAT%_TGZ)
	@(echo Extracting $(%WHAT%_TGZ)...;\
	  (($(%WHAT%_EXTRACT_TGZ)) || (exit 1)) && \
	  (($(%WHAT%_TOUCH_EXTRACT)) || (exit 1)))
	  
%cc_%#
# %What% archived
#%_cc%
%what%-archived: 
	@(echo $(%WHAT%_TGZ))
	  
%cc_%#
# Archive %What%
#%_cc%
archive-%what%: 
	@(echo Archiving $(%WHAT%_DIR) to $(%WHAT%_TGZ)...;\
	  (($(%WHAT%_ARCHIVE) $(%WHAT%_TGZ) $(%WHAT%_DIR)) || (exit 1)))

%cc_%########################################################################
# links
########################################################################%_cc%

%cc_%#
# %What% linked
#%_cc%
%what%-linked: 
	@echo link is $(%WHAT%_LINK_NAME) "->" $(%WHAT%_PREFIX)
	  
%cc_%#
# Install %What% links
#%_cc%
install-%what%-links: 
	@((echo removing $(%WHAT%_LINK_NAME)) && \
	  ((rm -f $(%WHAT%_LINK_NAME)) || (exit 1)) && \
	  (echo Linking $(%WHAT%_LINK_NAME) "->" $(%WHAT%_PREFIX)) && \
	  ((ln -s $(%WHAT%_PREFIX) $(%WHAT%_LINK_NAME)) || (exit 1)))
	  
%cc_%########################################################################
# prefix
########################################################################%_cc%

%cc_%#
# %What% prefixed
#%_cc%
%what%-prefixed: 
	@((echo prefix is $(%WHAT%_PREFIX)) && \
	  (echo exec prefix is $(%WHAT%_EXEC_PREFIX)) && \
	  (echo conf prefix is $(%WHAT%_CONF_PREFIX)) && \
	  (echo docs prefix is $(%WHAT%_DOCS_PREFIX)))
	  
%cc_%#
# Install %What% prefix
#%_cc%
install-%what%-prefix: 
	@((echo makeing $(%WHAT%_PREFIX)) && \
	  ((mkdir -p $(%WHAT%_PREFIX)) || (exit 1)) && \
	  (echo makeing $(%WHAT%_EXEC_PREFIX)) && \
	  ((mkdir -p $(%WHAT%_EXEC_PREFIX)) || (exit 1)))
	  
$(%WHAT%_PREFIX):
	@(echo Makeing Directory $(%WHAT%_PREFIX)...;\
	  (($(%WHAT%_MKDIR) $(%WHAT%_PREFIX)) || (exit 1)))

$(%WHAT%_EXEC_PREFIX):
	@(echo Makeing Directory $(%WHAT%_EXEC_PREFIX)...;\
	  (($(%WHAT%_MKDIR) $(%WHAT%_EXEC_PREFIX)) || (exit 1)))

$(%WHAT%_CONF_PREFIX):
	@(echo Makeing Directory $(%WHAT%_CONF_PREFIX)...;\
	  (($(%WHAT%_MKDIR) $(%WHAT%_CONF_PREFIX)) || (exit 1)))

$(%WHAT%_DOCS_PREFIX):
	@(echo Makeing Directory $(%WHAT%_DOCS_PREFIX)...;\
	  (($(%WHAT%_MKDIR) $(%WHAT%_DOCS_PREFIX)) || (exit 1)))

%
%)%)%
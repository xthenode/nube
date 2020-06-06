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
%#   File: httpd-conf.t
%#
%# Author: $author$
%#   Date: 12/1/2019
%########################################################################
%with(%
%include_path,%(%else-then(%include_path%,%(%filepath(%input%)%)%)%)%,%
%is_host,%(%else-then(%is_host%,%(%is_Host%)%)%)%,%
%host,%(%else-then(%if-no(%is_host%,,%(%host%)%)%,%(%if-no(%is_host%,,%(%else-then(%getenv(HOSTNAME)%,%(%else-then(%getenv(HTTPD_HOST)%,%($host$)%)%)%)%)%)%)%)%)%,%
%Host,%(%else-then(%if-no(%is_host%,,%(%Host%)%)%,%(%host%)%)%)%,%
%HOST,%(%else-then(%HOST%,%(%toupper(%Host%)%)%)%)%,%
%host,%(%else-then(%_Host%,%(%tolower(%Host%)%)%)%)%,%
%is_uname,%(%else-then(%is_uname%,%(%is_Uname%)%)%)%,%
%uname,%(%else-then(%if-no(%is_uname%,,%(%uname%)%)%,%(%if-no(%is_uname%,,%(%else-then(%getenv(UNAME)%,%(%else-then(%uname()%,%(Windows)%)%)%)%)%)%)%)%)%,%
%Uname,%(%else-then(%if-no(%is_uname%,,%(%Uname%)%)%,%(%uname%)%)%)%,%
%UNAME,%(%else-then(%UNAME%,%(%toupper(%Uname%)%)%)%)%,%
%uname,%(%else-then(%_Uname%,%(%tolower(%Uname%)%)%)%)%,%
%is_user,%(%else-then(%is_user%,%(%is_User%)%)%)%,%
%user,%(%else-then(%if-no(%is_user%,,%(%user%)%)%,%(%if-no(%is_user%,,%(%else-then(%getenv(USER)%,%(%else-then(%getenv(HTTPD_USER)%,%($user$)%)%)%)%)%)%)%)%)%,%
%User,%(%else-then(%if-no(%is_user%,,%(%User%)%)%,%(%user%)%)%)%,%
%USER,%(%else-then(%USER%,%(%toupper(%User%)%)%)%)%,%
%user,%(%else-then(%_User%,%(%tolower(%User%)%)%)%)%,%
%is_home,%(%else-then(%is_home%,%(%is_Home%)%)%)%,%
%home,%(%else-then(%if-no(%is_home%,,%(%home%)%)%,%(%if-no(%is_home%,,%(%else-then(%getenv(HOME)%,%(%else-then(%getenv(HTTPD_USER_HOME)%,%(%User%/home)%)%)%)%)%)%)%)%)%,%
%Home,%(%else-then(%if-no(%is_home%,,%(%Home%)%)%,%(%home%)%)%)%,%
%HOME,%(%else-then(%HOME%,%(%toupper(%Home%)%)%)%)%,%
%home,%(%else-then(%_Home%,%(%tolower(%Home%)%)%)%)%,%
%is_exe,%(%else-then(%is_exe%,%(%is_Exe%)%)%)%,%
%exe,%(%else-then(%if-no(%is_exe%,,%(%exe%)%)%,%(%if-no(%is_exe%,,%(%if(%equal(%Uname%,Windows)%,%(.exe)%)%)%)%)%)%)%,%
%Exe,%(%else-then(%if-no(%is_exe%,,%(%Exe%)%)%,%(%exe%)%)%)%,%
%EXE,%(%else-then(%EXE%,%(%toupper(%Exe%)%)%)%)%,%
%exe,%(%else-then(%_Exe%,%(%tolower(%Exe%)%)%)%)%,%
%is_servername,%(%else-then(%is_servername%,%(%is_ServerName%)%)%)%,%
%servername,%(%else-then(%if-no(%is_servername%,,%(%servername%)%)%,%(%if-no(%is_servername%,,%(%Host%-http-srver)%)%)%)%)%,%
%ServerName,%(%else-then(%if-no(%is_servername%,,%(%ServerName%)%)%,%(%servername%)%)%)%,%
%SERVERNAME,%(%else-then(%SERVERNAME%,%(%toupper(%ServerName%)%)%)%)%,%
%servername,%(%else-then(%_ServerName%,%(%tolower(%ServerName%)%)%)%)%,%
%%(%
%%include(%include_path%/httpd-conf-file.t)%%
%
ServerName %ServerName%
ServerAdmin %User%@%ServerName%

User %User%
Group %User%

#########################################################################
# Aliases 
# ... 
#########################################################################
<IfModule mod_alias.c>

#########################################################################
# Alias /home/ 
#########################################################################
Alias /home/ "%Home%/"
<Directory "%Home%/">
    Options Indexes MultiViews FollowSymLinks
    AllowOverride AuthConfig
    Order allow,deny
    Allow from all
</Directory>

#########################################################################
# Alias /source/ 
#########################################################################
Alias /source/ "%Home%/source/"
<Directory "%Home%/source/">
    Options Indexes MultiViews FollowSymLinks
    AllowOverride AuthConfig
    Order allow,deny
    Allow from all
</Directory>

#########################################################################
# ScriptAlias /build/
#########################################################################
ScriptAlias /build/ "%Home%/build/"
<Directory "%Home%/build/">
#    PassEnv LD_LIBRARY_PATH
#    PassEnv DYLD_LIBRARY_PATH
#   PassEnv HTTPD_HOST
#   PassEnv HTTPD_USER
#   PassEnv HTTPD_USER_HOME
    SetEnv HOST %Host%
    SetEnv USER %User%
    SetEnv HOME %Home%
    Options  FollowSymLinks
    AllowOverride AuthConfig
    Order allow,deny
    Allow from all
</Directory>

#########################################################################
# ScriptAlias /bin/
#########################################################################
ScriptAlias /bin/ "%Home%/bin/"
<Directory "%Home%/build/">
#    PassEnv LD_LIBRARY_PATH
#    PassEnv DYLD_LIBRARY_PATH
#   PassEnv HTTPD_HOST
#   PassEnv HTTPD_USER
#   PassEnv HTTPD_USER_HOME
    SetEnv HOST %Host%
    SetEnv USER %User%
    SetEnv HOME %Home%
    Options  FollowSymLinks
    AllowOverride AuthConfig
    Order allow,deny
    Allow from all
</Directory>

#########################################################################
# AddType
#########################################################################
AddType application/x-httpd-cxx .h
AddType application/x-httpd-cxx .c
AddType application/x-httpd-cxx .m
AddType application/x-httpd-cxx .H
AddType application/x-httpd-cxx .C
AddType application/x-httpd-cxx .M
AddType application/x-httpd-cxx .hh
AddType application/x-httpd-cxx .cc
AddType application/x-httpd-cxx .mm
AddType application/x-httpd-cxx .hpp
AddType application/x-httpd-cxx .cpp
AddType application/x-httpd-cxx .hxx
AddType application/x-httpd-cxx .cxx
AddType application/x-httpd-cxx .java

AddType application/x-httpd-t .t
AddType application/x-httpd-t .texta

AddType application/x-httpd-xsl .xsl
AddType application/x-httpd-xsl .xslt

#AddType application/x-httpd-vcproj .vcproj
#AddType application/x-httpd-vsprops .vsprops
#AddType application/x-httpd-vcxproj .vcproj
#AddType application/x-httpd-props .props
AddType text/plain .vcproj
AddType text/plain .vsprops
AddType text/plain .vcxproj
AddType text/plain .props

AddType text/plain .patch
AddType text/plain .sh
AddType text/plain .md5
AddType text/plain .sha
AddType text/plain .sha1
AddType text/plain .sha256
AddType text/plain .sha512

#########################################################################
# Action
#########################################################################
#Action application/x-httpd-cxx /xde-cgi/cxxlcgi
#Action application/x-httpd-cxx /xde-cgi/cgicatch
#Action application/x-httpd-cxx /xde-cgi/cgi

#Action application/x-httpd-t /xde-cgi/tcgi
#Action application/x-httpd-t /xde-cgi/cgicatch
#Action application/x-httpd-t /xde-cgi/cgi

#Action application/x-httpd-xsl /xde-cgi/xslcgi
#Action application/x-httpd-xsl /xde-cgi/cgicatch
#Action application/x-httpd-xsl /xde-cgi/cgi

</IfModule>
#########################################################################
# ... 
# Aliases 
#########################################################################

#########################################################################
# Autoindex 
# ... 
#########################################################################
<IfModule mod_autoindex.c>
    IndexOptions FancyIndexing FoldersFirst NameWidth=*
</IfModule>
#########################################################################
# ... 
# Autoindex 
#########################################################################

#########################################################################
# SSL
# ...
#########################################################################
<IfModule mod_ssl.c>
Listen 443
<VirtualHost *:443>
    ServerName %Host%-http-ssl-server
    SSLEngine on
    SSLProtocol TLSv1
    SSLCACertificateFile %Home%/ssl/localhost.resigned.cert
    SSLCertificateFile %Home%/ssl/localhost.resigned.cert
    SSLCertificateKeyFile %Home%/ssl/localhost.key.unsecure
#    SSLVerifyClient require
#    SSLVerifyDepth 1
#    ErrorLog logs/ssl_engine.log
#    LogLevel debug
</VirtualHost>
</IfModule>
#########################################################################
# ...
# SSL
#########################################################################
%
%)%)%
# Original work Copyright (c) 2017, Aaron Bishop
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without modification,
# are permitted provided that the following conditions are met:
# 
# Redistributions of source code must retain the above copyright notice, this
# list of conditions and the following disclaimer.
# 
# Redistributions in binary form must reproduce the above copyright notice, this
# list of conditions and the following disclaimer in the documentation and/or
# other materials provided with the distribution.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
# ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

set(PROJECT_VERSION "${SQLPP11_ODBC_VERSION_MAJOR}.${SQLPP11_ODBC_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")
set(PROJECT_VERSION_MAJOR "${SQLPP11_ODBC_VERSION_MAJOR}")
set(PROJECT_VERSION_MINOR "${SQLPP11_ODBC_VERSION_MAJOR}")
set(PROJECT_VERSION_PATCH "${SQLPP11_ODBC_VERSION_MAJOR}")

set(SQLPP11_ODBC_VERSION_INT "${SQLPP11_ODBC_VERSION_MAJOR}")

if(${SQLPP11_ODBC_VERSION_MINOR} LESS 10)
  set(SQLPP11_ODBC_VERSION_INT "${SQLPP11_ODBC_VERSION_INT}0${SQLPP11_ODBC_VERSION_MINOR}")
else()
  set(SQLPP11_ODBC_VERSION_INT "${SQLPP11_ODBC_VERSION_INT}${SQLPP11_ODBC_VERSION_MINOR}")
endif()

if(${SQLPP11_ODBC_VERSION_PATCH} LESS 10)
  set(SQLPP11_ODBC_VERSION_INT "${SQLPP11_ODBC_VERSION_INT}0${SQLPP11_ODBC_VERSION_PATCH}")
else()
  set(SQLPP11_ODBC_VERSION_INT "${SQLPP11_ODBC_VERSION_INT}${SQLPP11_ODBC_VERSION_PATCH}")
endif()

string(REGEX REPLACE "^0+" "" SQLPP11_ODBC_VERSION_INT "${SQLPP11_ODBC_VERSION_INT}")

set(SQLPP11_ODBC_VERSION "${PROJECT_VERSION}")

configure_file(version.h.in version.h @ONLY)
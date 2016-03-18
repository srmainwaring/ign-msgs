@set build_type=Release
@if not "%1"=="" set build_type=%1
@echo Configuring for build type %build_type%

@set PROTOBUF_PATH=%cd%\..\..\protobuf-2.6.0-win64-vc12
@set path=%path%;c:\ruby22-x64\bin

cmake -G "NMake Makefiles"^
  -DPROTOBUF_SRC_ROOT_FOLDER="%PROTOBUF_PATH%"^
  -DCMAKE_INSTALL_PREFIX="install\%build_type%"^
  -DCMAKE_BUILD_TYPE="%build_type%"^
  -DENABLE_TESTS_COMPILATION:BOOL=True ..

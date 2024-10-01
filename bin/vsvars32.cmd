@SET VSINSTALLDIR=C:\Program Files\Microsoft Visual Studio\2022\Community\
@SET VCINSTALLDIR=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\
@SET FrameworkDir=C:\WINDOWS\Microsoft.NET\Framework
@SET FrameworkVersion=v2.0.50727
@SET FrameworkSDKDir=C:\Program Files\Microsoft Visual Studio\2022\Community\SDK\v2.0
@if "%VSINSTALLDIR%"=="" goto error_no_VSINSTALLDIR
@if "%VCINSTALLDIR%"=="" goto error_no_VCINSTALLDIR

@echo Setting environment for using Microsoft Visual Studio 2005 x86 tools.

@rem
@rem Root of Visual Studio IDE installed files.
@rem
@set DevEnvDir=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE

@set PATH=C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\BIN;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools;C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools\bin;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\PlatformSDK\bin;C:\Program Files\Microsoft Visual Studio\2022\Community\SDK\v2.0\bin;C:\WINDOWS\Microsoft.NET\Framework\v2.0.50727;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\VCPackages;%PATH%
@set INCLUDE=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\ATLMFC\INCLUDE;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\INCLUDE;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\PlatformSDK\include;C:\Program Files\Microsoft Visual Studio\2022\Community\SDK\v2.0\include;%INCLUDE%
@set LIB=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\ATLMFC\LIB;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\LIB;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\PlatformSDK\lib;C:\Program Files\Microsoft Visual Studio\2022\Community\SDK\v2.0\lib;%LIB%
@set LIBPATH=C:\WINDOWS\Microsoft.NET\Framework\v2.0.50727;C:\Program Files\Microsoft Visual Studio\2022\Community\VC\ATLMFC\LIB

@goto end

:error_no_VSINSTALLDIR
@echo ERROR: VSINSTALLDIR variable is not set.
@goto end

:error_no_VCINSTALLDIR
@echo ERROR: VCINSTALLDIR variable is not set.
@goto end

:end
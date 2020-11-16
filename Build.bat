@echo off

set project_folder=%~dp0

echo Project directory: %projectFolder%
echo Build native assets

echo Building WebWindow.Native.dll (x64)
msbuild %project_folder%src\WebWindow.Native\WebWindow.Native.vcxproj /p:Configuration=release /p:Platform=x64
echo done!

echo Building WebWindow.Native.dll (x86)
msbuild %project_folder%src\WebWindow.Native\WebWindow.Native.vcxproj /p:Configuration=release /p:Platform=x86
echo done!

echo Build WebWindow Library

echo Building WebWindow.dll (x86)
echo Output directory: %publish_folder%\x86
dotnet publish %project_folder%\src\WebWindow\WebWindow.csproj -c Release /t:BuildNonWindowsNative -r win-x86 -p:Platform=Win32
echo done!

echo Building WebWindow.dll (x64)
echo Output directory: %publish_folder%\x64
dotnet publish %project_folder%\src\WebWindow\WebWindow.csproj -c Release /t:BuildNonWindowsNative -r win-x64 -p:Platform=x64
echo done!

echo Building WebWindow.dll (AnyCPU) - Nuget Reference Library
dotnet publish %project_folder%\src\WebWindow\WebWindow.csproj -c Release /t:BuildNonWindowsNative
echo done!

echo Preparing nuget package
dotnet pack %project_folder%\src\WebWindow\WebWindow.csproj -c Release /p:VersionPrefix=0.0.1 /p:VersionSuffix=a /p:NuspecFile=..\..\WebWindow.nuspec --no-build

echo Finished successfully!
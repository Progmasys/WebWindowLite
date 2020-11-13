# WebWindowLite

Originally a fork from [WebWindow](https://github.com/SteveSandersonMS/WebWindow)

# What's the difference?

WebWindowLite will mostly focus on Windows and Linux, the code for using it in macOS is still present but won't developed any further, at least for now.

# Tested 

Windows - WebView2 SDK 1.0.622.22:
 * Win 7  - x86/x64
 * Win 10 - x86/x64

 You need to have, preferably, the [Webview2 Runtime](https://developer.microsoft.com/en-us/microsoft-edge/webview2/) installed or Edge Beta/Canary

# How to build this repo

If you want to build the `WebWindowLite` library itself, you will need:

 * Windows or Linux
 * If you're on Windows:   	
   * Use Visual Studio with C++ support enabled. You *must* build in x64/x86 configuration (*not* AnyCPU, which is the default).
   * If things don't seem to be updating, try right-clicking one of the `test` projects and choose *Rebuild* to force it to rebuild the native assets.
 * If you're on Linux (tested with Ubuntu 18.04):
   * Install dependencies: `sudo apt-get update && sudo apt-get install libgtk-3-dev libwebkit2gtk-4.0-dev`
   * From the repo root, run `dotnet build src/WebWindow/WebWindow.csproj`
   * Then you can `cd test/HelloWorldApp` and `dotnet run`
 * If you're on Windows Subsystem for Linux (WSL), then as well as the above, you will need a local X server ([example setup](https://virtualizationreview.com/articles/2017/02/08/graphical-programs-on-windows-subsystem-on-linux.aspx)).



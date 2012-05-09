; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{1D28BFE6-D8BA-423B-B37E-149E732DDB49}
AppName=Ethanon Engine
AppVerName=Ethanon Engine 0.9.1
AppPublisher=ASANTEE
AppPublisherURL=http://www.asantee.net/ethanon/
AppSupportURL=http://www.asantee.net/ethanon/
AppUpdatesURL=http://www.asantee.net/ethanon/
DefaultDirName={pf}\Ethanon Engine
DefaultGroupName=Ethanon Engine
LicenseFile=MIT_LICENSE.rtf
InfoBeforeFile=About.rtf
;OutputDir=
OutputBaseFilename=setup_ethanonengine-0.9.1
SetupIconFile=icon.ico
Compression=lzma
SolidCompression=yes
AlwaysRestart=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "portuguese"; MessagesFile: "compiler:Languages\Portuguese.isl"

;[Components]
;Name: "scriptedit"; Description: "Main Files"; Types: full compact custom; Flags: fixed

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
;Name: associate; Description: "&Associate .angelscript files"; GroupDescription: "File Associations:"; Components: scriptedit

[Files]

;Editor
;Source: "..\Source\#bin#\Debug\editor.exe"; DestDir: "{app}\editor_d.exe"; Flags: ignoreversion
Source: "..\Source\#bin#\Release\editor.exe"; DestDir: "{app}"; Flags: ignoreversion

;Global resources
;Source: "..\Source\#bin#\Debug\machine.exe"; DestDir: "{app}\machine_d.exe"; Flags: ignoreversion
Source: "..\Source\#bin#\Release\machine.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\*"; DestDir: "{app}\data\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Ethanon Toolkit\effects\*"; DestDir: "{app}\effects\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Ethanon Toolkit\particles\*"; DestDir: "{app}\particles\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Ethanon Toolkit\entities\*"; DestDir: "{app}\entities\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Ethanon Toolkit\scenes\*"; DestDir: "{app}\scenes\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Ethanon Toolkit\soundfx\*"; DestDir: "{app}\soundfx\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Ethanon Toolkit\main.angelscript"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\eth_util.angelscript"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\app.enml"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\editor.enml"; DestDir: "{app}"; Flags: ignoreversion

;Documentation
Source: "..\..\documentation\User's Manual\*"; DestDir: "{app}\doc\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\readme.txt"; DestDir: "{app}"; Flags: ignoreversion

;Tools
Source: "..\Ethanon Toolkit\tools\SciTE\*"; DestDir: "{app}\SciTE\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\Ethanon Toolkit\tools\BMFont\*"; DestDir: "{app}\BMFont\"; Flags: ignoreversion recursesubdirs createallsubdirs

;DLLs
Source: "..\Source\#bin#\Release\audiere.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Source\src\gs2d\vendors\CgSDK\bin\cg.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Source\src\gs2d\vendors\CgSDK\bin\cgD3D9.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Source\src\gs2d\vendors\DX9SDK\bin\d3dx9_42.dll"; DestDir: "{app}"; Flags: ignoreversion
;Source: "..\Ethanon Editor\d3dx9_41.dll"; DestDir: "{app}"; Flags: ignoreversion

;Sample Project files
;shaders
Source: "..\Ethanon Toolkit\data\defaultVS.cg"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\particleVS.cg"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\dynaShadowVS.cg"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\hAmbientVS.cg"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\hVertexLightShader.cg"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\hPixelLightDiff.cg"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\hPixelLightSpec.cg"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\hPixelLightVS.cg"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\vAmbientVS.cg"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\vPixelLightSpec.cg"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\vPixelLightVS.cg"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\vPixelLightDiff.cg"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\vVertexLightShader.cg"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion

;bitmaps/fonts
Source: "..\Ethanon Toolkit\data\shadow.png"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\shadow.dds"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\default_nm.png"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana14_shadow.fnt"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana20.fnt"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana20_shadow.fnt"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana24.fnt"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana24_shadow.fnt"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana30.fnt"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana30_shadow.fnt"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana64.fnt"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana14_shadow_0.png"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana20_0.png"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana20_shadow.png"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana24_0.png"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana24_shadow.png"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana30_0.png"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana30_shadow.png"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana64_0.png"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana64_1.png"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana64_shadow.fnt"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana64_shadow_0.png"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion
Source: "..\Ethanon Toolkit\data\Verdana64_shadow_1.png"; DestDir: "{commondocs}\Ethanon\Sample Project\data\"; Flags: ignoreversion

;misc
Source: "..\Ethanon Toolkit\app.enml"; DestDir: "{commondocs}\Ethanon\Sample Project\"; Flags: ignoreversion
Source: "..\Source\#bin#\Release\machine.exe"; DestDir: "{commondocs}\Ethanon\Sample Project\"; Flags: ignoreversion
Source: "..\Source\#bin#\Release\audiere.dll"; DestDir: "{commondocs}\Ethanon\Sample Project\"; Flags: ignoreversion
Source: "..\Source\src\gs2d\vendors\CgSDK\bin\cg.dll"; DestDir: "{commondocs}\Ethanon\Sample Project\"; Flags: ignoreversion
Source: "..\Source\src\gs2d\vendors\CgSDK\bin\cgD3D9.dll"; DestDir: "{commondocs}\Ethanon\Sample Project\"; Flags: ignoreversion
Source: "..\Source\src\gs2d\vendors\DX9SDK\bin\d3dx9_42.dll"; DestDir: "{commondocs}\Ethanon\Sample Project\"; Flags: ignoreversion

;source
Source: "..\..\documentation\Sample Projects\Sample project\eth_util.angelscript"; DestDir: "{commondocs}\Ethanon\Sample Project\"; Flags: ignoreversion
Source: "..\..\documentation\Sample Projects\Sample project\Collide.angelscript"; DestDir: "{commondocs}\Ethanon\Sample Project\"; Flags: ignoreversion
Source: "..\..\documentation\Sample Projects\Sample project\main.angelscript"; DestDir: "{commondocs}\Ethanon\Sample Project\"; Flags: ignoreversion
Source: "..\..\documentation\Sample Projects\Sample project\sample.ethproj"; DestDir: "{commondocs}\Ethanon\Sample Project\"; Flags: ignoreversion

;folders
Source: "..\..\documentation\Sample Projects\Sample project\effects\*"; DestDir: "{commondocs}\Ethanon\Sample Project\effects\"; Flags: ignoreversion
Source: "..\..\documentation\Sample Projects\Sample project\entities\*"; DestDir: "{commondocs}\Ethanon\Sample Project\entities\"; Flags: ignoreversion
Source: "..\..\documentation\Sample Projects\Sample project\entities\normalmaps\*"; DestDir: "{commondocs}\Ethanon\Sample Project\entities\normalmaps\"; Flags: ignoreversion
Source: "..\..\documentation\Sample Projects\Sample project\particles\*"; DestDir: "{commondocs}\Ethanon\Sample Project\particles\"; Flags: ignoreversion
Source: "..\..\documentation\Sample Projects\Sample project\scenes\*"; DestDir: "{commondocs}\Ethanon\Sample Project\scenes\"; Flags: ignoreversion
Source: "..\..\documentation\Sample Projects\Sample project\soundfx\*"; DestDir: "{commondocs}\Ethanon\Sample Project\soundfx\"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKCR; Subkey: ".ethproj"; ValueType: string; ValueName: ""; ValueData: "EthanonProject"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "EthanonProject"; ValueType: string; ValueName: ""; ValueData: "Ethanon project file"; Flags: uninsdeletekey
Root: HKCR; Subkey: "EthanonProject\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\editor.exe,0"
Root: HKCR; Subkey: "EthanonProject\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\editor.exe"" ""%1"""

Root: HKCR; Subkey: ".angelscript"; ValueType: string; ValueName: ""; ValueData: "EthanonScript"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "EthanonScript"; ValueType: string; ValueName: ""; ValueData: "Ethanon script source file"; Flags: uninsdeletekey
Root: HKCR; Subkey: "EthanonScript\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\SciTE\SciTE.exe,0"
Root: HKCR; Subkey: "EthanonScript\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\SciTE\SciTE.exe"" ""%1"""

[Icons]
Name: "{group}\Ethanon Editor"; Filename: "{app}\editor.exe"
Name: "{group}\Ethanon Script Editor"; Filename: "{app}\SciTE\SciTE.exe"
Name: "{group}\AngelCode's BMFont\Bitmap font generator"; Filename: "{app}\BMFont\bmfont.exe"
Name: "{group}\AngelCode's BMFont\Help"; Filename: "{app}\BMFont\documentation.html"
Name: "{group}\AngelCode's BMFont\Browse"; Filename: "{app}\BMFont\"
Name: "{group}\AngelCode's BMFont\{cm:ProgramOnTheWeb,AngelCode}"; Filename: "http://www.angelcode.com/"
Name: "{group}\{cm:ProgramOnTheWeb,Ethanon Engine}"; Filename: "http://www.asantee.net/ethanon/"
Name: "{group}\{cm:UninstallProgram,Ethanon Engine}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Ethanon Editor"; Filename: "{app}\editor.exe"; Tasks: desktopicon
Name: "{commondesktop}\Ethanon Script Editor"; Filename: "{app}\SciTE\SciTE.exe"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Ethanon Editor"; Filename: "{app}\editor.exe"; Tasks: quicklaunchicon
Name: "{group}\User's Manual"; Filename: "{app}\doc\index.htm"
Name: "{group}\Source-code"; Filename: "https://sourceforge.net/projects/ethanon/develop"
Name: "{group}\Browse Ethanon Engine"; Filename: "{app}"
Name: "{group}\Sample project"; Filename: "{commondocs}\Ethanon\Sample Project\"

[Run]
Filename: "{app}\editor.exe"; Description: "{cm:LaunchProgram,Ethanon Engine}"; Flags: nowait postinstall skipifsilent
Filename: "{app}\readme.txt"; Description: "View readme.txt"; Flags: postinstall shellexec
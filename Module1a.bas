Attribute VB_Name = "Module1"
Public Declare Function SetWindowPos& Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long)
Public Declare Function GetCurrentProcessId Lib "kernel32" () As Long
Public Declare Function RegisterServiceProcess Lib "kernel32" (ByVal dwProcessID As Long, ByVal dwType As Long) As Long
Public Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, lpvParam As Any, ByVal fuWinIni As Long) As Long
Public Declare Function ExitWindowsEx Lib "user32" (ByVal uFlags As Long, ByVal dwReserved As Long) As Long

'SetWindowPos FrmMain.hwnd, -1, 0, 0, 0, 0, 3    'if -1 then sets window always ontop, if -2 then set windows to normal
'RegisterServiceProcess GetCurrentProcessId, 1 'if 1 then removes from ctrl-alt-del menu, if False then it shows in...
'SystemParametersInfo 97, True, False, 0       'if True then disable ctrl-alt-del menu, if False then Enable...
'ExitWindowsEx 1, 0                            'Shuts down your computer (1 = Shutdown, 2 = Reboot


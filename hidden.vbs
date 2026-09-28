Do
    Set objWMIService = GetObject("winmgmts:{impersonationLevel=impersonate}!\\.\root\cimv2")
    Set colProcesses = objWMIService.ExecQuery("Select * from Win32_Process Where Name = 'xmrig.exe'")
    
    If colProcesses.Count = 0 Then
        Set objShell = CreateObject("WScript.Shell")
        ' Change the path below to the exact folder where your xmrig.exe is stored
        objShell.CurrentDirectory = "C:\Users\User2\Documents\xmrig-6.26.0"
        objShell.Run "xmrig.exe", 0, False
    End If
    
    ' Wait for 5000 milliseconds (5 seconds) before checking again
    WScript.Sleep 5000 
Loop

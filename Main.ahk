
; Main.ahk - The main script for the AutoHotkey productivity application.

; Debugging with MsgBox
MsgBox, About to include Apps.ahk
#Include Apps.ahk

; Debugging with MsgBox
MsgBox, About to include Dates.ahk
#Include Dates.ahk

; Debugging with MsgBox
MsgBox, About to include Logger.ahk
#Include Logger.ahk

; Debugging with MsgBox
MsgBox, Initializing the GUI

; Initialize the GUI
Gui, Add, Tab,, Applications|Dates|Settings|Logs
Gui, Tab, 1

; Applications Tab
Gui, Add, Text,, Application Name:
Gui, Add, Edit, vAppName
Gui, Add, Text,, File Path:
Gui, Add, Edit, vFilePath
Gui, Add, Button, gRunApps, Run

; Dates Tab
Gui, Tab, 2
Gui, Add, Text,, Date (YYYY-MM-DD):
Gui, Add, Edit, vDate
Gui, Add, Button, gRunDates, Run

; Settings Tab
Gui, Tab, 3
Gui, Add, Checkbox, vAutoStart, Auto-Start
Gui, Add, Checkbox, vEnableLogging, Enable Logging

; Logs Tab
Gui, Tab, 4
Gui, Add, Edit, vLogs ReadOnly
Gui, Add, Button, gRunLogger, Run

; Debugging with MsgBox
MsgBox, About to Show the GUI

; Show the GUI
Gui, Show, w400 h300, AutoHotkey Productivity App

; GUI Event Handling
GuiClose:
ExitApp

; Run Applications Script
RunApps:
RunAppsFunc()
return

; Run Dates Script
RunDates:
RunDatesFunc()
return

; Run Logger Script
RunLogger:
RunLoggerFunc()
return

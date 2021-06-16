@echo off 

powershell -Command "& {Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::InputBox('Enter file directory:', 'Input box example')}" > %TEMP%\out.tmp
set /p OUT=<%TEMP%\out.tmp

cd %OUT%

powershell -Command "& {Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::InputBox('Enter file directory and name:', 'Input box example')}" > %TEMP%\out.tmp
set /p OUT=<%TEMP%\out.tmp
madoko -v ""%OUT%""

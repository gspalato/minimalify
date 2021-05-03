
:: Use this script to create batches of meters with a numeric pattern.

@echo off
cls
title Batch Meters

:userCheck
if "%username%"=="Cyber" (
	goto start
) else (
	echo.
	echo This script was used for quick and easy duplication of meters during the development of this skin. 
	echo.
	echo It appears that you aren't Cyber, so there's really no point in running this.
	echo.
	echo If you still want to run the script, press a key.
	echo Otherwise, you may close this window.
	pause > nul
	goto start
)

:start
echo.
echo Creating meters...
echo If you see any text after this, check the code.

echo. > temp.txt

set temp=4
set temp2=5
set temp3=2
set temp4=3
:loop
(
	echo [PickerOptionText%temp%]
	echo Meter=String
	echo Group=master ^| picker
	echo Text=PlayerName
	echo X=^(220*#scale#^)
	echo Y=^([PickerOptionText%temp3%:Y]+[PickerOptionText%temp3%:H]+^(20*#scale#^)^)
	echo W=^(120*#scale#^)
	echo FontFace=#font#
	echo FontSize=^(10*#scale#^)
	echo FontColor=bbbbbb
	echo StringAlign=CenterTop
	echo AntiAlias=1
	echo ClipString=2
	echo DynamicVariables=1
	echo Hidden=1
	echo.
	echo [PickerButton%temp%]
	echo Meter=Shape
	echo Group=master ^| picker
	echo Container=SettingsContainer
	echo Shape=Rectangle ^(155*#scale#^),^([PickerOptionText%temp%:Y]-^(6*#scale#^)^),^(130*#scale#^),^([PickerOptionText%temp%:H]+^(11*#scale#^)^),^(3*#scale#^),^(3*#scale#^) ^| Fill Color #PickerButton%temp%C# ^| StrokeWidth 0
	echo MouseActionCursor=0
	echo MouseOverAction=[!SetVariable #CURRENTSECTION#C "404040"][!Update]
	echo MouseLeaveAction=[!SetVariable #CURRENTSECTION#C "222326"][!Update]
	echo LeftMouseUpAction=[]
	echo DynamicVariables=1
	echo Hidden=1
	echo.
	echo [PickerOptionText%temp2%]
	echo Meter=String
	echo Group=master ^| picker
	echo Text=PlayerName
	echo X=^(80*#scale#^)
	echo Y=^([PickerOptionText%temp4%:Y]+[PickerOptionText%temp4%:H]+^(20*#scale#^)^)
	echo W=^(120*#scale#^)
	echo FontFace=#font#
	echo FontSize=^(10*#scale#^)
	echo FontColor=bbbbbb
	echo StringAlign=CenterTop
	echo AntiAlias=1
	echo ClipString=2
	echo DynamicVariables=1
	echo Hidden=1
	echo.
	echo [PickerButton%temp2%]
	echo Meter=Shape
	echo Group=master ^| picker
	echo Container=SettingsContainer
	echo Shape=Rectangle ^(15*#scale#^),^([PickerOptionText%temp2%:Y]-^(6*#scale#^)^),^(130*#scale#^),^([PickerOptionText%temp2%:H]+^(11*#scale#^)^),^(3*#scale#^),^(3*#scale#^) ^| Fill Color #PickerButton%temp2%C# ^| StrokeWidth 0
	echo MouseActionCursor=0
	echo MouseOverAction=[!SetVariable #CURRENTSECTION#C "404040"][!Update]
	echo MouseLeaveAction=[!SetVariable #CURRENTSECTION#C "222326"][!Update]
	echo LeftMouseUpAction=[]
	echo DynamicVariables=1
	echo Hidden=1
	echo.
) >> temp.txt

set /a temp+=2
set /a temp2+=2
set /a temp3+=2
set /a temp4+=2
if %temp%==18 goto end
goto loop

:end
echo.
pause
exit
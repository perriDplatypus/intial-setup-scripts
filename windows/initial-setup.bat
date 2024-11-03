@echo OFF

REM This is a program to perform an initial setup and bulk install my preffered apps

set NLM=^

set NL=^^^%NLM%%NLM%^%NLM%%NLM%

echo %NL%Welcome to the Bulk Initial Setup Script%NL%%NL%%NL%

set /p install=Install all the software packages? [y/n]:

if %install% == "y" do (
    echo %NL%%NL%Installing all packages%NL%

    echo Installing Notepad++
    winget install --id=Notepad++.Notepad++  -e

    echo ---------------------------------------------------------------------
    REM DEVELOPER SOFTWARE
    echo %NL%Installing Developer Environment

    echo %NL%%NL%Installing Firefox Developer Edition
    winget install --id=Mozilla.Firefox.DeveloperEdition  -e

    echo %NL%%NL%Installing Git
    winget install --id=Git.Git  -e

    echo %NL%%NL%Installing Visual Studio Code
    winget install --id=Microsoft.VisualStudioCode  -e
)


set /p game=Install all the gaming packages? [y/n]:

if %game% == "y" do (
    echo %NL%%NL%%NL%---------------------------------------------------------------------

    REM GAMING SOFTWARE
    if exist E:\Launchers\ (
        echo Launchers directory in E:\ already exists
    ) else (
        echo Creating Launchers directory in E:\
        MKDIR E:\Launchers
    )

    echo %NL%Installing Gaming Software

    echo %NL%%NL%Installing Steam
    winget install --id=Valve.Steam  -e --location "E:\Launchers\"

    echo %NL%%NL%Installing Epic Games
    winget install --id=EpicGames.EpicGamesLauncher  -e --location "E:\Launchers\"

    echo %NL%%NL%Installing Ubisoft Connect
    winget install --id=Ubisoft.Connect  -e --location "E:\Launchers\"

    echo %NL%%NL%Installing EA Launcher
    winget install --id=ElectronicArts.EADesktop  -e --location "E:\Launchers\"

    echo %NL%%NL%Installing Discord
    winget install --id=Discord.Discord  -e
)

echo %NL%%NL%%NL%---------------------------------------------------------------------
echo:
set /p wslInstall=Install WSL? [y/n]:

if %wslInstall% == "y" do (
    echo %NL%%NL%Installing WSL
    REM wsl --install
)

echo.
pause
REM cls
@echo off
setlocal

if "%1" == "--help" (
echo Usage: pyenv --version
echo.
echo Displays the version number of this pyenv release, including the
echo current revision from git, if available.
echo.
echo The format of the git revision is:
echo   ^<major_version^>-^<minor_version^>-^<num_commits^>
echo where `num_commits` is the number of commits since `minor_version` was
echo tagged.
echo.
EXIT /B
)

IF "%PYENV%" == "" (
    set /p version="1.2.2"
    echo PYENV variable is not set, recommended to set the variable.
) ELSE (
    set /p version=<%PYENV%/../.version
)
echo pyenv %version%

:: done..!

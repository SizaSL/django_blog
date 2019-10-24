REM Install Chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

REM Install VirtualBox
choco install -y virtualbox

REM Install Vagrant
choco install -y vagrant

REM Install Visualstudio Code
choco install -y vscode
code --install-extension vscode-icons-team.vscode-icons
code --install-extension bbenoist.vagrant

REM Change to local directory
cd %~dp0

REM Setup env
C:\HashiCorp\Vagrant\bin\vagrant up
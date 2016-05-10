::The reason to copy the BoxStarterGist.txt file to a temp directory is that sometimes when Boxstarter reboots, the vagrant synced folder for Virtualbox ::is not mounted until after Boxstarter tries to continue executing the bat file, so it then fails.
copy "%systemdrive%\vagrant\shell\BoxStarterGist.txt" "%temp%\BoxStarterGist.txt"
::BOXSTARTERSHELL
::@powershell -NoProfile -ExecutionPolicy Bypass -Command "Import-Module Boxstarter.Chocolatey"
powershell -NoProfile -ExecutionPolicy Bypass -Command "%systemdrive%\vagrant\shell\RunBoxStarterGist.ps1"
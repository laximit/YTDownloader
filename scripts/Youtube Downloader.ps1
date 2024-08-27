Add-Type -AssemblyName System.Windows.Forms
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

# Imports
Import-Module "E:\03 - Programs\YTDownloader\scripts\commands\functions.ps1"
Import-Module "E:\03 - Programs\YTDownloader\scripts\commands\variables.ps1"

Import-Module "E:\03 - Programs\YTDownloader\scripts\components\buttons.ps1"
Import-Module "E:\03 - Programs\YTDownloader\scripts\components\folderPicker.ps1"
Import-Module "E:\03 - Programs\YTDownloader\scripts\components\label.ps1"
Import-Module "E:\03 - Programs\YTDownloader\scripts\components\textBox.ps1"

# Form Window
$form = New-Object System.Windows.Forms.Form
$form.Text = "Youtube Downloader"
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$form.Icon = $windowIcon
$form.Size = New-Object System.Drawing.Size(550, 205)
$form.BackColor = [System.Drawing.ColorTranslator]::FromHtml($formColorBG)

# Add Components
$form.Controls.Add($label)
$form.Controls.Add($textBox)
$form.Controls.Add($folderTextBox)
$form.Controls.Add($buttonFolder)
$form.Controls.Add($buttonMP4)
$form.Controls.Add($buttonMP3)
$form.Controls.Add($buttonWAV)

# Start Form
$form.ShowDialog()
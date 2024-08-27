Add-Type -AssemblyName System.Windows.Forms
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

$folderTextBox = New-Object System.Windows.Forms.TextBox
$folderTextBox.Location = New-Object System.Drawing.Point(47, 70)
$folderTextBox.Size = New-Object System.Drawing.Size(478, 20)
$folderTextBox.BackColor = $textBoxColorBG
$folderTextBox.BorderStyle = 'FixedSingle'
$folderTextBox.ReadOnly = $true
$folderTextBox.Enabled = $false

$buttonFolder = New-Object System.Windows.Forms.Button
$buttonFolder.Image = $folderIcon
$buttonFolder.Location = New-Object System.Drawing.Point(10, 70)
$buttonFolder.Size = New-Object System.Drawing.Size(30, 23)
$buttonFolder.Font = New-Object System.Drawing.Font("JetBrainsMono Nerd Font", 9)
$buttonFolder.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$buttonFolder.FlatAppearance.BorderSize = 0
$buttonFolder.BackColor = [System.Drawing.ColorTranslator]::FromHtml($buttonColorBG)
$buttonFolder.ForeColor = [System.Drawing.ColorTranslator]::FromHtml($buttonColorFG)
$buttonFolder.Add_Click({ 
    FolderChoose
    $folderTextBox.Text = $Global:chosenFolder
})
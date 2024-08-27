Add-Type -AssemblyName System.Windows.Forms
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
        
$textBox = New-Object System.Windows.Forms.TextBox
$textBox.Location = New-Object System.Drawing.Point(10, 40)
$textBox.Size = New-Object System.Drawing.Size(515, 20)
$textBox.TextAlign = "Center"
$textBox.BorderStyle = 'FixedSingle'
$textBox.BackColor = $textBoxColorBG
$textBox.Height = 50
Add-Type -AssemblyName System.Windows.Forms
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

# MP4 Button
$buttonMP4 = New-Object System.Windows.Forms.Button
$buttonMP4.Text = "MP4"
$buttonMP4.Location = New-Object System.Drawing.Point(10, 100)
$buttonMP4.Size = New-Object System.Drawing.Size(165, 55)
$buttonMP4.Font = New-Object System.Drawing.Font("Super Mario Bros. NES", 16)
$buttonMP4.BackColor = [System.Drawing.ColorTranslator]::FromHtml($buttonColorBG)
$buttonMP4.ForeColor = [System.Drawing.ColorTranslator]::FromHtml($buttonColorFG)
$buttonMP4.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$buttonMP4.FlatAppearance.BorderSize = 0
$buttonMP4.Add_Click({ ExportMP4 })

# MP3 Button
$buttonMP3 = New-Object System.Windows.Forms.Button
$buttonMP3.Text = "MP3"
$buttonMP3.Location = New-Object System.Drawing.Point(185, 100)
$buttonMP3.Size = New-Object System.Drawing.Size(165, 55)
$buttonMP3.Font = New-Object System.Drawing.Font("Super Mario Bros. NES", 16)
$buttonMP3.BackColor = [System.Drawing.ColorTranslator]::FromHtml($buttonColorBG)
$buttonMP3.ForeColor = [System.Drawing.ColorTranslator]::FromHtml($buttonColorFG)
$buttonMP3.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$buttonMP3.FlatAppearance.BorderSize = 0
$buttonMP3.Add_Click({ ExportMP3 })

# WAV Button
$buttonWAV = New-Object System.Windows.Forms.Button
$buttonWAV.Text = "WAV"
$buttonWAV.Location = New-Object System.Drawing.Point(360, 100)
$buttonWAV.Size = New-Object System.Drawing.Size(165, 55)
$buttonWAV.Font = New-Object System.Drawing.Font("Super Mario Bros. NES", 16)
$buttonWAV.BackColor = [System.Drawing.ColorTranslator]::FromHtml($buttonColorBG)
$buttonWAV.ForeColor = [System.Drawing.ColorTranslator]::FromHtml($buttonColorFG)
$buttonWAV.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$buttonWAV.FlatAppearance.BorderSize = 0
$buttonWAV.Add_Click({ ExportWAV })
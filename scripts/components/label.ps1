Add-Type -AssemblyName System.Windows.Forms
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

$label = New-Object -TypeName System.Windows.Forms.Label
$label.Text = "Youtube Downloader"
$label.Location = New-Object System.Drawing.Point(0, 0)
$label.Size = New-Object System.Drawing.Size(550, 30)
$label.Font = New-Object System.Drawing.Font("Super Mario Bros. NES", 11)
$label.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$label.BackColor = [System.Drawing.ColorTranslator]::FromHtml($labelColorBG)
$label.ForeColor = [System.Drawing.ColorTranslator]::FromHtml($labelColorFG)
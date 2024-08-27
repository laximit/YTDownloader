Add-Type -AssemblyName System.Windows.Forms
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

function FolderChoose {
    $fileBrowser = New-Object System.Windows.Forms.FolderBrowserDialog
	$fileBrowser.ShowDialog()
    $Global:chosenFolder = $fileBrowser.SelectedPath
	return $Global:chosenFolder
}

function ExportMP4 {
    $Global:videoLink = $textBox.Text
    & ./yt-dlp.exe "$Global:videoLink" -P $Global:chosenFolder -S res,ext:mp4:m4a --recode mp4
}

function ExportMP3 {
    $Global:videoLink = $textBox.Text
    & ./yt-dlp.exe "$Global:videoLink" -f ba --extract-audio --audio-format mp3 -P $Global:chosenFolder
}

function ExportWAV {
    $Global:videoLink = $textBox.Text
    & ./yt-dlp.exe "$Global:videoLink" -f ba --extract-audio --audio-format wav -P $Global:chosenFolder
}
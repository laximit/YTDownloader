Add-Type -AssemblyName System.Windows.Forms
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")

# Global
$Global:chosenFolder = ""
$Global:videoLink = ""

# Local
$windowIcon = [System.Drawing.Icon]::ExtractAssociatedIcon("./img/ytico.ico")
$folderIcon = [System.Drawing.Image]::FromFile("./img/folder2.png")

# Colors
## Form
$formColorBG = "#24273A"

## Label
$labelColorBG = "#1e2030"
$labelColorFG = "#FFFFFF"

## TextBox
$textBoxColorBG = "#A5ADCB"

## Buttons
$buttonColorBG = "#5B6078"
$buttonColorFG = "#CAD3F5"
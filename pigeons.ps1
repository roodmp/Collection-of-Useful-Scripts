###::: This script prompts for data inputs and then calculates whether sending your data via carrier pigeon would be faster than sending it via the internet
###::: ask what bandwidth you have in mbps
$bandwidth = Read-Host -Prompt 'What is your bandwidth in mbps?'
###::: ask how much data there is in GB
$dataload = Read-Host -Prompt 'How much data do you wish to transfer in GB?'
###::: how many KM the data will travel
$distance = Read-Host -Prompt 'How many KM must the data travel?'
###::: convert roughly to megabits
$dataloadmbits = ($dataload / 0.0001)
$Pigeonspeed = [math]::round($distance / 80,2)
$pigeoncount = [math]::ceiling($dataload / 96)
$datatransfer = [math]::round(($dataloadmbits / $bandwidth) / 3600,2)
Clear-Host 
"`n"
Write-Host -NoNewline 'It will take '; Write-Host -NoNewline $pigeoncount -f magenta; Write-Host -NoNewline ' pigeon(s) '; Write-Host -NoNewline $pigeonspeed -f magenta; Write-Host -NoNewline ' hours to carry your data.';
"`n"
Write-Host -NoNewline 'Compared to '; Write-Host -NoNewline $datatransfer -f magenta;  Write-Host -NoNewline ' hours on your bandwidth.';
"`n"
Read-Host -Prompt 'Press Enter to exit' 
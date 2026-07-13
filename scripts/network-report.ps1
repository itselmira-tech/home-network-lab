$reportPath = ".\reports\network-report.txt"

"=========================" | Out-File $reportPath
"HOME NETWORK REPORT" | Out-File $reportPath -Append
"=========================" | Out-File $reportPath -Append

"" | Out-File $reportPath -Append

"Computer Name:" | Out-File $reportPath -Append
$env:COMPUTERNAME | Out-File $reportPath -Append

"" | Out-File $reportPath -Append

"Date:" | Out-File $reportPath -Append
(Get-Date) | Out-File $reportPath -Append

"" | Out-File $reportPath -Append

"Network Information:" | Out-File $reportPath -Append

ipconfig | Out-File $reportPath -Append

Write-Host "Network report created successfully!"
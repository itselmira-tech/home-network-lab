
$reportPath = ".\reports\network-report.txt"
$HtmlPath = ".\reports\network-report.html"

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
$HTML = @"
<!DOCTYPE html>
<html>

<head>
<title>Home Network Report</title>

<style>

body {
    font-family: Arial, sans-serif;
    margin: 40px;
    background-color: #f4f4f4;
}

.container {
    background: white;
    padding: 25px;
    border-radius: 10px;
}

h1 {
    text-align: center;
}

h2 {
    margin-top: 25px;
}

table {
    width: 100%;
    border-collapse: collapse;
}

td {
    border: 1px solid #ddd;
    padding: 10px;
}

.header {
    font-weight: bold;
}

pre {
    background: #eeeeee;
    padding: 15px;
    border-radius: 5px;
}

.footer {
    margin-top: 30px;
    font-size: 12px;
}

</style>

</head>


<body>

<div class="container">

<h1>Home Network Report</h1>

<h2>System Information</h2>

<table>

<tr>
<td class="header">Computer Name</td>
<td>$env:COMPUTERNAME</td>
</tr>

<tr>
<td class="header">Report Date</td>
<td>$(Get-Date)</td>
</tr>

</table>


<h2>Network Configuration</h2>

<pre>
$(ipconfig)
</pre>


<h2>DNS Configuration</h2>

<pre>
$(Get-DnsClientServerAddress | Out-String)
</pre>


<h2>Project Information</h2>

<table>

<tr>
<td class="header">Project</td>
<td>Home Network Lab</td>
</tr>

<tr>
<td class="header">Tools</td>
<td>Windows PowerShell, Git, GitHub, VS Code</td>
</tr>

<tr>
<td class="header">Purpose</td>
<td>Network documentation and automation</td>
</tr>

</table>


<div class="footer">
Generated automatically by PowerShell Network Report Script
</div>


</div>

</body>

</html>
"@

$HTML | Out-File $HtmlPath -Encoding UTF8

Write-Host "Network report created successfully!"

"" | Out-File $ReportPath -Append

"Subnet Mask:" | Out-File $ReportPath -Append
(ipconfig | Select-String "Subnet Mask") | Out-File $ReportPath -Append

"" | Out-File $ReportPath -Append

"" | Out-File $ReportPath -Append

"DNS Servers:" | Out-File $ReportPath -Append

Get-DnsClientServerAddress |
Where-Object {$_.ServerAddresses} |
ForEach-Object {
    $_.ServerAddresses
} | Out-File $ReportPath -Append
$scriptBlock = New-ScriptBlock {
    (New-Object System.Net.WebClient).DownloadFile($using:remoteUrl, $using:localPath)
}
Invoke-Command -ScriptBlock $scriptBlock

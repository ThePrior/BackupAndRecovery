cd $PSScriptRoot

$timeStamp = (Get-Date).ToString("yyyy-MM-dd")
$scriptName = $MyInvocation.MyCommand.Name
Start-Transcript -Path ".\$scriptName-$($timeStamp).log" -Append

.\StartTimerServiceOnAllServers.ps1

.\ResumeSearch.ps1

.\SetSiteCollectionLockStatus.ps1 -lockState Unlock

Stop-Transcript
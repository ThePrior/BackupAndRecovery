cd $PSScriptRoot

$timeStamp = (Get-Date).ToString("yyyy-MM-dd")
$scriptName = $MyInvocation.MyCommand.Name
Start-Transcript -Path ".\$scriptName-$($timeStamp).log" -Append

.\SetSiteCollectionLockStatus.ps1 -lockState ReadOnly

.\PauseSearch.ps1

.\StopTimerServiceOnAllServers.ps1

Stop-Transcript
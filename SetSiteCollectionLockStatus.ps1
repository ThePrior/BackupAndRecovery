Param(

[parameter(Mandatory=$true)]
 [string]$lockState

)

Write-Host "Setting all site collections to $lockState"

#Get All Site Collections of a web app
Get-SPWebApplication | Get-SPSite -limit all | foreach { 
    Set-SPSite $_ -LockState $lockState 
}

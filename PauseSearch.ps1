$ssas = Get-SPEnterpriseSearchServiceApplication

foreach($ssa in $ssas){
    Write-Host -ForegroundColor Yellow "Pausing the Search Service Application: $($ssa.DisplayName)"
    Write-Host  -ForegroundColor Yellow  '    This could take a few minutes...'
    Suspend-SPEnterpriseSearchServiceApplication -Identity $ssa | Out-Null
}
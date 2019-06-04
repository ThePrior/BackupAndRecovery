$ssas = Get-SPEnterpriseSearchServiceApplication

foreach($ssa in $ssas){
    Write-Host -ForegroundColor Yellow "Resuming the Search Service Application: $($ssa.DisplayName)"
    Write-Host  -ForegroundColor Yellow  '    This could take a few minutes...'
    Resume-SPEnterpriseSearchServiceApplication -Identity $ssa | Out-Null
}
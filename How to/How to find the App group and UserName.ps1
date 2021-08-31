$upn = "upn@domain.com"
$tenants = (Get-RdsTenant).TenantName
foreach($tenant in $tenants)
{
    $hostPools = (Get-RdsHostPool -TenantName $tenant).HostPoolName
    foreach($hostPool in $hostPools)
    {
       $appgroups = (Get-RdsAppGroup -TenantName $tenant -HostPoolName $hostPool).AppGroupName

       foreach($appgroup in $appgroups)
       {
        Get-RdsAppGroupUser -TenantName $tenant -HostPoolName $hostPool -AppGroupName $appgroup -UserPrincipalName $upn -ErrorAction SilentlyContinue
       }
    }
}

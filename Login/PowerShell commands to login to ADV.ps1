# In this section we will be adding a required module and for AVD.

#Install & Import RD - Azure AD Module

Install-Module -Name AzureAD
Import-Module -Name AzureAD 

#Install & Import RD - AVD Module

Install-Module -Name Microsoft.RDInfra.RDPowerShell
Import-Module -Name Microsoft.RDInfra.RDPowerShell

 # Login with Azure AD Account
Add-RdsAccount -DeploymentUrl https://rdbroker.wvd.microsoft.com

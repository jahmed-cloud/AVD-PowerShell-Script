tracert -4 40.83.75.1 | Out-File "$($env:USERPROFILE)\Desktop\$fileName\Network.txt" 
tracert -4 104.211.89.1 | Out-File "$($env:USERPROFILE)\Desktop\$fileName\Network.txt" -Append 
tracert -4 104.40.248.1 | Out-File "$($env:USERPROFILE)\Desktop\$fileName\Network.txt" -Append 
tracert -4 rdweb.wvd.microsoft.com | Out-File "$($env:USERPROFILE)\Desktop\$fileName\Network.txt" -Append 
nslookup rdweb.wvd.microsoft.com | Out-File "$($env:USERPROFILE)\Desktop\$fileName\Network.txt" -Append  

$servers = get-spserver | ?{$_.role -ne "Invalid" }
foreach ($server in $servers){
	$servername = $server.Address
	write-host "START Timer Service on server $servername" -fore yellow
	(Get-WmiObject Win32_Service -filter "name='SPTimerV4'" -ComputerName $servername).startservice() | Out-Null
}
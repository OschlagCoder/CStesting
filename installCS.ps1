Set-ExecutionPolicy bypass
cmd.exe /c "mkdir C:\temp\"

Invoke-WebRequest -Uri 'https://drive.google.com/u/0/uc?id=1Ulo1RsLQPwVVDphaUeUTF7MTWGZOXk4f&export=download&confirm=t&uuid=a2f5b480-f3e4-48dc-ac2d-dfe67d6ef48e&at=ACjLJWnYc_lVHuuraIqBwxA-weLV:1673980987336' -OutFile 'c:\temp\Crowdstrike.zip'
Expand-Archive -Force C:\temp\Crowdstrike.zip C:\temp\Crowdstrike

$cmd = "C:\temp\Crowdstrike\Crowdstrike\WindowsSensor.exe"
$parms = '/install /quiet /norestart CID=8E847A7B8235431CA480A6F348584DD2-67 GROUPING_TAGS="OWL,PRODUCTION"'
$prm = $parms.Split()

& "$cmd" $prm
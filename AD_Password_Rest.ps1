#AD Password Reset
#$ value needs to be filled in as well as the Dirctory Path

$ = get-aduser -filter * -searchbase "OU-,DC=,DC=" -SearchScope subtree | Select-Object -ExpandProperty name
foreach($s in $s){
Set-ADAccountPassword -Identity $mac -password -newpassword -NewPassword ( $ | ConvertTo-SecureString -AsPlainText -Force ) -reset
}

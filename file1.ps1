param([string]$resourcegroup)
$resourcegroup = read-host "enter resource group name"
$admincredential=get-credential -message "enter username and password"
for($i=1;$i -le 3; $i++)
{
   $vmname="demo"+$i
   write-host "creating vm" $vmname
   new-azvm -resourcegroupname $resourcegroup -name $vmname -credential $admincredential
}
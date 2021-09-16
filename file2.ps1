for($i=1;$i -le 3; $i++)
{
$vmname="demo"+$i
$resourcegroup="success"
remove-azvm -resourcegroup $resourcegroup -name $vmname
remove-azdisk -resourcegroup $resourcegroup -name $vmname
remove-aznetworkinterface -resourcegroup $resourcegroup -name $vmname
remove-azvirtualnetwork -resourcegroup $resourcegroup -name $vmname
remove-aznetworksecuritygroup -resourcegroup $resourcegroup -name $vmname
remove-azpublicipaddress -resourcegroup $resourcegroup -name $vmname
}
//  Role-Based Access Control

// identify name of AAD tenant
 DOMAINNAME=$(az ad signed-in-user show --query 'userPrincipalName' | cut -d '@' -f 2 | sed 's/\"//')

// create a user
 az ad user create --display-name "<>" --password "<>" --user-principal-name <>@$DOMAINNAME
 
 // list AAD user accounts
 az ad user list --output table
 
 // create a security group
 az ad group create --display-name "<>" --mail-nickname "<>"

// obtain reference to the user
 USER=$(az ad user list --filter "<>'")
 
// obtain objectID property of the user
 USER=$(az ad user list --filter "displayname eq '<>'")
 
// add user account to the group
az ad group member add --group "<>" --member-id $OBJECTID
  
  
// list group members
az ad group member list --group "<>"

// clean up resources
Remove-AzResourceGroup -Name "<>" -Force -AsJob

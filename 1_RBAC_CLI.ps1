//  Role-Based Access Control

//CREATE USER

// create password profile object
 $passwordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
  $passwordProfile.Password = "<>"
  
 // connect to AAD
 Connect-AzureAD
 
 // identify AAD tenant
  $domainName = ((Get-AzureAdTenantDetail).VerifiedDomains)[0].Name

//create user account
 New-AzureADUser -DisplayName '<>' -PasswordProfile $passwordProfile -UserPrincipalName "<>" -AccountEnabled $true -MailNickName '<>'
 
 // list Azure users
 Get-AzureADUser
 
 //CREATE SECURITY GROUP
 
 // create new security group
  New-AzureADGroup -DisplayName '<>' -MailEnabled $false -SecurityEnabled $true -MailNickName <>
  
  // list groups in AAD tenant
   Get-AzureADGroup
   
   // obtain reference to the user account
    $user = Get-AzureADUser -Filter "MailNickName eq '<>'"
    
    // add user account to security group
     Add-AzADGroupMember -MemberUserPrincipalName $user.userPrincipalName -TargetGroupDisplayName "<>" 
     
     // verify that group contains user
      Get-AzADGroupMember -GroupDisplayName "<>"
      
      
    

 
 
 


 

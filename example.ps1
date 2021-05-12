$collection = @()
$users = (Get-ADGroupMember 'Domain Users').SamAccountName
Foreach($user in $users){
    $object = get-aduser $user -properties Description
    $collection += $object | Select-Object -Property GivenName, Surname, SamAccountName, Description
}
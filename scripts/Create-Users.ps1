# Bulk-create Active Directory users from a CSV file
# CSV must have columns: FirstName, LastName, Department, Username

$csvPath = "C:\Scripts\Users.csv"
$defaultPassword = ConvertTo-SecureString "P@ssw0rd123" -AsPlainText -Force

$users = Import-Csv -Path $csvPath

foreach ($user in $users) {
    $ou = "OU=$($user.Department),DC=mylab,DC=local"
    $upn = "$($user.Username)@mylab.local"
    $displayName = "$($user.FirstName) $($user.LastName)"

    New-ADUser `
        -Name $displayName `
        -GivenName $user.FirstName `
        -Surname $user.LastName `
        -SamAccountName $user.Username `
        -UserPrincipalName $upn `
        -Path $ou `
        -AccountPassword $defaultPassword `
        -Enabled $true `
        -ChangePasswordAtLogon $false

    Write-Host "Created user: $displayName in $ou"
}

Write-Host "All users created successfully!"
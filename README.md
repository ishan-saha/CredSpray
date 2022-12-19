# CredSpray
A powershell based tool for credential spraying in any AD env.

Lets say you doing your own thing and stuff... then you think i dont want to load my tools or kali but i want to spray some creds....
you open powershell with `powershell -ep bypass` then you load this script using Import-Module or however 
then you just call the `spray -pass <password_to_spray> -wordlist <absolute_path_to_ids>`
and boom! you get some pwned users.

do note that your id wordlist should be only one id per line!!! 
Happy hacking!!


Also if youre wondering how to find these IDs to spray on, here you go:
1. `net users /domain` (do some cleaning)
2.  `Get-WmiObject -Class win32_useraccount | select Name` 

ideally these should not be flagged but if they are your problem !!! XD

$Folders = @('contextmenu','custom','navigationpane', 'propertiestab', 'thispc')
$ExcludeFolder = "exclude"

$j = 0
for($j=0 ; $j -lt $Folders.Length; $j++) {
    $Files = @(Get-ChildItem -Name $Folders[$j] -Exclude $ExcludeFolder)
    $i = 0
    Write-Output $Folders[$j]"`n"
    for($i=0 ; $i -lt $Files.Length; $i++) {
        $Exec = '.\'+$Folders[$j]+'\'+$Files[$i]
        # regedit /s $Exec
        Write-Output $Files[$i]"`n"
    }
}

Read-Host -Prompt "Press any key to continue"

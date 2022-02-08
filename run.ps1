$FolderPath = "regfiles"
$ExcludeFolder = "exclude"

$array = @(Get-ChildItem -Name $FolderPath -Exclude $ExcludeFolder)

$i = 0
for($i=0 ; $i -lt $array.Length; $i++) {
    $Exec = '.\'+$FolderPath+'\'+$array[$i]
    regedit /s $Exec
}

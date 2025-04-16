$badcommits = '.','added file xyz','.','.','.','.','.','.','added new file','added new files','deleted file','testing a thing','Fixed stuff','Update' ,'Bug fixes' ,'Changes' ,'WIP' ,'asdf','Try this'
$x = 50
# loop thorugh x and create a file with a random commit message
while($x -gt 0){
    $x--
    $commit =   $badcommits | Get-Random
    $filename = '{0}{1}.txt' -f ($commit -replace '.','summat'), $x
    New-Item -Name $filename -ItemType file
    git add .
    git commit -m $commit
}
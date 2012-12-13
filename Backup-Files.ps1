$files =
(
    "\\pc-kharper\c$\Users\kharper\.ssh",
    "\\pc-kharper\c$\Users\kharper\vimfiles",
    "\\pc-kharper\c$\Users\kharper\.vimrc",
    "\\pc-kharper\c$\Temp\Test",
    "\\pc-kharper\c$\Temp\FIDAC Tools"
)

$backupDir = "\\nyprodfs01\profiles$\kharper\Backup"

if (!(Test-Path $backupDir))
{
    mkdir $backupDir
}

foreach ($file in $files)
{
    cp -Force -Recurse $file $backupDir
}

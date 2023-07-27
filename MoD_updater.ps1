function Uncompress-ZipFiles {
    param (
        [string]$path
    )
    $zipFiles = Get-ChildItem -Path $path -Filter "*.zip" -Recurse
    foreach ($zipFile in $zipFiles) {
        $zipFileName = $zipFile.FullName
        $outputPath = Join-Path -Path $zipFile.Directory.FullName -ChildPath ($zipFile.BaseName + "_Extracted")

        Write-Host "Uncompressing $zipFileName to $outputPath ..."
        try {
            Expand-Archive -Path $zipFileName -DestinationPath $outputPath -Force
            Remove-Item $zipFileName -Force
            Write-Host "Successfully uncompressed and removed $zipFileName" 6>> Logs\Update_log.txt
        } catch {
            Write-Host "Failed to uncompress $zipFileName $_" 6>> Logs\Update_log.txt
        }
    }
}

function Modify-FileDates {
    param (
        [string]$path
    )
    $wdFiles = Get-ChildItem -Path $path -Filter "*.wd" -Recurse
    $currentDateTime = Get-Date
    foreach ($wdFile in $wdFiles) {
        Write-Host "Modifying date of $wdFile ..."
        try {
            Set-ItemProperty -Path $wdFile.FullName -Name LastWriteTime -Value $currentDateTime
            Write-Host "Successfully modified date of $wdFile" 6>> Logs\Update_log.txt
        } catch {
            Write-Host "Failed to modify date of $wdFile $_" 6>> Logs\Update_log.txt
        }
    }
}

function Compress-IndividualArchives {
    param (
        [string]$path
    )
    $extractedDirectories = Get-ChildItem -Path $path -Directory -Recurse -Filter "*_Extracted"
    foreach ($directory in $extractedDirectories) {
        $newDirectoryName = $directory.Name -replace "_Extracted", "" # Remove "_Extracted" from the folder name
        $zipFileName = Join-Path -Path $directory.Parent.FullName -ChildPath ($newDirectoryName + ".zip")
        Write-Host "Compressing $directory back to $zipFileName ..."
        try {
            $files = Get-ChildItem -Path $directory.FullName
            Compress-Archive -Path @($files.FullName) -DestinationPath $zipFileName -Force
            Remove-Item $directory.FullName -Recurse -Force
            Write-Host "Successfully compressed $directory and removed it" 6>> Logs\Update_log.txt
        } catch {
            Write-Host "Failed to compress $directory $_" 6>> Logs\Update_log.txt
        }
    }
}


# Add Seperator to Log
Write-Host "========================" 6>> Logs\Update_log.txt

# Start Log
Write-Host "Start Updates at $(Get-Date)" 6>> Logs\Update_log.txt

# Define the location you want to start the scanning and modification
$targetLocation = $PWD

# Step 1: Uncompress .zip files
Uncompress-ZipFiles -path $targetLocation

# Step 2: Modify the date of .wd files to the present date/time
Modify-FileDates -path $targetLocation

# Step 3: Recompress previously extracted files into individual archives
Compress-IndividualArchives -path $targetLocation

# Finish Log
Write-Host "Finished Updates at $(Get-Date)" 6>> Logs\Update_log.txt

# Add Seperator to Log
Write-Host "========================" 6>> Logs\Update_log.txt
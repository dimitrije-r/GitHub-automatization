# (Redundant) backup case for missing path
if (!(Test-Path -Path $filePath -PathType Directory)) {
    New-Item -ItemType Directory -Path $filePath -Force
}

$repoDir = "C:\Users\Korisnik\Documents\GitHub\GitHub-automatization"
$commitMessage = "Automatic commit from Windows Task Scheduler"

# Text file generation
$dateTime = Get-Date -Format "MM/dd/yyyy"
$filePath = Join-Path $repoDir "text_files\$dateTime.txt"

# Creating the empty text file
New-Item -ItemType File -Path $filePath -Force

# Navigating to the repository directory
Set-Location -Path $repoDir

# Checking for uncommitted changes
$changes = git status --porcelain
if ($changes) {
    # Add all the uncommitted changes, then commit, and push
    git add .
    git commit -m $commitMessage
    git push -u origin main
}
else {
    Write-Host "No changes to commit."
}

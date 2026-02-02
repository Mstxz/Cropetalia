param(
    [string]$Message
)

if (-not $Message) {
    Write-Host "❌ Commit message is required."
    Write-Host "Usage: .\gcp.ps1 'your commit message'"
    exit 1
}

git add .
git commit -m "$Message"
git push

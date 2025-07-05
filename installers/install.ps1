# --- Configuration ---
# This configuration should match your GitHub repository and release details.
$GitHubUser = "Angel250511"
$GitHubRepo = "D-lang"
$D_Version = "v1.0" # This must match the tag of your published release.

# --- Build Download URL ---
$Platform = "windows"
$Architecture = "x64"
$FileName = "d-lang-sdk-$D_Version-$Platform-$Architecture.zip"
$DownloadUrl = "https://github.com/$GitHubUser/$GitHubRepo/releases/download/$D_Version/$FileName"
$InstallDir = "$env:USERPROFILE\.dlang"

# --- Installation Process ---
Write-Host "Welcome to the 'd' language installer for Windows!" -ForegroundColor Yellow
Write-Host "The SDK will be installed at: $InstallDir"

# Create installation directory if it doesn't exist
if (-not (Test-Path $InstallDir)) {
    New-Item -ItemType Directory -Force -Path $InstallDir
}

$ZipOutputPath = "$InstallDir\d.zip"

Write-Host "Downloading the 'd' SDK from $DownloadUrl..."
try {
    # Use Invoke-WebRequest for the download
    Invoke-WebRequest -Uri $DownloadUrl -OutFile $ZipOutputPath -ErrorAction Stop
} catch {
    Write-Host "ERROR: Failed to download the file from the URL:" -ForegroundColor Red
    Write-Host $DownloadUrl -ForegroundColor Red
    Write-Host "Please check that the release version '$D_Version' and URL are correct on GitHub Releases." -ForegroundColor Red
    exit 1
}

Write-Host "Extracting files..."
Expand-Archive -Path $ZipOutputPath -DestinationPath $InstallDir -Force
Remove-Item $ZipOutputPath

# --- Configure the PATH environment variable permanently for the current user ---
Write-Host "Configuring the PATH environment variable..."
$BinDir = "$InstallDir\bin"
$CurrentUserPath = [System.Environment]::GetEnvironmentVariable("Path", "User")

# Add our bin directory to the PATH if it's not already there
if (-not $CurrentUserPath.Contains($BinDir)) {
    $NewPath = $CurrentUserPath + ";" + $BinDir
    [System.Environment]::SetEnvironmentVariable("Path", $NewPath, "User")
}

# --- Final Message ---
Write-Host ""
Write-Host "'d' language has been installed successfully!" -ForegroundColor Green
Write-Host "To start using it, please close and re-open your terminal."
Write-Host "Then, verify the installation with the command: d --version"
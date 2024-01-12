# Prompt user for project name
$projectName = Read-Host "Enter the project name: "

# Use the current working directory as the root directory
$rootDir = Get-Location
$projectDir = Join-Path -Path $rootDir -ChildPath $projectName

# Create project directory
New-Item -Path $projectDir -ItemType Directory

# Create index.html in the project root directory
$indexHtmlPath = Join-Path -Path $projectDir -ChildPath "index.html"
New-Item -Path $indexHtmlPath -ItemType File

# Create css and js directories
$cssDir = Join-Path -Path $projectDir -ChildPath "css"
$jsDir = Join-Path -Path $projectDir -ChildPath "js"
New-Item -Path $cssDir -ItemType Directory
New-Item -Path $jsDir -ItemType Directory

# Create style.css in the css directory
$styleCssPath = Join-Path -Path $cssDir -ChildPath "style.css"
New-Item -Path $styleCssPath -ItemType File

# Create script.js in the js directory
$scriptJsPath = Join-Path -Path $jsDir -ChildPath "script.js"
New-Item -Path $scriptJsPath -ItemType File

# Display a success message
Write-Host "<>Script is done, happy coding</>"



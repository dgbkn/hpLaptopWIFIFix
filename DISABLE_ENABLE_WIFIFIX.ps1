# Function to print colorized log messages
function Write-ColorLog {
    param(
        [string]$message,
        [string]$color = "White"
    )
    Write-Host $message -ForegroundColor $color
}

# Disable Wi-Fi adapter
Write-ColorLog "Disabling Wi-Fi adapter..." -Color "Yellow"
Disable-NetAdapter -Name "Wi-Fi" -Confirm:$false

# Wait for a few seconds (you can adjust this delay if needed)
Start-Sleep -Seconds 5

# Enable Wi-Fi adapter
Write-ColorLog "Enabling Wi-Fi adapter..." -Color "Green"
Enable-NetAdapter -Name "Wi-Fi"

Write-ColorLog "Wi-Fi adapter has been disabled and enabled successfully." -Color "Cyan"

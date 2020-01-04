# Input bindings are passed in via param block.
param($Timer)


# The 'IsPastDue' porperty is 'true' when the current function invocation is later than scheduled.
if ($Timer.IsPastDue) {
    Write-Host "PowerShell timer is running late!"
}

& "$PSScriptRoot\PostLinks.ps1" -pinboardUser $env:pinboardUser -emailFrom $env:emailFrom -emailTo $env:emailTo
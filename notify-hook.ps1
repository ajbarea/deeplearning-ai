param([string]$JsonInput)
$n = $JsonInput | ConvertFrom-Json
Add-Type -AssemblyName System.Windows.Forms
$notify = New-Object System.Windows.Forms.NotifyIcon
$notify.Icon = [System.Drawing.SystemIcons]::Information
$notify.BalloonTipTitle = "Claude Code"
$notify.BalloonTipText = $n.message
$notify.Visible = $true
$notify.ShowBalloonTip(3000)
Start-Sleep 1
$notify.Dispose()
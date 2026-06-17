param(
  [string]$ProjectPath = "C:\Users\hp\Desktop\CODING\Flutter\Flutter\Phase 2_Flutter_Fundamentals\hello_flutter",
  [string]$AvdName = "Pixel_7"
)

$ErrorActionPreference = "Stop"

$SdkRoot = Join-Path $env:LOCALAPPDATA "Android\sdk"
$EmulatorExe = Join-Path $SdkRoot "emulator\emulator.exe"
$AdbExe = Join-Path $SdkRoot "platform-tools\adb.exe"

if (!(Test-Path $EmulatorExe)) { throw "emulator.exe not found at $EmulatorExe" }
if (!(Test-Path $AdbExe)) { throw "adb.exe not found at $AdbExe" }
if (!(Test-Path $ProjectPath)) { throw "Project path not found: $ProjectPath" }

Write-Host "Stopping old emulator processes..." -ForegroundColor Cyan
Get-Process qemu-system-x86_64, emulator -ErrorAction SilentlyContinue | Stop-Process -Force

& $AdbExe kill-server | Out-Null
& $AdbExe start-server | Out-Null

Write-Host "Launching AVD '$AvdName' in stable mode..." -ForegroundColor Cyan
Start-Process -FilePath $EmulatorExe -ArgumentList "-avd $AvdName -gpu swiftshader_indirect -no-snapshot-load -no-boot-anim"

Write-Host "Waiting for emulator device..." -ForegroundColor Yellow
$deviceId = $null
for ($i = 0; $i -lt 90; $i++) {
  Start-Sleep -Seconds 2
  $lines = (& $AdbExe devices) -split "`r?`n"
  $line = $lines | Where-Object { $_ -match "^emulator-\d+\s+device$" } | Select-Object -First 1
  if ($line) {
    $deviceId = ($line -split "\s+")[0]
    break
  }
}
if (-not $deviceId) { throw "Emulator did not come online in time." }

Write-Host "Device online: $deviceId. Waiting for Android boot..." -ForegroundColor Yellow
for ($i = 0; $i -lt 120; $i++) {
  $boot = (& $AdbExe -s $deviceId shell getprop sys.boot_completed 2>$null).Trim()
  if ($boot -eq "1") { break }
  Start-Sleep -Seconds 2
}
if ($boot -ne "1") { throw "Android boot did not complete in time." }

Set-Location $ProjectPath
Write-Host "Running Flutter app on $deviceId..." -ForegroundColor Green
flutter clean
flutter pub get
flutter run -d $deviceId
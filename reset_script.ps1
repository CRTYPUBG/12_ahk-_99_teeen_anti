Write-Host "[!] FPS ayarları geri alınıyor..." -ForegroundColor Yellow

# Game DVR Ayarlarını Eski Haline Getir
reg delete "HKCU\System\GameConfigStore" /v GameDVR_Enabled /f
reg delete "HKCU\System\GameConfigStore" /v GameDVR_FSEBehaviorMode /f
reg delete "HKCU\System\GameConfigStore" /v GameDVR_FSEBehavior /f

# Xbox Game Bar Ayarlarını Sıfırla
reg delete "HKCU\SOFTWARE\Microsoft\GameBar" /v AllowAutoGameMode /f
reg delete "HKCU\SOFTWARE\Microsoft\GameBar" /v AutoGameModeEnabled /f

# GPU Planlayıcıyı Kapat
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 1 /f

# Windows Animasyonları Aç
reg add "HKCU\Control Panel\Desktop\WindowMetrics" /v MinAnimate /t REG_SZ /d 1 /f

# GameLoop UITips Ayarlarını Temizle
reg delete "HKCU\Software\Tencent\MobileGamePC\UITips" /v disable_all_tips /f
reg delete "HKCU\Software\Tencent\MobileGamePC\UITips" /v fps_tip_disabled /f
reg delete "HKCU\Software\Tencent\MobileGamePC\UITips" /v gpu_tip_disabled /f
reg delete "HKCU\Software\Tencent\MobileGamePC\UITips" /v memory_tip_disabled /f
reg delete "HKCU\Software\Tencent\MobileGamePC\UITips" /v performance_mode_tip_disabled /f
reg delete "HKCU\Software\Tencent\MobileGamePC\UITips" /v engine_tip_disabled /f
reg delete "HKCU\Software\Tencent\MobileGamePC\UITips" /v optimize_tip_disabled /f
reg delete "HKCU\Software\Tencent\MobileGamePC\UITips" /v DoNotShowAgain /f

Write-Host "[✓] Ayarlar başarıyla sıfırlandı." -ForegroundColor Green
Pause

::#region Mount Images
DISM /Mount-Image /ImageFile:"C:\TMP\install.wim" /index:6 /mountdir:"C:\Mount\Windows"
DISM /Mount-Image /ImageFile:"C:\Mount\Windows\Windows\System32\Recovery\Winre.wim" /Index:1 /MountDir:"C:\Mount\WinRE"
::#endregion
::#region Add FoD English (Package name changes)
DISM /Add-Package /Image:C:\Mount\Windows /PackagePath:"C:\TMP\LanguageFeaturePacks\amd64\Microsoft-Windows-LanguageFeatures-Basic-en-us-Package~31bf3856ad364e35~amd64~~.cab"
DISM /Add-Package /Image:C:\Mount\Windows /PackagePath:"C:\TMP\LanguageFeaturePacks\amd64\Microsoft-Windows-LanguageFeatures-OCR-en-us-Package~31bf3856ad364e35~amd64~~.cab" 
DISM /Add-Package /Image:C:\Mount\Windows /PackagePath:"C:\TMP\LanguageFeaturePacks\amd64\Microsoft-Windows-LanguageFeatures-Handwriting-en-us-Package~31bf3856ad364e35~amd64~~.cab" 
DISM /Add-Package /Image:C:\Mount\Windows /PackagePath:"C:\TMP\LanguageFeaturePacks\amd64\Microsoft-Windows-LanguageFeatures-TextToSpeech-en-us-Package~31bf3856ad364e35~amd64~~.cab" 
DISM /Add-Package /Image:C:\Mount\Windows /PackagePath:"C:\TMP\LanguageFeaturePacks\amd64\Microsoft-Windows-LanguageFeatures-Speech-en-us-Package~31bf3856ad364e35~amd64~~.cab" 
DISM /Add-Package /Image:C:\Mount\Windows /packagepath:"C:\TMP\LanguageFeaturePacks\amd64\Microsoft-Windows-RetailDemo-OfflineContent-Content-en-us-Package~31bf3856ad364e35~amd64~~.cab"
::#endregion
::#region Add FoD Japanese (Package name changes)
DISM /Add-Package /Image:C:\Mount\Windows /PackagePath:"C:\TMP\LanguagePacks\x64\langpacks\Microsoft-Windows-Client-Language-Pack_x64_ja-jp.cab" 
DISM /Add-Package /Image:C:\Mount\Windows /PackagePath:"C:\TMP\LanguageFeaturePacks\amd64\Microsoft-Windows-LanguageFeatures-Basic-ja-jp-Package~31bf3856ad364e35~amd64~~.cab" 
DISM /Add-Package /Image:C:\Mount\Windows /PackagePath:"C:\TMP\LanguageFeaturePacks\amd64\Microsoft-Windows-LanguageFeatures-OCR-ja-jp-Package~31bf3856ad364e35~amd64~~.cab" 
DISM /Add-Package /Image:C:\Mount\Windows /PackagePath:"C:\TMP\LanguageFeaturePacks\amd64\Microsoft-Windows-LanguageFeatures-Handwriting-ja-jp-Package~31bf3856ad364e35~amd64~~.cab" 
DISM /Add-Package /Image:C:\Mount\Windows /PackagePath:"C:\TMP\LanguageFeaturePacks\amd64\Microsoft-Windows-LanguageFeatures-TextToSpeech-ja-jp-Package~31bf3856ad364e35~amd64~~.cab" 
DISM /Add-Package /Image:C:\Mount\Windows /PackagePath:"C:\TMP\LanguageFeaturePacks\amd64\Microsoft-Windows-LanguageFeatures-Speech-ja-jp-Package~31bf3856ad364e35~amd64~~.cab" 
DISM /Add-Package /Image:C:\Mount\Windows /packagepath:"C:\TMP\LanguageFeaturePacks\amd64\Microsoft-Windows-RetailDemo-OfflineContent-Content-ja-jp-Package~31bf3856ad364e35~amd64~~.cab"
::#endregion
::#region Add Languages for Recovery - Japanese (No changes)
DISM /Image:C:\Mount\WinRE /Add-Package /PackagePath:"C:\TMP\LanguagePacks\Windows Preinstallation Environment\x64\WinPE_OCs\ja-jp\lp.cab"
DISM /Image:C:\Mount\WinRE /Add-Package /PackagePath:"C:\TMP\LanguagePacks\Windows Preinstallation Environment\x64\WinPE_OCs\ja-jp\WinPE-Rejuv_ja-jp.cab"
DISM /Image:C:\Mount\WinRE /Add-Package /PackagePath:"C:\TMP\LanguagePacks\Windows Preinstallation Environment\x64\WinPE_OCs\ja-jp\WinPE-EnhancedStorage_ja-jp.cab"
DISM /Image:C:\Mount\WinRE /Add-Package /PackagePath:"C:\TMP\LanguagePacks\Windows Preinstallation Environment\x64\WinPE_OCs\ja-jp\WinPE-Scripting_ja-jp.cab"
DISM /Image:C:\Mount\WinRE /Add-Package /PackagePath:"C:\TMP\LanguagePacks\Windows Preinstallation Environment\x64\WinPE_OCs\ja-jp\WinPE-SecureStartup_ja-jp.cab" 
DISM /Image:C:\Mount\WinRE /Add-Package /PackagePath:"C:\TMP\LanguagePacks\Windows Preinstallation Environment\x64\WinPE_OCs\ja-jp\WinPE-SRT_ja-jp.cab" 
DISM /Image:C:\Mount\WinRE /Add-Package /PackagePath:"C:\TMP\LanguagePacks\Windows Preinstallation Environment\x64\WinPE_OCs\ja-jp\WinPE-WDS-Tools_ja-jp.cab" 
DISM /Image:C:\Mount\WinRE /Add-Package /PackagePath:"C:\TMP\LanguagePacks\Windows Preinstallation Environment\x64\WinPE_OCs\ja-jp\WinPE-WMI_ja-jp.cab" 
DISM /Image:C:\Mount\WinRE /Add-Package /PackagePath:"C:\TMP\LanguagePacks\Windows Preinstallation Environment\x64\WinPE_OCs\ja-jp\WinPE-StorageWMI_ja-jp.cab" 
DISM /Image:C:\Mount\WinRE /Add-Package /PackagePath:"C:\TMP\LanguagePacks\Windows Preinstallation Environment\x64\WinPE_OCs\ja-jp\WinPE-HTA_ja-jp.cab"
::#endregion
::#region Set Language Defaults (No changes)
REM DISM /Image:C:\Mount\Windows /Set-AllIntl:en-us
REM DISM /Image:C:\Mount\WinRE /Set-AllIntl:en-us
DISM /Image:C:\Mount\Windows /Set-AllIntl:ja-jp
DISM /Image:C:\Mount\WinRE /Set-AllIntl:ja-jp
DISM /Image:C:\Mount\WinRE /Get-Intl
DISM /Image:C:\Mount\Windows /Set-TimeZone:"Tokyo Standard Time"
REM DISM /Image:C:\Mount\Windows /Set-TimeZone:"Hawaiian Standard Time"
REM DISM /Image:C:\Mount\Windows /Set-TimeZone:"Pacific Standard Time"
::#endregion
::#region Configure Recovery & StartLayout
MD C:\Mount\Windows\Recovery\OEM
MD C:\Mount\Windows\Recovery\Customizations
REM Copy C:\TMP\Apps.ppkg C:\Mount\Windows\Recovery\Customizations\
XCopy C:\TMP\Recovery C:\Mount\Windows\Recovery\OEM
XCopy C:\TMP\layoutmodification.xml C:\Mount\Windows\Recovery\OEM\
XCopy C:\TMP\layoutmodification.xml C:\Mount\Windows\Users\Default\AppData\Local\Microsoft\Windows\Shell\
::#endregion
::#region Updates (No changes)
REM DISM /Add-Package /Image:C:\Mount\Windows /PackagePath:"C:\TMP\Updates\windows10.0-kb.msu"
REM DISM /Add-Package /Image:C:\Mount\WinRE /PackagePath:"C:\TMP\Updates\windows10.0-kb.msu"
::#endregion
::#region Office Offline Installation
DISM /Image:C:\Mount\Windows /Add-ProvisionedAppxPackage /PackagePath="C:\TMP\Office\shared.PreinstallKit\shared.appxbundle" /OptionalPackagePath="C:\TMP\Office\excel.PreinstallKit\excel.appxbundle" /OptionalPackagePath="C:\TMP\Office\powerpoint.PreinstallKit\powerpoint.appxbundle" /OptionalPackagePath="C:\TMP\Office\word.PreinstallKit\word.appxbundle" /OptionalPackagePath="C:\TMP\Office\outlook.PreinstallKit\outlook.appxbundle" /OptionalPackagePath="C:\TMP\Office\publisher.PreinstallKit\publisher.appxbundle" /OptionalPackagePath="C:\TMP\Office\access.PreinstallKit\access.appxbundle" /LicensePath="C:\TMP\Office\shared.PreinstallKit\shared_License1.xml" /LicensePath="C:\TMP\Office\excel.PreinstallKit\excel_License1.xml" /LicensePath="C:\TMP\Office\powerpoint.PreinstallKit\powerpoint_License1.xml" /LicensePath="C:\TMP\Office\word.PreinstallKit\word_License1.xml" /LicensePath="C:\TMP\Office\outlook.PreinstallKit\outlook_License1.xml" /LicensePath="C:\TMP\Office\publisher.PreinstallKit\publisher_License1.xml" /LicensePath="C:\TMP\Office\access.PreinstallKit\access_License1.xml"
::#endregion
::#region Reinstall Appx (App name changes)
Call C:\TMP\Reinstall_amd64_Appx.cmd
::#endregion
::#region Cleanup, Commit, and Export
DISM /Image:"C:\Mount\WinRE" /Cleanup-Image /AnalyzeComponentStore
DISM /Image:"C:\Mount\WinRE" /Cleanup-Image /StartComponentCleanup /ResetBase
DISM /Unmount-Image /MountDir:"C:\Mount\WinRE" /Commit

DISM /Export-Image /SourceImageFile:"C:\Mount\Windows\Windows\System32\Recovery\WinRE.wim" /SourceIndex:1 /DestinationImageFile:"C:\TMP\WinRE_Bak.wim"
DEL C:\Mount\Windows\Windows\System32\Recovery\WinRE.wim
COPY C:\TMP\WinRE_Bak.wim C:\Mount\Windows\Windows\System32\Recovery\WinRE.wim
DEL C:\TMP\WinRE_Bak.wim

DISM /Image:"C:\Mount\Windows" /Cleanup-Image /AnalyzeComponentStore
DISM /Image:"C:\Mount\Windows" /Cleanup-Image /StartComponentCleanup /ResetBase
DISM /Unmount-Image /MountDir:"C:\Mount\Windows" /Commit

DISM /Export-Image /SourceImageFile:"C:\TMP\install.wim" /SourceIndex:6 /DestinationImageFile:"C:\TMP\amd64-EN-JA-Pro.wim"
DISM /Get-WimInfo /WimFile:"C:\TMP\amd64-EN-JA-Pro.wim" /Index:1
::#endregion
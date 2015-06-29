$version = '4.3.28'
$iso_name = 'VBoxGuestAdditions_$version.iso'
$download_url = "http://download.virtualbox.org/virtualbox/$version/$iso_name"

(New-Object System.Net.WebClient).DownloadFile($download_url, "c:\windows\temp\$iso_name")
&"c:\7-zip\7z.exe" x "c:\windows\temp\$iso_name" -oc:\windows\temp\virtualbox -aoa | Out-Host
&certutil -addstore -f "TrustedPublisher" a:\oracle-cert.cer
&"c:\windows\temp\virtualbox\VBoxWindowsAdditions-amd64.exe" /S | Out-Host

exit 0
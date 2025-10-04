Stop-VM -ComputerName "AJMWIN2025-01" -Name "ajmfco-01" -TurnOff
Stop-VM -ComputerName "AJMWIN2025-01" -Name "ajmfco-02" -TurnOff
Stop-VM -ComputerName "AJMWIN2025-01" -Name "ajmfco-03" -TurnOff
Stop-VM -ComputerName "AJMWIN2025-01" -Name "ajmfco-03" -TurnOff
Stop-VM -ComputerName "AJMWIN2025-01" -Name "ajmfco-04" -TurnOff

Start-Sleep -Milliseconds 5000

Remove-VM -ComputerName "AJMWIN2025-01" -Name "ajmfco-01"
Remove-VM -ComputerName "AJMWIN2025-01" -Name "ajmfco-02"
Remove-VM -ComputerName "AJMWIN2025-01" -Name "ajmfco-03"
Remove-VM -ComputerName "AJMWIN2025-01" -Name "ajmfco-04"

Remove-Item -Path "C:\ProgramData\Microsoft\Windows\Virtual Hard Disks\ajmfco-01.vhdx" -Force
Remove-Item -Path "C:\ProgramData\Microsoft\Windows\Virtual Hard Disks\ajmfco-02.vhdx" -Force
Remove-Item -Path "C:\ProgramData\Microsoft\Windows\Virtual Hard Disks\ajmfco-03.vhdx" -Force
Remove-Item -Path "C:\ProgramData\Microsoft\Windows\Virtual Hard Disks\ajmfco-04.vhdx" -Force

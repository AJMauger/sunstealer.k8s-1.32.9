New-VM -ComputerName "AJMWIN2025-01" -Generation 1 -MemoryStartupBytes 2GB -Name "ajmfco-01" -SwitchName "Virtual Switch" -NewVHDPath "C:\ProgramData\Microsoft\Windows\Virtual Hard Disks\ajmfco-01.vhdx" -NewVHDSizeBytes 50GB
Set-VMDvdDrive "ajmfco-01" -Path "C:\Users\administrator\Downloads\fedora-coreos-42.20250901.3.0-live-iso.x86_64.iso"
Set-VMMemory -ComputerName "AJMWIN2025-01" -DynamicMemoryEnabled $true -MinimumBytes 2GB -VMName "ajmfco-01"
Set-VMProcessor "ajmfco-01" -Count 4

New-VM -ComputerName "AJMWIN2025-01" -Generation 1 -MemoryStartupBytes 2GB -Name "ajmfco-02" -SwitchName "Virtual Switch" -NewVHDPath "C:\ProgramData\Microsoft\Windows\Virtual Hard Disks\ajmfco-02.vhdx" -NewVHDSizeBytes 50GB
Set-VMDvdDrive "ajmfco-02" -Path "C:\Users\administrator\Downloads\fedora-coreos-42.20250901.3.0-live-iso.x86_64.iso"
Set-VMMemory -ComputerName "AJMWIN2025-01" -DynamicMemoryEnabled $true -MinimumBytes 2GB  -VMName "ajmfco-02"
Set-VMProcessor "ajmfco-02" -Count 4

New-VM -ComputerName "AJMWIN2025-01" -Generation 1 -MemoryStartupBytes 2GB -Name "ajmfco-03" -SwitchName "Virtual Switch" -NewVHDPath "C:\ProgramData\Microsoft\Windows\Virtual Hard Disks\ajmfco-03.vhdx" -NewVHDSizeBytes 50GB
Set-VMDvdDrive "ajmfco-03" -Path "C:\Users\administrator\Downloads\fedora-coreos-42.20250901.3.0-live-iso.x86_64.iso"
Set-VMMemory -ComputerName "AJMWIN2025-01" -DynamicMemoryEnabled $true -MinimumBytes 2GB  -VMName "ajmfco-03"
Set-VMProcessor "ajmfco-03" -Count 4

New-VM -ComputerName "AJMWIN2025-01" -Generation 1 -MemoryStartupBytes 2GB -Name "ajmfco-04" -SwitchName "Virtual Switch" -NewVHDPath "C:\ProgramData\Microsoft\Windows\Virtual Hard Disks\ajmfco-04.vhdx" -NewVHDSizeBytes 50GB
Set-VMDvdDrive "ajmfco-04" -Path "C:\Users\administrator\Downloads\fedora-coreos-42.20250901.3.0-live-iso.x86_64.iso"
Set-VMMemory -ComputerName "AJMWIN2025-01" -DynamicMemoryEnabled $true -MinimumBytes 2GB  -VMName "ajmfco-04"
Set-VMProcessor "ajmfco-04" -Count 4

Start-Sleep -Milliseconds 5000

Start-VM -ComputerName "AJMWIN2025-01" -Name "ajmfco-01"
Start-VM -ComputerName "AJMWIN2025-01" -Name "ajmfco-02"
Start-VM -ComputerName "AJMWIN2025-01" -Name "ajmfco-03"
Start-VM -ComputerName "AJMWIN2025-01" -Name "ajmfco-04"

#sudo coreos-installer install /dev/sda --ignition-url http://10.0.0.2/ajm.cluster/coreos_ajmfc37-01.ign.json --insecure-ignition


  Get-WmiObject win32_logicaldisk -ComputerName AUSPRSQLGRDCL01 -Filter "drivetype = 3" | 
  ft name, VolumeName, @{n='Disk Size(GB)'; e={$_.size/1GB};formatstring='N2'}, @{n='FreeSpace(GB)'; e={$_.freespace/1GB};formatstring='N2'} -AutoSize
  
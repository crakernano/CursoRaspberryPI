 #!/bin/bash
 
 cpu=$(cat /sys/class/thermal/thermal_zone0/temp)
 rp="$(date) @ $(hostname)"


 echo $rp
 echo "-------------------------------------------"
 echo "Temp.CPU => $((cpu/1000))'Cº"
 echo "Temp.GPU => $(/opt/vc/bin/vcgencmd measure_temp)"
 echo "-------------------------------------------"
echo $rp>>log.txt
echo $cpu>>log.txt
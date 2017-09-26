# python script

temp = int(open('/sys/class/thermal/thermal_zone0/temp').read()) / 1e3
print 'Temp.CPU =>' + str(temp)
tempgpu = commands.getoutput('/opt/vc/bin/vcgencmd measure_temp' ).replace('temp=', '' )
print 'Temp.GPU =>' + str(tempgpu)

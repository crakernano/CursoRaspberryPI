import psutil
cpusan = psutil.cpu_percent(interval=1, percpu=False)
print cpusan

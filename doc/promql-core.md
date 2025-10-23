# promql-core

`uptime by hour`
```
(node_time_seconds - node_boot_time_seconds) / 3600
```

<br>

`uptime by day`
```
(node_time_seconds - node_boot_time_seconds) / 86400
```

<br>

`cpu core count`
```
count without(cpu, mode) (node_cpu_seconds_total{mode="idle"})
```

<br>

`ram total`
```
node_memory_MemTotal_bytes / 1e9
```

<br>

`disk space total`
```
node_filesystem_size_bytes{mountpoint="/"} / 1e9
```

`disk space usage`
```
(node_filesystem_size_bytes{mountpoint="/"} - node_filesystem_avail_bytes{mountpoint="/"}) / 1e9
```

<br>

`cpu threads`
```
100 - (irate(node_cpu_seconds_total{mode="idle"}[5m]) * 100)
```

<br>

`cpu usage`
```
100 - (avg by (instance) (irate(node_cpu_seconds_total{mode="idle"}[5m])) * 100)
```

<br>

`cpu threads`
```
100 - (irate(node_cpu_seconds_total{mode="idle"}[5m]) * 100)
```

<br>

`ram usage size`
```
(node_memory_MemTotal_bytes - node_memory_MemAvailable_bytes) / 1e9
```

<br>

`ram usage percentage`
```
((node_memory_MemTotal_bytes - node_memory_MemAvailable_bytes) / node_memory_MemTotal_bytes) * 100
```

<br>

`iops read`
```
irate(node_disk_reads_completed_total[5m])
```

<br>

`iops write`
```
irate(node_disk_writes_completed_total[5m])
```

<br>

---

###### end of promql-core


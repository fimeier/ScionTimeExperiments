## Experiment Setting
```UDP mode```

```HW/Kernel Timestamps enabled```


```xleave enabled (but no server provides support for it)```


```NTP server worldwide experiment```


## Data collection
While chrony was running, the data has been collected with
```sudo mbgsvcd -f```,i.e., each system uses its GNSS receiver to measure the clock skew.

The GNSS receiver is a [Meinberg GNS181PEX](https://www.meinbergglobal.com/english/products/pci-express-gps-glonass-galileo-beidou-clock.htm) configured to use GPS + Galileo + GLONASS as source.

## Topology

```(USA NIST Colorado) <- AS1```

```(NTP-Pool-Korea) <- AS2```

```(cloudflare-"switzerland") <- AS3```

```(NTP-Pool-switzerland) <- AS4```

```AS1-4 are using 10/10 Gbit/s salt.ch/fiber connection```

chrony.conf:
```console
#AS1: NIST, Boulder, Colorado 
server time-a-b.nist.gov  xleave iburst
server time-b-b.nist.gov  xleave iburst
server time-c-b.nist.gov  xleave iburst
server time-d-b.nist.gov  xleave iburst
 
#AS2: Korea — kr.pool.ntp.org
server kr.pool.ntp.org xleave iburst

#AS3: Cloudflare, using NTS!
server time.cloudflare.com nts xleave iburst

#AS4: Switzerland 
server ch.pool.ntp.org  xleave iburst
```



## Example Plots
```Click on the plots below, or download them. You have to view them in raw mode.```

```Hint: You can zoom and scroll```


![Alt text](Experiment30.svg?raw=true "Complete Experiment")

![Alt text](Experiment30woKorea.svg?raw=true "Zoom-In")



## Experiment 9 Setting
```SCION mode```

```NO HW/Kernel Timestamps```

```xleave enabled```


## cpu load
```until 02:30: stress -v --cpu 8 --io 8 -t 21600```




## Data collection
While chrony was running, the data has been collected with
```sudo mbgsvcd -f```,i.e., each system uses its GNSS receiver to measure the clock skew. [mbgsvcd()](https://kb.meinbergglobal.com/kb/driver_software/command_line_tools_mbgtools#mbgsvcd) is the Meinberg Service Daemon, implementing the Shared Memory Driver (SHM).

The GNSS receiver is a [Meinberg GNS181PEX](https://www.meinbergglobal.com/english/products/pci-express-gps-glonass-galileo-beidou-clock.htm) configured to use GPS + Galileo + GLONASS as source.

## Topology

```SHM(AS1,Meinberg) <- AS2 <- AS3 <- AS4```

Remarks:

```AS1,2,3 are ETH's PCs, AS4 is mine (older core i7 second generation = 6(?)years old..)```

```AS1-3: cycles counter 2900000000```

```AS4 :  cycles counter 3502655000```


## Example Plots
```Click on the plots below, or download them. You have to view them in raw mode.```

```Hint: You can zoom and scroll```



![Alt text](Experiment9.svg?raw=true "Complete Experiment")

![Alt text](Experiment9Details.svg?raw=true "Details 1")
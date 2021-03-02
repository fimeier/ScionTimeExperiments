## Experiment 18 Setting
```UDP mode```

```NO HW/Kernel```

```NO xleave```

## network load
```network load until 23:30```

```AS1-4: iperf -s -i 10 -t 10800```

```AS2: iperf -c AS1 -d -i 10 -t 10800```

```AS3: iperf -c AS2 -d -i 10 -t 10800```

```AS3: iperf -c AS3 -d -i 10 -t 10800```


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



![Alt text](Experiment18.svg?raw=true "Complete Experiment")

![Alt text](Experiment18SecondPartwoLoad.svg?raw=true "Experiment 2nd Part without Load")
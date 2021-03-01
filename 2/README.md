## Experiment Setting
```special experiment```

## Data collection
While chrony was running, the data has been collected with
```sudo mbgsvcd -f```,i.e., each system uses its GNSS receiver to measure the clock skew. [mbgsvcd()](https://kb.meinbergglobal.com/kb/driver_software/command_line_tools_mbgtools#mbgsvcd) is the Meinberg Service Daemon, implementing the Shared Memory Driver (SHM).

The GNSS receiver is a [Meinberg GNS181PEX](https://www.meinbergglobal.com/english/products/pci-express-gps-glonass-galileo-beidou-clock.htm) configured to use GPS + Galileo + GLONASS as source.


## Topology

```AS1<-mbgsetsystime(GNS181PEX)```

```AS1<-mbgsetsystime(GNS181PEX)```

```AS1<-mbgsetsystime(GNS181PEX)```

```AS1<-mbgsetsystime(GNS181PEX)```


Remarks:

[mbgsetsystime()](https://kb.meinbergglobal.com/kb/driver_software/command_line_tools_mbgtools#mbgsetsystime) ```has been used to set the system time each second to the time provided by the PCIExpress card GNS181PEX```

```AS1,2,3 are ETH's PCs, AS4 is mine (older core i7 second generation = 6(?)years old..)```

```AS1-3: cycles counter 2900000000```

```AS4 :  cycles counter 3502655000```

## Comments
mbgsetsystime() is not accurate. An offset of 35microSeconds is caused by offset errors due to interrupt latencies and processing times. Compare experiment 3: The SHM-driver achieves much better results.


## Example Plots
```Click on the plots below, or download them. You have to view them in raw mode.```

```Hint: You can zoom and scroll```


![Alt text](Experiment2.svg?raw=true "Complete Experiment")

![Alt text](Experiment2Details.svg?raw=true "Details")


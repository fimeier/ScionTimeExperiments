## Experiment Setting
```special experiment```

## Data collection
While chrony was running, the data has been collected with
```sudo mbgsvcd -f```,i.e., each system uses its GNSS receiver to measure the clock skew. [mbgsvcd()](https://kb.meinbergglobal.com/kb/driver_software/command_line_tools_mbgtools#mbgsvcd) is the Meinberg Service Daemon, implementing the Shared Memory Driver (SHM).

The GNSS receiver is a [Meinberg GNS181PEX](https://www.meinbergglobal.com/english/products/pci-express-gps-glonass-galileo-beidou-clock.htm) configured to use GPS + Galileo + GLONASS as source.


## Topology

```SHM(AS1,GNS181PEX)```

```SHM(AS2,GNS181PEX)```

```SHM(AS3,GNS181PEX)```

```SHM(AS4,GNS181PEX)```


Remarks:

[mbgsvcd()](https://kb.meinbergglobal.com/kb/driver_software/command_line_tools_mbgtools#mbgsvcd) is the Meinberg Service Daemon, implementing the Shared Memory Driver (SHM). The driver is continuously determine the offset |C_GNSS(t) - C_system(t)|. The driver reports the offset to the console and more importantly, into a shared memory segment. SCIONchrony uses the determined offsets to discipline C_system(t). If SCIONchrony is not configured to use the SHM as reference clock, we can use mbgsvcd() to measure the accuracy SCIONchrony achieves by means of NTP clock synchronization.

```AS1,2,3 are ETH's PCs, AS4 is mine (older core i7 second generation = 6(?)years old..)```

```AS1-3: cycles counter 2900000000```

```AS4 :  cycles counter 3502655000```

## Comments
The measurement resolution is around 1 microsecond. Much better than what we can achieve with mbgsetsystime(), compare experiment 2.


## Example Plots
```Click on the plots below, or download them. You have to view them in raw mode.```

```Hint: You can zoom and scroll```


![Alt text](Experiment3.svg?raw=true "Complete Experiment")

![Alt text](Experiment3Details.svg?raw=true "Details")


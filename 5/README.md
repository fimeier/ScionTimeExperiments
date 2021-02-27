## Experiment Setting
```UDP mode```

```HW/Kernel Timestamps enabled```


```xleave enabled```


```24h run```

10:00 - 10:00

cat AS1.txt | tr -s ' ' | tr ' ' '#' | cut -f2,3,6 -d'#' | tr '#,' ' ' > AS1short.txt
cat AS2.txt | tr -s ' ' | tr ' ' '#' | cut -f2,3,6 -d'#' | tr '#,' ' ' > AS2short.txt
cat AS3.txt | tr -s ' ' | tr ' ' '#' | cut -f2,3,6 -d'#' | tr '#,' ' ' > AS3short.txt
cat AS4.txt | tr -s ' ' | tr ' ' '#' | cut -f2,3,6 -d'#' | tr '#,' ' ' > AS4short.txt


## Data collection
While chrony was running, the data has been collected with
```sudo mbgsvcd -f```,i.e., each system uses its GNSS receiver to measure the clock skew.

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


![Alt text](Experiment5.svg?raw=true "Optional Title")

![Alt text](Experiment5_Final.svg?raw=true "Complete Experiment")

![Alt text](Experiment5Details.svg?raw=true "Details 1")

![Alt text](Experiment5Details2.svg?raw=true "Details 2")

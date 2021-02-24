## SCION SETTING!!!!!!!!!!!

## HW/Kernel Timestamps

## NO xleave


## network load (3h)
Ab 08:30 (UTC 7:30) bis 11:30 (UTC 10:30). Experiment END 14:30 (UTC 13:30 )

iperf -s -i 10 -t 10800

iperf -c 10.80.45.241 -d -i 10 -t 10800
iperf -c 10.80.45.242 -d -i 10 -t 10800
iperf -c 10.80.45.243 -d -i 10 -t 10800




## Data collection
On all ASs do the following WHILE chrony is synchronizing time as defined in the Setting below
* sudo mbgsvcd -f > AS1.txt
cat AS1.txt | tr -s ' ' | tr ' ' '#' | cut -f2,3,6 -d'#' | tr '#,' ' ' > AS1short.txt
cat AS2.txt | tr -s ' ' | tr ' ' '#' | cut -f2,3,6 -d'#' | tr '#,' ' ' > AS2short.txt
cat AS3.txt | tr -s ' ' | tr ' ' '#' | cut -f2,3,6 -d'#' | tr '#,' ' ' > AS3short.txt
cat AS4.txt | tr -s ' ' | tr ' ' '#' | cut -f2,3,6 -d'#' | tr '#,' ' ' > AS4short.txt

## Setting
SHM(AS1,Meinberg) <- AS2 <- AS3 <- AS4

Remark:
AS1,2,3 are ETH's PCs, AS4 is mine (older core i7 second generation = 6(?)years old..)

AS1-3: cycles counter 2900000000
AS4 :  cycles counter 3502655000


## Kommentare




## Conclusion


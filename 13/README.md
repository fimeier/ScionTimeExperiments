## SCION SETTING!!!!!!!!!!!

## HW/Kernel Timestamps

## xleave


## cpu load (4h!!!!) ACHTUNG!!!! 4h
2nd run... now I started chrony and then the load (compare clock precision experiment NTP)

Vom 21:25 (UTC 20:25) bis 00:25 (UTC 23:25): stress -v --cpu 8 --io 8 -t 14400




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
Scheint wieder sehr lange nachzuschwingen....

HABE ES WEITER LAUFEN LASSEN DA NOCH NICHT STABIL ist....

Wird selbst nach 14 Stunden nicht stabil




## Conclusion


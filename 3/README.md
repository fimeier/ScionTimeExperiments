## Data collection
On all ASs do the following WHILE the script listed in Settings is running
* sudo mbgsvcd -f > AS1.txt
cat AS1.txt | tr -s ' ' | tr ' ' '#' | cut -f2,3,6 -d'#' | tr '#,' ' ' > AS1short.txt
cat AS2.txt | tr -s ' ' | tr ' ' '#' | cut -f2,3,6 -d'#' | tr '#,' ' ' > AS2short.txt
cat AS3.txt | tr -s ' ' | tr ' ' '#' | cut -f2,3,6 -d'#' | tr '#,' ' ' > AS3short.txt
cat AS4.txt | tr -s ' ' | tr ' ' '#' | cut -f2,3,6 -d'#' | tr '#,' ' ' > AS4short.txt

## Setting
All ASs get time from local GNS1 via SHM driver

Remark:
AS1,2,3 are ETH's PCs, AS4 is mine (older core i7 second generation = 6(?)years old..)



## Kommentare
Habe Daten im Excel zusammengefasst

Fazit aus Experiment 2 bestätigt:
Eine Erklärung für den konstanten positiven Offset von 35microSec könnte sein, dass mbgsetsystime nicht auf Genauigkeit optimiert ist wie mbgsvcd.


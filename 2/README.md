## Data collection
On all ASs do the following WHILE the script listed in Settings is running
* sudo mbgsvcd -f > AS1.txt
* cat AS1.txt | tr -s ' ' | tr ' ' '#' | cut -f2,3,6 -d'#' | tr '#,' ' ' > AS1short.txt

## Setting
runExp2.bash, i.e., "sudo mbgsetsystime > /dev/null"

Remark:
AS1,2,3 are ETH's PCs, AS4 is mine (older core i7 second generation = 6(?)years old..)



## Kommentare
Habe Daten im Excel zusammengefasst
Vermutlich sollte ich die Messung wiederholen nachdem Clock discipliniert wurde (für stability), sollte aber nichts gross ändern

Zudem sollte ich schauen wie es sich verhält wenn man die Zeit mit der Meinbergkarte über Chrony setzt (über den Memory Driver).

Dieses Experiment hier sollte eigentlich zeigen wie exakt die Meinbergkarte Zeitunterschiede feststellen kann und sie auch setzen tut.

Es ist klar, dass die Uhr so nicht diszipliniert wird, was aber eigentlich egal ist, da ich sie alle 100ms neu setze und den Offset jede Sekunde auslese.

Eine Erklärung für den konstanten positiven Offset von 35microSec könnte sein, dass mbgsetsystime nicht auf Genauigkeit optimiert ist wie mbgsvcd.


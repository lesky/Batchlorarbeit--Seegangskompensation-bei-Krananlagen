Controler: CY8C27446-24PXI

Anutor: Benjamin Lesky

I/O-Konfiguration:
LCD -> Port 2
IN1 ->1.5
IN2->1.3
PWM 1-> Pin 1.4
Beschleunigung-> 0.7
Entfernung -> 0.4
Sollwert-> 0.5

Bugs:

-A/D Wandler geben merkwürdige
 werte aus
-Drehrichtung Funktioniert nicht	(Fixt 15.09.2013)
-P 0.1 Defekt?
-H-Bruecke braucht zu viel spannung 	(Fixd 05.09.2013)
-Ausgang 1.3 gibt keine Spannung aus 	(Fixd 16.09.2013)		
-Ausgang 1.4 gibt keine Spannung aus 	(Fixd 05.09.2013)
-Ausgang 1.5 gibt keine Spannung aus 	(Fixd 16.09.2013)
-Merkwuerdige ausgabe von Zahlen am LCD	(Fixd 16.09.2013)
-Eingaenge werden nicht eingelesen 	(Fixd 16.09.2013)
 bzw gewandelte ergebnisse nicht am lcd ausgegeben

ToDO:

-Initialisierungen auslagern
-eigene präfixe in Komentar einfügen (Erledigt)
-Testroutine programmieren	(Erledigt 28.08.13)	
-Korekturfaktor Einfuegen 	(nicht mehr nötig 25.09.2013)
-Arraygroee anpassen 		(Erledigt 29.08.13)
-Selbsttest  			(nicht mehr nötig 25.09.2013)
-Pause bei Drehrichtungsumkehr	(Erledigt 28.09.13)
-Eingaenge "verdraten"		(Erledigt 14.08.13)
-Algorithmus Programmieren	(Erledigt 28.07.13)
-Sollwert Programmieren 	(Erledigt 22.07.13)
-PwM Programmieren 		(Erledigt 24.07.13)
-Verstaerker Programmieren	(Erledigt 15.08.13)

Copyright (c) 2013 Benjamin Lesky 

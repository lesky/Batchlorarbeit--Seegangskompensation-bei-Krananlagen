Batchlorarbeit Seegangskompensation bei Krananlagen
Version: 0.0.0.1
Controler: CY8C27446-24PXI
Anutor: Benjamin Lesky
I/O-Konfiguration:
LCD -> Port 2
Selbsttest ->1.1
IN1 ->1.5
IN2->1.3
PWM 1-> Pin 1.4
Beschleunigung-> 0.1
Entfernung -> 0.4
Sollwert-> 0.5

Bugs:

-H-Br�cke braucht zu viel spannung (Fixd 05.09.2013: Vs und Vss 
				     sp�ter mit 9V Versorgen)
-Ausgang 1.3 gibt keine Spannung aus
-Ausgang 1.4 gibt keine Spannung aus (Fixd 05.09.2013)
-Ausgang 1.5 gibt keine Spannung aus
-Merkw�rdige ausgabe von Zahlen am LCD
-Eing�nge werden nicht eingelesen

ToDO:
-Testroutine programmieren	(Erledigt 28.08.13)	
-Korekturfaktor Einf�gen 
-Arraygr��e anpassen 
-Selbsttest  
-Pause bei Drehrichtungsumkehr
-Eing�nge "verdraten"		(Erledigt 14.08.13)
-Algorithmus Programmieren	(Erledigt 28.07.13)
-Sollwert Programmieren 	(Erledigt 22.07.13)
-PwM Programmieren 		(Erledigt 24.07.13)
-Verst�rker Programmieren	(Erledigt 15.08.13)

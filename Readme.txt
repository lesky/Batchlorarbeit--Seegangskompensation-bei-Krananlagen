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

Lizenzbedingungen

Copyright (c) 2013 Benjamin Lesky 

Hiermit wird unentgeltlich, jeder Person, die eine Kopie 
der Software und der zugeh�rigen Dokumentationen 
(die "Software") erh�lt, die Erlaubnis erteilt, 
sie uneingeschr�nkt zu benutzen, inklusive und ohne Ausnahme,
dem Recht, sie zu verwenden, kopieren, �ndern, fusionieren,
verlegen, verbreiten, unterlizenzieren und/oder zu verkaufen,
und Personen, die diese Software erhalten, diese Rechte zu 
geben, unter den folgenden Bedingungen:

Der obige Urheberrechtsvermerk und dieser Erlaubnisvermerk 
sind in allen Kopien oder Teilkopien der Software beizulegen.

DIE SOFTWARE WIRD OHNE JEDE AUSDR�CKLICHE ODER IMPLIZIERTE 
GARANTIE BEREITGESTELLT, EINSCHLIESSLICH DER GARANTIE ZUR 
BENUTZUNG F�R DEN VORGESEHENEN ODER EINEM BESTIMMTEN ZWECK 
SOWIE JEGLICHER RECHTSVERLETZUNG, JEDOCH NICHT DARAUF 
BESCHR�NKT. IN KEINEM FALL SIND DIE AUTOREN ODER 
COPYRIGHTINHABER F�R JEGLICHEN SCHADEN ODER SONSTIGE 
ANSPR�CHE HAFTBAR ZU MACHEN, OB INFOLGE DER ERF�LLUNG 
EINES VERTRAGES, EINES DELIKTES ODER ANDERS IM ZUSAMMENHANG 
MIT DER SOFTWARE ODER SONSTIGER VERWENDUNG DER SOFTWARE 
ENTSTANDEN.

Licence Agreement

Copyright (c) 2013 Benjamin Lesky 

Permission is hereby granted, free of charge, to any person
 obtaining a copy of this software and associated documentation 
files (the "Software"), to deal in the Software without restriction, 
including without limitation the rights to use, copy, modify, 
merge, publish, distribute, sublicense, and/or sell copies of 
the Software, and to permit persons to whom the Software is 
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall 
be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, 
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR 
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE 
OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
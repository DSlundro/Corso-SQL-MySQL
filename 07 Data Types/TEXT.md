# CHAR vs. VARCHAR

## CHAR
```
- lunghezza da 0 a 255
- impostiamo una lunghezza massima, es CHAR(20)
- quando il valore CHAR viene salvato, esso prende la dimensione intera, ovvero, la dimensione del carattere inserito più quella mancante per arrivare il massimo impostato (20)
- invece quando richiedo la lunghezza del carattere inserito mi darà la lunghezza esatta rimuovendo gli spazi non occupati
```

## VARCHAR
```
- lunghezza da 0 a 65 535
- imposto uan lughezza massima, es VARCHAR(100)
- a differenza di CHAR, VARCHAR fa l'opposto durante il salvataggio dei dati, ovvero, salva il numero dei caratteri uguali a quelli che vengono inseriti
```

## Riepilogando quindi:
```
Valore	        CHAR(4)	        Spazio richiesto        VARCHAR(4)	        Spazio richiesto

''	            '    '	        4 bytes	                ''	                1 byte
'ab'	        'ab  '	        4 bytes	                'ab'	            3 bytes
'abcd'	        'abcd'	        4 bytes	                'abcd'	            5 bytes
'abcdefgh'	    'abcd'	        4 bytes	                'abcd'	            5 bytes
```
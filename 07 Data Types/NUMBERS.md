# Numeri

## Numeri interi INT
```
Type	        Storage (Bytes)	        Minimum Value Signed	        Minimum Value Unsigned	        Maximum Value Signed	        Maximum Value Unsigned

TINYINT	        1	                    -128	                        0	                            127 	                        255
SMALLINT	    2	                    -32768	                        0	                            32767	                        65535
MEDIUMINT	    3	                    -8388608	                    0	                            8388607	                        16777215
INT	            4	                    -2147483648	                    0	                            2147483647	                    4294967295
BIGINT	        8	                    -263	                        0	                            263-1	                        264-1
```

## Decimali
```
DECIMAL(5, 2)
- il primo numero indica quante cifre vogliamo assegnare a un determinato numero
- il secondo numero indica quanti numeri ci saranno dopo il decimale
- quindi il numero massimo potrà oscillare da -999,00 a 999.99 
```

## FLOAT e DOUBLE
```
Data Type           Memory Needed           Precision Issues

FLOAT               4 Bytes                 7 digits
DOUBLE              8 Bytes                 15 digits
```
ORG 0000H
SETB P0.0;SWITCH_1 OFF
SETB P0.1;SWITCH_2 OFF
SETB P0.2;LED OFF
LOOP:CLR C;CLEAR CARRY BIT
ORL C,/P0.0;OR WITH P0.0
ANL C,/P0.1;AND WITH P0.1
CPL C;COMPLEMENT CARRY BIT
MOV P0.2,C;MOVE CARRY BIT TO P0.2
SJMP LOOP;RUN ON LOOP
END

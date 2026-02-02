BEGIN d_gBF1w //widow dialogue


IF ~!Global("Talked2_gBFq1","GLOBAL",0)~ THEN BEGIN 0
	SAY @8000 /* Yes? Can I help you? */
	++ @8001 /* Your husband is haunting your former house and keeps going on about coins. */ GOTO 1
END

IF ~~ THEN BEGIN 1
	SAY @8002 /* He’s what?! Oh no. He had a coin collection that he loved. I wanted to keep it to remember him by, so I didn’t bury it with him. But if he wants it and having it would help him rest, then… Here. Take it. Please help him. I–I think I need to be alone now. */
		IF ~~ THEN DO ~GiveItemCreate("gBFcc",Player1,1,1,0) EscapeArea()~ EXIT
END

IF ~Global("Talked2_gBFq1","GLOBAL",0)~ THEN BEGIN 2
	SAY @8003 /* I am grieving, please leave me alone. */
	IF ~~ THEN EXIT
END


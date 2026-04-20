BEGIN d_gBFMal

IF ~Global("g_BFMt","LOCALS",0)~ THEN BEGIN 0
	SAY @14500 /* ~So, the predator becomes the prey. Such is the natural order of things. Look for me deeper within and join me in this bloody hunt for the glory of Malar!~ */
	IF ~~ THEN DO ~SetGlobal("g_BFMt","LOCALS",1) EscapeArea()~ EXIT // EscapeAreaMove("g_warren",1968,257,3)
END

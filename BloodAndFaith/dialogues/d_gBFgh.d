BEGIN d_gBFgh //ghosts dialogue


IF ~Global("gBFq1","GLOBAL",1)~ THEN BEGIN 0
	SAY @11500 /* Coins... must have coins. */
	++ @11501 /* You want gold? I have some here. */ GOTO 1
	++ @11502 /* What would it take for you to leave? */ GOTO 2
	+~PartyHasItem("gBFcc")~+ @11503 /* I have your coin collection here. */ GOTO 3
	+~!Global("Talked2_gBFq1","GLOBAL",0) !PartyHasItem("gBFcc")~+ @11504 /* I will find your coin collection. */ GOTO 2
END

IF ~~ THEN BEGIN 1
	SAY @11505 /* Coins... not my coins... Must have coins... */
	IF ~~ THEN DO ~SetGlobal("Talked2_gBFq1","GLOBAL",1)~ EXIT
END	

IF ~~ THEN BEGIN 2
	SAY @11506 /* Coins... my coins... */
	IF ~~ THEN DO ~SetGlobal("Talked2_gBFq1","GLOBAL",1)~ EXIT
END	

IF ~~ THEN BEGIN 3
	SAY @11507 /* Coins... my coins! Thank you... */
	IF ~~ THEN DO ~SetGlobal("gBFq1","GLOBAL",2) TakePartyItem("gBFcc") DestroySelf()~ EXIT
END	

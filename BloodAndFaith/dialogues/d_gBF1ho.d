BEGIN d_gBF1ho //homeowner's dialogue


//hasn't talked to the ghost yet
IF ~Global("gBFq1","GLOBAL",1) !Global("Talked1_gBFq1","MYAREA",1)~ THEN BEGIN 0
	SAY @7500 /* Oh, you’re the one the Lathanderite’s sent? The ghost is upstairs. Please do something about it! He keeps going on about coins. */
		+ ~!Global("Talked1_gBFq1","MYAREA",1)~ + @7501 /* What can you tell me about this ghost? */ DO ~SetGlobal("Talked1_gBFq1","MYAREA",1)~ GOTO 1
		+ ~Global("Talked2_gBFq1","GLOBAL",1)~ + @7502 /* He keeps going on about coins? */ DO ~SetGlobal("Talked2_gBFq1","GLOBAL",2)~ GOTO 2
		++ @7503 /* I have no further questions. */ GOTO 3
END

/*
//has talked to the ghost 
IF ~Global("gBFq1","GLOBAL",1)~ THEN BEGIN 0
	SAY @7500 /* Oh, you’re the one the Lathanderite’s sent? The ghost is upstairs. Please do something about it! He keeps going on about coins. */
		++ @7501 /* What can you tell me about this ghost? */ GOTO 1
		++ @7502 /* He keeps going on about coins? */ GOTO 2
		++ @7503 /* I have no further questions. */ GOTO 3
END
*/

IF ~~ THEN BEGIN 1
	SAY @7504 /* I don’t know much about him! I just moved here from Daggerford! He died, obviously, and so the wife sold the house. I think she’s staying at the Red Sheaf until she gets her affairs in order to move to Baldur’s Gate. */
		+ ~Global("Talked2_gBFq1","GLOBAL",1)~ + @7502 /* He keeps going on about coins? */ DO ~SetGlobal("Talked2_gBFq1","GLOBAL",2)~ GOTO 2
		++ @7503 /* I have no further questions. */ DO ~SetGlobal("Talked2_gBFq1","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 2
	SAY @7505 /* Yes, he does that. But I already bought the house from his widow; I’m not giving him money too!  */
		++ @7501 /* What can you tell me about this ghost? */ DO ~SetGlobal("Talked1_gBFq1","MYAREA",1)~ GOTO 1
		++ @7503 /* I have no further questions. */ DO ~SetGlobal("Talked2_gBFq1","GLOBAL",1)~ EXIT
END

IF ~Global("gBFq1","GLOBAL",1) Global("Talked1_gBFq1","MYAREA",1)~ THEN BEGIN 3
	SAY @7506 /* Hopefully you have a few ideas about what to do here. I don’t want to live in a haunted house, and I don’t think I can sell the place now. */
		IF ~~ THEN EXIT
		+ ~Global("Talked2_gBFq1","GLOBAL",1)~ + @7502 /* He keeps going on about coins? */ DO ~SetGlobal("Talked2_gBFq1","GLOBAL",2)~ GOTO 2
		IF ~Global("Talked2_gBFq1","GLOBAL",2)~ THEN REPLY @7503 /* I have no further questions. */ DO ~SetGlobal("Talked2_gBFq1","GLOBAL",1)~ EXIT
		+ ~!Global("Talked2_gBFq1","GLOBAL",2)~ + @7503 /* I have no further questions. */ EXIT
END

//sent off the ghost
IF ~Global("gBFq1","GLOBAL",2) !Global("gBFq1_ar3311","MYAREA",0) !Global("gBFq1_ar3311","MYAREA",2)~ THEN BEGIN 4
	SAY @7507 /* The ghost is gone! */
	++ @7508 /* The ghost is gone now. He just wanted his coin collection. */ GOTO 5
	++ @7509 /* That's correct. */ GOTO 6
END

IF ~~ THEN BEGIN 5
	SAY @7510 /* His coin collection? That’s it? Hmph. What’s a ghost going to do with money, anyway? Well, whatever gets him out of my house. Thank you for your help. */
	IF ~~ THEN DO ~SetGlobal("gBFq1_ar3311","MYAREA",2)~ EXIT
END	

IF ~Global("gBFq1_That_correct","MYAREA",1) Global("gBFq1_ar3311","MYAREA",0)~ THEN BEGIN 6
	SAY @7511 /* Well, then not to be rude, but could you leave? This is my house, after all, and not yours. */
	IF ~!Global("gBFq1_ar3311","MYAREA",0)~ THEN DO ~SetGlobal("gBFq1_ar3311","MYAREA",2) SetGlobal("gBFq1_That_correct","MYAREA",1)~ EXIT
	IF ~Global("gBFq1_ar3311","MYAREA",0)~ THEN EXIT
END	

IF ~!Global("gBFq1_That_correct","MYAREA",1) Global("gBFq1_ar3311","MYAREA",0)~ THEN BEGIN 7
	SAY @7512 /* ~Thank you for your help.~ */
	IF ~~ THEN EXIT
END	

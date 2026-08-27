BEGIN d_gBF4rk // The Rat King Quest Rat King dialogue

IF ~True()~ THEN BEGIN 0
	SAY @9000 /* You’re here to get rid of us, are you? Well, I’m not moving out, unless you can find me something better! */
	++ @9001 /* Why are you here? */ GOTO whyTho
	++ @9002 /* What do you want? */ GOTO whatWant
	+ ~CheckStatGT(Player1,16,CHR)~+ @9003 /* [Persuade] There’s a warren just to the north that a Malarite used to live in. You could move there. */ GOTO chrYes
	+ ~!CheckStatGT(Player1,16,CHR)~+ @9003 /* [Persuade] There’s a warren just to the north that a Malarite used to live in. You could move there. */ GOTO chrNo
	+ ~CheckStatGT(Player1,16,INT)~+ @9004 /* [Persuade] There’s a warren just to the north that a Malarite used to live in. It'd be smarter to live there, away from pesky adventurers. */ GOTO intYes
	+ ~!CheckStatGT(Player1,16,INT)~+ @9004 /* [Persuade] There’s a warren just to the north that a Malarite used to live in. It'd be smarter to live there, away from pesky adventurers. */ GOTO intNo
	+~CheckStatGT(Player1,16,STR)~+ @9005 /*  [Intimidate] I’m going to kill you. */ GOTO strYes
	+~!CheckStatGT(Player1,16,STR)~+ @9005 /*  [Intimidate] I’m going to kill you. */ GOTO strNo
	+~Global("gBFq4","GLOBAL",1)~+ @9006 /* Hm. I'll come back later. */ GOTO stallTime
	+~!Global("gBFq4","GLOBAL",1)~+ @9006 /* Hm. I'll come back later. */ GOTO stallTimetwo
END

// info

IF ~~ THEN BEGIN whyTho
	SAY @9007 /* We live here. It’s a nice house. */ 
	++ @9002 /* What do you want? */ GOTO whatWant
	+ ~CheckStatGT(Player1,16,CHR)~+ @9003 /* [Persuade] There’s a warren just to the north that a Malarite used to live in. You could move there. */ GOTO chrYes
	+ ~!CheckStatGT(Player1,16,CHR)~+ @9003 /* [Persuade] There’s a warren just to the north that a Malarite used to live in. You could move there. */ GOTO chrNo
	+ ~CheckStatGT(Player1,16,INT)~+ @9004 /* [Persuade] There’s a warren just to the north that a Malarite used to live in. It'd be smarter to live there, away from pesky adventurers. */ GOTO intYes
	+ ~!CheckStatGT(Player1,16,INT)~+ @9004 /* [Persuade] There’s a warren just to the north that a Malarite used to live in. It'd be smarter to live there, away from pesky adventurers. */ GOTO intNo
	+~CheckStatGT(Player1,16,STR)~+ @9005 /*  [Intimidate] I’m going to kill you. */ GOTO strYes
	+~!CheckStatGT(Player1,16,STR)~+ @9005 /*  [Intimidate] I’m going to kill you. */ GOTO strNo
	+~Global("gBFq4","GLOBAL",1)~+ @9006 /* Hm. I'll come back later. */ GOTO stallTime
	+~!Global("gBFq4","GLOBAL",1)~+ @9006 /* Hm. I'll come back later. */ GOTO stallTimetwo


END

IF ~~ THEN BEGIN whatWant
	SAY @9008 /* We just want to live in peace together. Happy, healthy, well fed. */
	++ @9001 /* Why are you here? */ GOTO whyTho
	+ ~CheckStatGT(Player1,16,CHR)~+ @9003 /* [Persuade] There’s a warren just to the north that a Malarite used to live in. You could move there. */ GOTO chrYes
	+ ~!CheckStatGT(Player1,16,CHR)~+ @9003 /* [Persuade] There’s a warren just to the north that a Malarite used to live in. You could move there. */ GOTO chrNo
	+ ~CheckStatGT(Player1,16,INT)~+ @9004 /* [Persuade] There’s a warren just to the north that a Malarite used to live in. It'd be smarter to live there, away from pesky adventurers. */ GOTO intYes
	+ ~!CheckStatGT(Player1,16,INT)~+ @9004 /* [Persuade] There’s a warren just to the north that a Malarite used to live in. It'd be smarter to live there, away from pesky adventurers. */ GOTO intNo
	+~CheckStatGT(Player1,16,STR)~+ @9005 /*  [Intimidate] I’m going to kill you. */ GOTO strYes
	+~!CheckStatGT(Player1,16,STR)~+ @9005 /*  [Intimidate] I’m going to kill you. */ GOTO strNo
	+~Global("gBFq4","GLOBAL",1)~+ @9006 /* Hm. I'll come back later. */ GOTO stallTime
	+~!Global("gBFq4","GLOBAL",1)~+ @9006 /* Hm. I'll come back later. */ GOTO stallTimetwo

END

IF ~~ THEN BEGIN stallTime
	SAY @9009 /* You do that. We'll all still be here, considering we live here now. */
	IF ~~ THEN DO ~SetGlobal("gBFq4","GLOBAL",2) ~ EXIT
END

IF ~~ THEN BEGIN stallTimetwo
	SAY @9010 /* You do that. We'll all still be here, considering we live here now.  */
	IF ~~ THEN EXIT
END



//3 stat checks: CHR, INT, STR YES
IF ~~ THEN BEGIN chrYes
	SAY @9011 /* Hm… A place of our own to move into? No one trying to chase us out all the time or squash us? Hmm… We will try it. */
	IF ~~ THEN DO ~SetGlobal("gBFq4","GLOBAL",4)
					ActionOverride("g_rat1",EscapeArea())
					ActionOverride("g_rat2",EscapeArea())
					ActionOverride("g_rat3",EscapeArea())
					ActionOverride("g_rat5",EscapeArea())
					ActionOverride("g_rat6",EscapeArea())
					ActionOverride("g_rat7",EscapeArea())
					ActionOverride("g_rat4",EscapeArea())
					ActionOverride("g_rk",EscapeArea())~ EXIT
END


IF ~~ THEN BEGIN intYes
	SAY @9011 /* Hm… A place of our own to move into? No one trying to chase us out all the time or squash us? Hmm… We will try it. */
	IF ~~ THEN DO ~SetGlobal("gBFq4","GLOBAL",4)
					ActionOverride("g_rat1",EscapeArea())
					ActionOverride("g_rat2",EscapeArea())
					ActionOverride("g_rat3",EscapeArea())
					ActionOverride("g_rat5",EscapeArea())
					ActionOverride("g_rat6",EscapeArea())
					ActionOverride("g_rat7",EscapeArea())
					ActionOverride("g_rat4",EscapeArea())
					ActionOverride("g_rk",EscapeArea())~ EXIT
END


IF ~~ THEN BEGIN strYes
	SAY @9012 /* Wait, wait, wait! You seem strong. We don't want to fight you. We'll leave. */
	IF ~~ THEN DO ~SetGlobal("gBFq4","GLOBAL",4)
					SetGlobal("gBF4rk","GLOBAL",1)
					ActionOverride("g_rat1",EscapeArea())
					ActionOverride("g_rat2",EscapeArea())
					ActionOverride("g_rat3",EscapeArea())
					ActionOverride("g_rat5",EscapeArea())
					ActionOverride("g_rat6",EscapeArea())
					ActionOverride("g_rat7",EscapeArea())
					ActionOverride("g_rat4",EscapeArea())
					ActionOverride("g_rk",EscapeArea())~ EXIT
END

//3 stat checks: CHR, INT, STR NO

IF ~~ THEN BEGIN chrNo
	SAY @9013 /* Away from civilization? No thanks. Not much to do out in the wilderness. Less free food, too. */
	IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN intNo
	SAY @9013 /* Away from civilization? No thanks. Not much to do out in the wilderness. Less free food, too. */
	IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN strNo
	SAY @9014 /* Pfah! You are outnumbered! My rats, attack! */
	IF ~~ THEN DO ~ActionOverride("g_rk",Enemy())
					ActionOverride("g_rat1",Enemy())
					ActionOverride("g_rat2",Enemy())
					ActionOverride("g_rat3",Enemy())
					ActionOverride("g_rat5",Enemy())
					ActionOverride("g_rat6",Enemy())
					ActionOverride("g_rat7",Enemy())
					ActionOverride("g_rat4",Enemy()) ~ EXIT
END






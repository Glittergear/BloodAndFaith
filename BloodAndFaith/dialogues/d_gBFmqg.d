////////////////////
/// ELORAN
///////////////////

BEGIN d_gBFmqg

/////////////////////////////////
// Banters - Imoen
////////////////////////////////

CHAIN IF ~IsGabber("%IMOEN_DV%") GlobalGT("GGBFMQ","GLOBAL",2) Global("EloranImoen","GLOBAL",0)~ THEN d_gBFmqg Immy1
@13000 /* Yes? Can I help you? */
== %IMOEN_JOINED% @13001 /* So ya used to be an adventurer, right? What happened? */
== d_gBFmqg @13002 /* I saw one too many deaths, and then decided to retire. */
== %IMOEN_JOINED%  @13003 /* Oh. But you’re a cleric. You couldn’t resurrect them? */
== d_gBFmqg  @13004 /* I wasn’t always a cleric. Why do you ask? */
== %IMOEN_JOINED%  @13005 /* No real reason. Just making some conversation. What were you before a cleric? */
== d_gBFmqg  @13006 /* Whatever I needed to be, really. Though I think <CHARNAME> might need you? I think <PRO_HESHE> is getting a little antsy. We’ll continue this some other time. */
DO ~SetGlobal("EloranImoen","GLOBAL",1)~ EXIT

APPEND d_gBFmqg
END



CHAIN IF ~IsGabber("%IMOEN_DV%") GlobalGT("GGBFMQ","GLOBAL",6) Global("EloranImoen","GLOBAL",1)~ THEN d_gBFmqg Immy2
@13007 /* Yes, Imoen? */
== %IMOEN_JOINED% @13008 /* So, what did ya need to be before you were a cleric? */
== d_gBFmqg @13009 /* What? */
== %IMOEN_JOINED%  @13010 /* You said last time that you weren’t always a cleric, remember? And you promised we’d continue this conversation later. */
== d_gBFmqg  @13011 /* Ah. Right. I suppose I did. Well, before I was a cleric, I was very good at getting where I wasn’t supposed to be, and finding things I wasn’t supposed to have. It kept me alive. */
== %IMOEN_JOINED% @13012 /* And then what? */
== d_gBFmqg @13013 /* And then I became a cleric of Lathander. */
== %IMOEN_JOINED% @13014 /* What? That’s *it*?! That can’t be the whole story. */
== d_gBFmqg @13015 /* It’s not, but that’s the story you’re getting. Now, can I interest you in some potions, or…? */
DO ~SetGlobal("EloranImoen","GLOBAL",2)~ EXIT

APPEND d_gBFmqg
END

CHAIN IF ~IsGabber("%IMOEN_DV%") GlobalGT("GGBFMQ","GLOBAL",10) Global("EloranImoen","GLOBAL",2)~ THEN d_gBFmqg Immy3
@13007 /* Yes, Imoen? */
== %IMOEN_JOINED% @13016 /* So, which secret society are you in? */
== d_gBFmqg @13017 /* ...what? */
== %IMOEN_JOINED%  @13018 /* You’re in a secret society. Or at least, were. That’s why you’re so secretive and cagey about your past. And that’s why you had thief skills. So, which society was it? */
== d_gBFmqg  @13019 /* You’re not going to let this go, are you? */
== %IMOEN_JOINED%  @13020 /* Nope. */
== d_gBFmqg @13021 /* I’m not in a secret society now, and it wasn’t a secret society then. It’s just… not something I enjoy talking about. I’m a cleric now for a reason, and I hope you never understand why. */
DO ~SetGlobal("EloranImoen","GLOBAL",3)~ EXIT

APPEND d_gBFmqg
END
/////////////////////////////////
// Banters - Kivan
////////////////////////////////

CHAIN IF ~IsGabber("Kivan") GlobalGT("GGBFMQ","GLOBAL",1) Global("EloranKivan","GLOBAL",0)~ THEN d_gBFmqg Kivan1
@13022 /* Yes, Kivan, wasn’t it? I’m sorry we weren’t able to talk much when you first visited, and I hope Thalantyr had what you were looking for. */
== KIVANJ @13023 /* What do you know of the bandits in this area? */
== d_gBFmqg @13024 /* Not much. I have other concerns in my day-to-day. */
== KIVANJ  @13025 /* Other concerns. */
== d_gBFmqg  @13026 /* That’s not how I meant it. Yes, I am concerned about the bandits, but I’m letting the paladins and clerics handle it. As is their wont. */
== KIVANJ  @13027 /* Then what do you concern yourself with? */
== d_gBFmqg  @13028 /* The affairs of the temple, mostly. Nothing spectacular. Writing letters of gratitude to the more generous tithers, ensuring the temple is stocked, brewing the occasional potion, and so on. Not much to do with bandits, I’m afraid. */
== KIVANJ  @13029 /* And you concern yourself with nothing else? */
== d_gBFmqg  @13030 /* Of course not. If that was everything, then I would never have heard of Bassilus or anyone else I send you after now, would I? */
DO ~SetGlobal("EloranKivan","GLOBAL",1)~ EXIT

APPEND d_gBFmqg
END

CHAIN IF ~IsGabber("Kivan") GlobalGT("GGBFMQ","GLOBAL",10) Global("EloranKivan","GLOBAL",1)~ THEN d_gBFmqg Kivan2
@13031 /* Kivan, do you believe in redemption? */
== KIVANJ @13032 /* For myself or others? */
== d_gBFmqg @13033 /* Is there a difference? */
== KIVANJ  @13034 /* For me, there is no redemption. There can only be forgiveness. */
== d_gBFmqg  @13035 /* Perhaps we’re more similar than we might think.  */
== KIVANJ @13036 /* I would hope not. For both of our sakes. */
DO ~SetGlobal("EloranKivan","GLOBAL",2)~ EXIT

APPEND d_gBFmqg
END
/////////////////////////////////
// Banters - Xzar
////////////////////////////////

CHAIN IF ~IsGabber("Xzar") GlobalGT("GGBFMQ","GLOBAL",3) Global("EloranXzar","GLOBAL",0)~ THEN d_gBFmqg Xzar1
@13000 /* Yes? Can I help you? */
== XZARJ @13037 /* Your ears… how long have you had them? */
== d_gBFmqg @13038 /* Excuse me? */
== XZARJ  @13039 /* They weren’t originally yours, were they? They look… human. But you’re not human, are you? I can see it in your eyes. */
== d_gBFmqg  @13040 /* These are my ears, and I have always had them. Are we quite done here? */
== XZARJ  @13041 /* And here I thought you might have an appreciation for the Craft. Maybe if we traded eyes, we could see things differently. Some other time perhaps. */
DO ~SetGlobal("EloranXzar","GLOBAL",1)~ EXIT

APPEND d_gBFmqg
END

CHAIN IF ~IsGabber("Xzar") GlobalGT("GGBFMQ","GLOBAL",7) Global("EloranXzar","GLOBAL",1)~ THEN d_gBFmqg Xzar2
@13042 /* What is it, necromancer? */
== XZARJ @13043 /* Have you thought about it? About trading eyes? */
== d_gBFmqg @13044 /* I… can’t say that I have. */
== XZARJ  @13045 /* Oh. How disappointing. But you have infravision like the elves, don’t you? I’ve always wanted that too, but ‘tis more than taking their eyes. I’ve tried, but elvish eyes don’t suit me. They don’t work very well and don’t compliment my complexion at all. But *your* eyes– */
== d_gBFmqg  @13046 /* No. The answer is no.  */
DO ~SetGlobal("EloranXzar","GLOBAL",2)~ EXIT


APPEND d_gBFmqg
END

CHAIN IF ~IsGabber("Xzar") GlobalGT("GGBFMQ","GLOBAL",11) Global("EloranXzar","GLOBAL",2)~ THEN d_gBFmqg Xzar3
@13047 /* Do I want to know what you’re thinking about this time? */
== XZARJ @13048 /* Your tongue. */
== d_gBFmqg @13017 /* ...what? */
== XZARJ  @13049 /* Your ears and eyes are… peculiar. But your tongue is familiar. How long have you been away from the Moonsea? */
== d_gBFmqg  @13050 /* Longer than you, most likely. Can’t say I miss it. */
== XZARJ  @13051 /* Neither can I. The Sword Coast is so lovely this time of year. */
DO ~SetGlobal("EloranXzar","GLOBAL",3)~ EXIT


APPEND d_gBFmqg

/////////////////////////////////
// accepting the questline
////////////////////////////////

//bassilus not dead yet
//IF ~!Dead("bassilus")~ THEN BEGIN 0
//	SAY ~I might have some things for you to do. Our top priority though is removing a Zhent //necromancer named Bassilus. Kill him, and then come speak to me. ~ IF ~~ THEN EXIT
//END

//PC is good/neutral
IF ~Global ("GGBFMQ","GLOBAL",0) !Alignment(Player1,MASK_EVIL)~ THEN BEGIN 1g
	SAY @13052 /* An adventurer, are you? I'm looking for someone who will be able to bring justice and hope to the Sword Coast. It’ll be similar to bounty hunting, but you needn’t worry about ethical considerations—I am very good at researching targets, and I swear on the Morninglord that I will only send you after evil. What do you say? */
	+ ~Kit(Player1,MAGESCHOOL_NECROMANCER)~ + @13053 /* You realize that I’m a necromancer, right? */ GOTO 1necro
	+ ~InParty("Dorn")~ + @13054 /* You see I'm travelling with Dorn, right? */ GOTO 1maleEvil
	+ ~InParty("Tiax")~ + @13055 /* You see I'm travelling with Tiax, right? */ GOTO 1maleEvil
	+ ~InParty("Xzar")~ + @13056 /* You see I'm travelling with Xzar, right? */ GOTO 1maleEvil
	+ ~InParty("Viconia")~ + @13057 /* You see I'm travelling with Viconia, right? */ GOTO 1femaleEvil
	++ @13059 /* What exactly do you expect me to do? */ GOTO 1expect
	++ @13060 /* What are the rewards? */ GOTO 1rewards
	++ @13061 /* What kind of Lathanderite are you, seeking to hire a bounty hunter? */ GOTO 1just
	++ @13062 /* I'll do it. */ GOTO 1yes
	++ @13063 /* No thanks. */ GOTO 1no
END

//bassilus is dead, PC is evil

IF ~Global ("GGBFMQ","GLOBAL",0) Alignment(Player1,MASK_EVIL)~ THEN BEGIN 1e
	SAY @13064 /* An adventurer, are you? I think we could make a good team, despite our differences. I'm looking for someone who will be able to bring justice and hope to the Sword Coast—and I don’t care if you believe in such things or not, because I have a feeling that you believe in rewards. The Temple of Lathander is both wealthy and generous. What do you say? */
	+ ~Kit(Player1,MAGESCHOOL_NECROMANCER)~ + @13053 /* You realize that I’m a necromancer, right? */ GOTO 1necro
	+ ~InParty("Dorn")~ + @13054 /* You see I'm travelling with Dorn, right? */ GOTO 1maleEvil
	+ ~InParty("Tiax")~ + @13055 /* You see I'm travelling with Tiax, right? */ GOTO 1maleEvil
	+ ~InParty("Xzar")~ + @13056 /* You see I'm travelling with Xzar, right? */ GOTO 1maleEvil
	+ ~InParty("Viconia")~ + @13057 /* You see I'm travelling with Viconia, right? */ GOTO 1femaleEvil
	+ ~Alignment(Player1,MASK_EVIL)~ + @13058 /* You do realize I'm Sharran, right? */ GOTO 1sharran
	++ @13059 /* What exactly do you expect me to do? */ GOTO 1expect
	++ @13060 /* What are the rewards? */ GOTO 1rewards
	++ @13061 /* What kind of Lathanderite are you, seeking to hire a bounty hunter? */ GOTO 1just
	++ @13062 /* I'll do it. */ GOTO 1yes
	++ @13063 /* No thanks. */ GOTO 1no
END

IF ~~ THEN BEGIN 1necro
	SAY @13065 /* I noticed. But I also know that not all necromancers are evil or heretics. There are plenty of non-heretical ways to practice arcane necromancy. And besides, who knows necromancers and undead better than necromancers themselves? Anything else? */
	+ ~InParty("Dorn")~ + @13054 /* You see I'm travelling with Dorn, right? */ GOTO 1maleEvil
	+ ~InParty("Tiax")~ + @13055 /* You see I'm travelling with Tiax, right? */ GOTO 1maleEvil
	+ ~InParty("Xzar")~ + @13056 /* You see I'm travelling with Xzar, right? */ GOTO 1maleEvil
	+ ~InParty("Viconia")~ + @13057 /* You see I'm travelling with Viconia, right? */ GOTO 1femaleEvil
	+ ~Alignment(Player1,MASK_EVIL)~ + @13058 /* You do realize I'm Sharran, right? */ GOTO 1sharran
	++ @13059 /* What exactly do you expect me to do? */ GOTO 1expect
	++ @13060 /* What are the rewards? */ GOTO 1rewards
	++ @13061 /* What kind of Lathanderite are you, seeking to hire a bounty hunter? */ GOTO 1just
	++ @13062 /* I'll do it. */ GOTO 1yes
	++ @13063 /* No thanks. */ GOTO 1no
END

IF ~~ THEN BEGIN 1maleEvil
	SAY @13066 /* I did notice, yes. He’s rather hard to miss. But Lathander preaches redemption, and how can Evil redeem itself if not given a chance? Anything else? */
	+ ~Kit(Player1,MAGESCHOOL_NECROMANCER)~ + @13053 /* You realize that I’m a necromancer, right? */ GOTO 1necro
	+ ~InParty("Viconia")~ + @13057 /* You see I'm travelling with Viconia, right? */ GOTO 1femaleEvil
	+ ~Alignment(Player1,MASK_EVIL)~ + @13058 /* You do realize I'm Sharran, right? */ GOTO 1sharran
	+ ~Alignment(Player1,MASK_EVIL)~ + @13059 /* What exactly do you expect me to do? */ GOTO 1expect
	++ @13060 /* What are the rewards? */ GOTO 1rewards
	++ @13061 /* What kind of Lathanderite are you, seeking to hire a bounty hunter? */ GOTO 1just
	++ @13062 /* I'll do it. */ GOTO 1yes
	++ @13063 /* No thanks. */ GOTO 1no
END

IF ~~ THEN BEGIN 1femaleEvil
	SAY @13067 /* I did notice, yes. She’s rather hard to miss. But Lathander preaches redemption, and how can Evil redeem itself if not given a chance? Anything else? */
	+ ~Kit(Player1,MAGESCHOOL_NECROMANCER)~ + @13053 /* You realize that I’m a necromancer, right? */ GOTO 1necro
	+ ~InParty("Dorn")~ + @13054 /* You see I'm travelling with Dorn, right? */ GOTO 1maleEvil
	+ ~InParty("Tiax")~ + @13055 /* You see I'm travelling with Tiax, right? */ GOTO 1maleEvil
	+ ~InParty("Xzar")~ + @13056 /* You see I'm travelling with Xzar, right? */ GOTO 1maleEvil
	+ ~Alignment(Player1,MASK_EVIL)~ + @13058 /* You do realize I'm Sharran, right? */ GOTO 1sharran
	++ @13059 /* What exactly do you expect me to do? */ GOTO 1expect
	++ @13060 /* What are the rewards? */ GOTO 1rewards
	++ @13061 /* What kind of Lathanderite are you, seeking to hire a bounty hunter? */ GOTO 1just
	++ @13062 /* I'll do it. */ GOTO 1yes
	++ @13063 /* No thanks. */ GOTO 1no
END

IF ~~ THEN BEGIN 1sharran
	SAY @13068 /* I did notice, yes. Rather odd that you would just announce that though—I thought your faith preached secrecy? Regardless, don’t you believe in personal loss and darkening your soul to find truth? What darkens one’s soul more than killing? And besides, Lathander preaches redemption, and how can you redeem yourself if not given a chance? Consider this an opportunity… one that will either strengthen or weaken your faith. I wonder which it will be. Anything else? */
	+ ~Kit(Player1,MAGESCHOOL_NECROMANCER)~ + @13053 /* You realize that I’m a necromancer, right? */ GOTO 1necro
	+ ~InParty("Dorn")~ + @13054 /* You see I'm travelling with Dorn, right? */ GOTO 1maleEvil
	+ ~InParty("Tiax")~ + @13055 /* You see I'm travelling with Tiax, right? */ GOTO 1maleEvil
	+ ~InParty("Xzar")~ + @13056 /* You see I'm travelling with Xzar, right? */ GOTO 1maleEvil
	+ ~InParty("Viconia")~ + @13057 /* You see I'm travelling with Viconia, right? */ GOTO 1femaleEvil
	++ @13059 /* What exactly do you expect me to do? */ GOTO 1expect
	++ @13060 /* What are the rewards? */ GOTO 1rewards
	++ @13061 /* What kind of Lathanderite are you, seeking to hire a bounty hunter? */ GOTO 1just
	++ @13062 /* I'll do it. */ GOTO 1yes
	++ @13063 /* No thanks. */ GOTO 1no
END

IF ~~ THEN BEGIN 1expect
	SAY @13069 /* I’ll point you towards something, and you go solve it. Usually, this will mean smiting undead or collecting a bounty. But do keep in mind that violence isn’t always the only option. Sometimes words are the greatest weapon. But if words don’t work, I’ve found that a well-placed dagger often does the trick. Anything else? */
	+ ~Kit(Player1,MAGESCHOOL_NECROMANCER)~ + @13053 /* You realize that I’m a necromancer, right? */ GOTO 1necro
	+ ~InParty("Dorn")~ + @13054 /* You see I'm travelling with Dorn, right? */ GOTO 1maleEvil
	+ ~InParty("Tiax")~ + @13055 /* You see I'm travelling with Tiax, right? */ GOTO 1maleEvil
	+ ~InParty("Xzar")~ + @13056 /* You see I'm travelling with Xzar, right? */ GOTO 1maleEvil
	+ ~InParty("Viconia")~ + @13057 /* You see I'm travelling with Viconia, right? */ GOTO 1femaleEvil
	+ ~Alignment(Player1,MASK_EVIL)~ + @13058 /* You do realize I'm Sharran, right? */ GOTO 1sharran
	++ @13060 /* What are the rewards? */ GOTO 1rewards
	++ @13061 /* What kind of Lathanderite are you, seeking to hire a bounty hunter? */ GOTO 1just
	++ @13062 /* I'll do it. */ GOTO 1yes
	++ @13063 /* No thanks. */ GOTO 1no
END

IF ~~ THEN BEGIN 1rewards
	SAY @13070 /* You mean materially? Gold, mostly. Some potions or magical trinkets here and there. It will be rather straightforward. You’ll gain experience as well, which is vital for any adventurer. I’ll try not to throw you in over your head; it wouldn’t do for either of us for you to get killed—I’d be out of a field-worker, and you’d be out of, well, your life. Bad for the both of us. Anything else? */
	+ ~Kit(Player1,MAGESCHOOL_NECROMANCER)~ + @13053 /* You realize that I’m a necromancer, right? */ GOTO 1necro
	+ ~InParty("Dorn")~ + @13054 /* You see I'm travelling with Dorn, right? */ GOTO 1maleEvil
	+ ~InParty("Tiax")~ + @13055 /* You see I'm travelling with Tiax, right? */ GOTO 1maleEvil
	+ ~InParty("Xzar")~ + @13056 /* You see I'm travelling with Xzar, right? */ GOTO 1maleEvil
	+ ~InParty("Viconia")~ + @13057 /* You see I'm travelling with Viconia, right? */ GOTO 1femaleEvil
	+ ~Alignment(Player1,MASK_EVIL)~ + @13058 /* You do realize I'm Sharran, right? */ GOTO 1sharran
	++ @13059 /* What exactly do you expect me to do? */ GOTO 1expect
	++ @13061 /* What kind of Lathanderite are you, seeking to hire a bounty hunter? */ GOTO 1just
	++ @13062 /* I'll do it. */ GOTO 1yes
	++ @13063 /* No thanks. */ GOTO 1no
END

IF ~~ THEN BEGIN 1just
	SAY @13071 /* A practical one, of course. Someone has to solve these problems, and Morninglord knows that the Flaming Fist won’t. We have paladins, but they…. Well, some of these tasks require subtlety and discretion, and paladins aren't known for having either. I used to be able to do all these tasks myself, but my duties and old injuries keep me confined indoors. Anything else? */
	+ ~Kit(Player1,MAGESCHOOL_NECROMANCER)~ + @13053 /* You realize that I’m a necromancer, right? */ GOTO 1necro
	+ ~InParty("Dorn")~ + @13054 /* You see I'm travelling with Dorn, right? */ GOTO 1maleEvil
	+ ~InParty("Tiax")~ + @13055 /* You see I'm travelling with Tiax, right? */ GOTO 1maleEvil
	+ ~InParty("Xzar")~ + @13056 /* You see I'm travelling with Xzar, right? */ GOTO 1maleEvil
	+ ~InParty("Viconia")~ + @13057 /* You see I'm travelling with Viconia, right? */ GOTO 1femaleEvil
	+ ~Alignment(Player1,MASK_EVIL)~ + @13058 /* You do realize I'm Sharran, right? */ GOTO 1sharran
	++ @13059 /* What exactly do you expect me to do? */ GOTO 1expect
	++ @13060 /* What are the rewards? */ GOTO 1rewards
	++ @13062 /* I'll do it. */ GOTO 1yes
	++ @13063 /* No thanks. */ GOTO 1no
END

IF ~~ THEN BEGIN 1no
	SAY @13072 /* That’s unfortunate. I’ll be here if you change your mind. */ IF ~~ THEN EXIT
END

/////////////////////////////////
// An Ordinary Haunting
////////////////////////////////

IF ~~ THEN BEGIN 1yes
	SAY @13073 /* Just what I was hoping to hear. I hope you’re ready to get started soon—if not right away. There’s a house here in Beregost that’s haunted by a ghost. The big yellowish house with the blue roof across from the Burning Wizard. See if you can find a way to get rid of it. Any questions?  */
	++ @13074 /* Any advice? */ GOTO 2advice
	++ @13075 /* You seem capable—why are you sending me to do this? */ GOTO 2why
	++ @13076 /* No questions. I'm on it. */ GOTO 2accept
END

IF ~~ THEN BEGIN 2advice
	SAY @13077 /* Lingering spirits often linger for a reason. If you manage to kill it, it may just come back. Not all problems can be solved with steel and violence. See what it wants and see if you can fulfill its wish. Anything else? */
	++ @13075 /* You seem capable—why are you sending me to do this? */ GOTO 2why
	++ @13076 /* No questions. I'm on it. */ GOTO 2accept
END

IF ~~ THEN BEGIN 2why
	SAY @13078 /* We are more effective and useful in some places, than in others. To be blunt, I am more useful in the temple than you would be. I believe that you can handle this, so why not send you in my stead? And how else would you gain experience? Adventurers without experience tend to die rather quickly. Anything else? */
	++ @13074 /* Any advice? */ GOTO 2advice
	++ @13076 /* No questions. I'm on it. */ GOTO 2accept
END


IF ~~ THEN BEGIN 2accept
	SAY @13079 /* Good. Lathander go with you. */
IF ~~ THEN DO ~
   SetGlobal("GGBFMQ","GLOBAL",1) SetGlobal("gBFq1","GLOBAL",1) AddJournalEntry(@5100, QUEST)~ EXIT
END

IF ~Global("gBFq1","GLOBAL",1)~ THEN BEGIN 2work
	SAY @13080 /* Go solve the haunting, <CHARNAME>. */ IF ~~ THEN EXIT
END

IF ~Global("GGBFMQ","GLOBAL",1) Global("gBFq1","GLOBAL",2)~ THEN BEGIN 2report
	SAY @13081 /* Anything to report? */ 
	++ @13082 /* The ghost wanted to be buried with his coin collection. I found the collection, handed it over, and then he left peacefully. */ GOTO 2reward
END

/////////////////////////////////
// Hunting the Hunstman
////////////////////////////////

IF ~~ THEN BEGIN 2reward
	SAY @13083 /* Good work, <CHARNAME>. Take these potions as a reward. You’ve earned them, and they’ll prove useful in this next task, I suspect. Remember how I said that not all problems can be solved with violence? Well, I have a feeling that this problem can *only* be solved with violence. Travelers have been disappearing between Beregost and the Friendly Arm Inn. At first, we thought it was bandits. Eventually, there was a survivor, and we now know that this is no bandit—this is a follower of Malar. Malarites believe that only the strongest deserve to survive, and so violence is the only language that they understand. Find the Malarite in the Coast Way and kill him. Any questions? */
	++ @13084 /* What can you tell me about Malar? */ GOTO 3lore
	++ @13085 /* Should I at least try to talk to him? I thought Lathander believes in redemption. */ GOTO 3lath
	//++ @13086 /* Why are you sending me on this mission? I could die. */ GOTO 3die
	++ @13087 /* Any idea where the Malarite is hiding? */ GOTO 3where
	++ @13088 /* No more questions. I’m on it. */ GOTO 3yes
END

IF ~~ THEN BEGIN 3lore
	SAY @13089 /* Malar is the malevolent god of the hunt. Bloodthirsty, feral, and savage, he encourages the worst in his followers, and they revel in such things. He has an alliance with deities like Lolth and Loviatar, insofar as they are capable of having alliances. Bloodthirsty and violent deities aren’t the most… well, they don’t cooperate well with others. Expect some sort of predator-prey dynamic or a very twisted game of hide-and-seek. Anything else? */
	++ @13085 /* Should I at least try to talk to him? I thought Lathander believes in redemption. */ GOTO 3lath
	// ++ @13086 /* Why are you sending me on this mission? I could die. */ GOTO 3die
	++ @13087 /* Any idea where the Malarite is hiding? */ GOTO 3where
	++ @13088 /* No more questions. I’m on it. */ GOTO 3yes
END

IF ~~ THEN BEGIN 3lath
	SAY @13090 /* Lathander does believe in redemption, but he’s not naïve. Neither am I. People must want to change to do so. Doubtful that this Malarite wants to change, and we can’t wait on a decision that may never happen, especially when people are dying in the meantime. Anything else? */
	++ @13084 /* What can you tell me about Malar? */ GOTO 3lore
	++ @13086 /* Why are you sending me on this mission? I could die. */ GOTO 3die
	++ @13087 /* Any idea where the Malarite is hiding? */ GOTO 3where
	++ @13088 /* No more questions. I’m on it. */ GOTO 3yes
END

IF ~~ THEN BEGIN 3die
	SAY @13091 /* If a commoner managed to escape this Malarite, I’m sure you’ll be fine. And I just gave you a few healing potions. */
	++ @13084 /* What can you tell me about Malar? */ GOTO 3lore
	++ @13085 /* Should I at least try to talk to him? I thought Lathander believes in redemption. */ GOTO 3lath
	++ @13087 /* Any idea where the Malarite is hiding? */ GOTO 3where
	++ @13088 /* No more questions. I’m on it. */ GOTO 3yes
END

IF ~~ THEN BEGIN 3where
	SAY @13092 /* The latest victims were traveling with a single wagon and didn’t make it very far north. I’d look for a hidden entrance in the southernmost cliffs of the Coast Way. */
	++ @13084 /* What can you tell me about Malar? */ GOTO 3lore
	++ @13085 /* Should I at least try to talk to him? I thought Lathander believes in redemption. */ GOTO 3lath
	++ @13086 /* Why are you sending me on this mission? I could die. */ GOTO 3die
	++ @13088 /* No more questions. I’m on it. */ GOTO 3yes
END

IF ~~ THEN BEGIN 3yes
	SAY @13093 /* Good. May Lathander light your way to victory. And here, some gold for solving the haunting. */
IF ~~ THEN DO ~
   SetGlobal("GGBFMQ","GLOBAL",2) SetGlobal("gBFq2","GLOBAL",1) GiveGoldForce(200) GiveItemCreate("POTN52",Player1,1,1,0) GiveItemCreate("POTN20",Player1,1,1,0) GiveItemCreate("POTN08",Player1,1,1,0) GiveItemCreate("POTN08",Player1,1,1,0) AddJournalEntry(@5102, QUEST) AddJournalEntry(@5103, QUEST)~ EXIT
END

//came back before success
IF ~Global("gBFq2","GLOBAL",1) !Dead("gg_malar") ~ THEN BEGIN 3comebacklater
	SAY @13094 /* Don’t rush but do hurry. The longer you take, the more time he has to snatch someone else. */ IF ~~ THEN EXIT

END

//came back successful
IF ~Global("gBFq2","GLOBAL",1) Dead("gg_malar") ~ THEN BEGIN 3killedmalarite
	SAY @13081 /* Anything to report? */
	++ @13095 /* The Malarite is dead. */ GOTO 3yay
END

IF ~~ THEN BEGIN 3yay
	SAY @13096 /* Good work, <CHARNAME>. I knew you could do it! But tell me, <CHARNAME>… how did this last mission make you feel? */
	++ @13097 /* What kind of question is that? */ GOTO 3answer
	++ @13098 /* I… I don’t know. How should I feel? */ GOTO 3idk
	++ @13099 /* Terrible. I didn’t want to kill the Malarite, but… */ GOTO 3feelsbadman
	++ @13100 /* It felt fine. Why wouldn’t it? */ GOTO 3iduncare
	++ @13101 /* It was a good challenge. I enjoyed it, to be honest. */ GOTO 3feelsgreat
END

IF ~~ THEN BEGIN 3answer
	SAY @13102 /* You’re young, inexperienced, and largely unused to killing people, aren’t you? I want to make sure that you’re okay, and ready for the next mission. Now, answer the question. How did killing the Malarite feel? */
	++ @13098 /* I… I don’t know. How should I feel? */ GOTO 3idk
	++ @13099 /* Terrible. I didn’t want to kill the Malarite, but… */ GOTO 3feelsbadman
	++ @13100 /* It felt fine. Why wouldn’t it? */ GOTO 3iduncare
	++ @13101 /* It was a good challenge. I enjoyed it, to be honest. */ GOTO 3feelsgreat
END

IF ~~ THEN BEGIN 3idk
	SAY @13103 /* I can’t tell you that. I don’t know myself. Satisfied at a job well done? Horrified that it had to come to this? Malar would be pleased with you for your victory, I think, even though you killed one of his followers. You were the stronger, after all. Now, sort yourself out, <CHARNAME>. Conflicted adventurers tend not to live very long, even if they are interesting. This is enough musing for now. Talk to me again when you're ready for something to do. */ IF ~~ THEN DO ~
 SetGlobal("gBFq2","GLOBAL",2) SetGlobal("GGBFMQ","GLOBAL",2) GiveItemCreate("POTN21",Player1,1,1,0) AddJournalEntry(@51033, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150)~ EXIT
END // POTN21 Clarity


IF ~~ THEN BEGIN 3feelsbadman
	SAY @13104 /* But what? I assure you that not killing him would feel worse in the long run, considering that he would keep killing innocent people. We have blood on our hands and we bear whatever guilt we have, so that others don’t have to. You took the life in front of you, yes, but in doing so, you saved lives that you cannot see. Now, sort yourself out, <CHARNAME>. Conflicted adventurers tend not to live very long, even if they are interesting. This is enough musing for now. Talk to me again when you're ready for something to do. */ IF ~~ THEN DO ~
 SetGlobal("gBFq2","GLOBAL",2) SetGlobal("GGBFMQ","GLOBAL",2) GiveItemCreate("POTN21",Player1,1,1,0) AddJournalEntry(@51033, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150)~ EXIT
END // POTN21 Clarity

IF ~~ THEN BEGIN 3iduncare
	SAY @13105 /* I don’t know, to be honest. It seems that we are similar, you and I. Sometimes, taking a life is the best or only course of action. But there’s no need to keep musing. Talk to me again when you're ready for something to do. */ IF ~~ THEN DO ~
   IncrementGlobal("gBFrsP","GLOBAL",1) SetGlobal("gBFq2","GLOBAL",2) SetGlobal("GGBFMQ","GLOBAL",2) GiveItemCreate("POTN45",Player1,1,1,0) AddJournalEntry(@51033, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150)~ EXIT
END // POTN45 Freedom

IF ~~ THEN BEGIN 3feelsgreat
	SAY @13106 /* Well, you’ve certainly found your calling then. Malar would be pleased with you, I think. Adventuring is a violent and challenging profession. But do be careful of your targets—indiscriminate killing is an excellent way to become hunted by the dogs of justice, and throwing yourself at challenges is an excellent way to get in over your head and get yourself killed that way. But that’s enough preaching from me. Talk to me again when you're ready for something to do. */ IF ~~ THEN DO ~
   IncrementGlobal("gBFdP","GLOBAL",1) SetGlobal("gBFq2","GLOBAL",2) SetGlobal("GGBFMQ","Global",2) GiveItemCreate("POTN21",Player1,1,1,0) AddJournalEntry(@51033, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150) ~ EXIT
END // POTN21 Clarity


/////////////////////////////////
// Errant Funeral
////////////////////////////////

IF ~Global("GGBFMQ","GLOBAL",2)~ THEN BEGIN questFuneral
	SAY @13107 /* Now, I’ve got a task that requires some discretion. The Helmites in Nashkel want one of us to investigate something, and so I’m sending you. Their grave keeper has lost a body, and the family is naturally furious. And they became even angrier when the Helmites suggested that their dearly departed had become undead, so don’t expect a warm welcome. Naturally, everyone wants to keep a missing body and possibility of undead on the downlow. Nashkel has enough problems as-is. Anyway, figure out what happened to the body, won’t you? Any questions? */
	++ @13108 /* What can you tell me about the missing body? */ GOTO 3body
	++ @13109 /* Why does anyone suspect undead? */ GOTO 3undead
	+ ~!Dead("mulahey")~ +  @13110 /* What other problems does Nashkel have? */ GOTO 3problems
	++ @13111 /* Why me for this? */ GOTO 3you
	++ @13076 /* No questions. I'm on it. */ GOTO 3accept
END

IF ~~ THEN BEGIN 3body
	SAY @13112 /* Elderly human male, died of natural causes, so far as we know. Had a Helmite funeral—not unusual in Nashkel. By all accounts, everything was perfectly normal. Except for the part where he’s gone. Anything else? */
	++ @13109 /* Why does anyone suspect undead? */ GOTO 3undead
	+ ~!Dead("mulahey")~ +  @13110 /* What other problems does Nashkel have? */ GOTO 3problems
	++ @13111 /* Why me for this? */ GOTO 3you
	++ @13076 /* No questions. I'm on it. */ GOTO 3accept
END

IF ~~ THEN BEGIN 3undead
	SAY @13113 /* Well, when a body disappears from its grave, there are two options: either the body became undead and walked off on its own, or there’s an active graverobber. Your task is to find out which and solve the problem. Anything else? */
	++ @13108 /* What can you tell me about the missing body? */ GOTO 3body
	+ ~!Dead("mulahey")~ +  @13110 /* What other problems does Nashkel have? */ GOTO 3problems
	++ @13111 /* Why me for this? */ GOTO 3you
	++ @13076 /* No questions. I'm on it. */ GOTO 3accept
END

IF ~~ THEN BEGIN 3problems
	SAY @13114 /* <CHARNAME>, did you just leave a secluded monastery or something? Nashkel depends heavily on its iron mine, but with the Iron Crisis… The iron from Nashkel’s mine is tainted somehow. It’s brittle and breaks easily. Additionally, I hear that something happened with their guard commander. He killed several people before disappearing. It’s a tumultuous time for Nashkel, certainly. Don’t make it worse. Anything else? */
	++ @13108 /* What can you tell me about the missing body? */ GOTO 3body
	++ @13109 /* Why does anyone suspect undead? */ GOTO 3undead
	++ @13111 /* Why me for this? */ GOTO 3you
	++ @13076 /* No questions. I'm on it. */ GOTO 3accept
END

IF ~~ THEN BEGIN 3you
	SAY @13115 /* Well, normally, we’d send one of our clerics, but they’re a bit busy, considering the bandit problems. You have experience putting the dead to rest and with killing necromancers. No matter what the issue is, you have experience with it. Besides, there’s plenty to see and do in Nashkel. If the mines aren’t your speed, then I hear the carnival is lovely. Anything else? */
	++ @13108 /* What can you tell me about the missing body? */ GOTO 3body
	++ @13109 /* Why does anyone suspect undead? */ GOTO 3undead
	+ ~!Dead("mulahey")~ +  @13110 /* What other problems does Nashkel have? */ GOTO 3problems
	++ @13076 /* No questions. I'm on it. */ GOTO 3accept
END

IF ~~ THEN BEGIN 3accept
	SAY @13116 /* Good. Godspeed, <CHARNAME>. */
IF ~~ THEN DO ~
   SetGlobal("GGBFMQ","GLOBAL",3) SetGlobal("gBFq3","GLOBAL",1) AddJournalEntry(@5104, QUEST)~ EXIT
END

IF ~Global("GGBFMQ","GLOBAL",3) Global("gBFq3","GLOBAL",1)~ THEN BEGIN funeralUnfinished
	SAY @13117 /* Get to your task, <CHARNAME>.   */ IF ~~ THEN EXIT
END

IF ~Global("GGBFMQ","GLOBAL",3) Global("gBFq3","GLOBAL",2)~ THEN BEGIN funeralUnfinished2
	SAY @13117 /* Get to your task, <CHARNAME>.   */ IF ~~ THEN EXIT
END

IF ~Global("GGBFMQ","GLOBAL",3) Global("gBFq3","GLOBAL",3)~ THEN BEGIN funeralUnfinished3
	SAY @13117 /* Get to your task, <CHARNAME>.   */ IF ~~ THEN EXIT
END

IF ~Global("GGBFMQ","GLOBAL",3) Global("gBFq3","GLOBAL",4)~ THEN BEGIN funeralDone
	SAY @13118 /* How goes your task? */
	++ @13119 /* Turns out that the man rose from the dead, because he was unhappy with the Helmite funeral that he had. He was a follower of Ibrandul and wanted a funeral according to that faith. */ GOTO 3debrief
END

IF ~~ THEN BEGIN 3debrief
	SAY @13120 /* Hm. Interesting. The dead are picky about their funerals sometimes. Ibrandul is interesting, as he’s allied with both Mask and Ilmater, who are enemies themselves. He’s also diametrically opposed to Lathander. I’m curious, <CHARNAME>--when you find yourself in the company of someone diametrically opposed to your faith, what do you think you’ll do? */
	++ @13121 /* Well, I'm working with you, aren't I? */ GOTO 3debrieflol
	++ @13122 /* My faith stands for Good, so anyone diametrically opposed would be Evil. I would do what was necessary. */ GOTO 3debriefSmite
	++ @13123 /* I don’t think I’d do anything. Everything has its place in the grand scheme of things. */ GOTO 3debriefbalance
	++ @13124 /* Such a massive disagreement would only lead to violence in the end. */ GOTO 3debriefviolent
	++ @13125 /* I don’t think I’d be able to persuade them of anything, but I can at least set an example that there are other ways to live. */ GOTO 3debriefexample
	++ @13126 /* I'm honestly not certain. */ GOTO 3debriefidk
END

IF ~~ THEN BEGIN 3debrieflol
	SAY @13127 /* Ha! Fair enough, <CHARNAME>, fair enough. That is one thing that I appreciate about you. Talk to me again when you're ready for something to do. */ IF ~~ THEN DO ~
   IncrementGlobal("gBFrsP","GLOBAL",1)  SetGlobal("GGBFMQ","GLOBAL",4) AddJournalEntry(@5107, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150)  GiveItemCreate("g_bfci",Player1,1,1,0)~ EXIT
END

IF ~~ THEN BEGIN 3debriefSmite
	SAY @13128 /* And how do you determine what is necessary? How do you decide when to let Evil live, and when to condemn Evil to die? If we killed Evil whenever we see it, no one would get a chance to redeem themselves. We’d be damning everyone we come across. But if we let Evil live all the time, would we be partially responsible for the evil acts that they commit later? Hm. But I suppose there’s no point in musing about it now. Talk to me again when you're ready for something to do. */ IF ~~ THEN DO ~
 IncrementGlobal("gBFdP","GLOBAL",1)  SetGlobal("GGBFMQ","GLOBAL",4) AddJournalEntry(@5107, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150) GiveItemCreate("g_bfci",Player1,1,1,0)~ EXIT
END

IF ~~ THEN BEGIN 3debriefbalance
	SAY @13129 /* The darkness helps us appreciate the dawn, is that it? Hm. Not sure I agree with that, but there’s no time for musings. Talk to me again when you're ready for something to do. */ IF ~~ THEN DO ~
SetGlobal("GGBFMQ","GLOBAL",4) AddJournalEntry(@5107, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150) GiveItemCreate("g_bfci",Player1,1,1,0)~ EXIT
END


IF ~~ THEN BEGIN 3debriefviolent
	SAY @13130 /* And who would be the instigator in such a situation? Sometimes, who we perceive as an enemy can give us a pleasant surprise. Perhaps it is wiser to stay your hand and see what comes of the situation. Talk to me again when you're ready for something to do. */ IF ~~ THEN DO ~
IncrementGlobal("gBFdP","GLOBAL",1)  SetGlobal("GGBFMQ","GLOBAL",4) AddJournalEntry(@5107, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150) GiveItemCreate("g_bfci",Player1,1,1,0)~ EXIT
END

IF ~~ THEN BEGIN 3debriefexample
	SAY @13131 /* And then if they get curious enough, they can learn more themselves, is that it? That sometimes works. Talk to me again when you're ready for something to do. */ IF ~~ THEN DO ~
IncrementGlobal("gBFrdP","GLOBAL",1)  SetGlobal("GGBFMQ","GLOBAL",4) AddJournalEntry(@5107, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150) GiveItemCreate("g_bfci",Player1,1,1,0)~ EXIT
END


IF ~~ THEN BEGIN 3debriefidk
	SAY @13132 /* You might want to think about it–something like this may happen sooner than you expect. Talk to me again when you're ready for something to do. */ IF ~~ THEN DO ~
SetGlobal("GGBFMQ","GLOBAL",4) AddJournalEntry(@5107, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150) GiveItemCreate("g_bfci",Player1,1,1,0)~ EXIT
END


/////////////////////////////////
// The Rat King
////////////////////////////////

IF ~Global("GGBFMQ","GLOBAL",4) Global("gBFq4","GLOBAL",0) ~ THEN BEGIN ratKing
	SAY @13133 /* I hope you won’t mind a departure from the norm here. No undead, necromancers, or cultists this time. One of the locals is having a rat problem, and I want you to deal with it. She lives near the Burning Wizard. Any questions? */
	++ @13134 /* You want me to take care of a bunch of rats? */ GOTO ratglamour
	++ @13088 /* No more questions. I’m on it. */ GOTO ratOn
END

IF ~~ THEN BEGIN ratglamour
	SAY @13135 /* Well, I never said that every task I send you on would be exciting and glamorous, did I? The Temple has a responsibility to Beregost and its citizenry. The homeowners asked the Flaming Fist before coming to us, but the Fist refused, of course. Don’t be so glum, perhaps something interesting will turn up. And besides, isn’t dealing with a rat problem a rite of passage for adventurers? Anything else? */
	++ @13088 /* No more questions. I’m on it. */ GOTO ratOn
END


IF ~~ THEN BEGIN ratOn
	SAY @13136 /* Good. */ IF ~~ THEN DO ~
 SetGlobal("gBFq4","GLOBAL",1) AddJournalEntry(@5108, QUEST)~ EXIT
END

IF ~ Global("gBFq4","GLOBAL",1) !Dead("g_rk")~ THEN BEGIN ratLater
	SAY @13137 /* Come back when you've resolved the situation. */ IF ~~ THEN EXIT
END

//talked to Rat King, who is still alive
IF ~ Global("gBFq4","GLOBAL",2) !Dead("g_rk")~ THEN BEGIN ratwtf
	SAY @13138 /* A lycanthrope? Here? By the Morninglord… I wish I could join you for this. But I can still help from here. Try to avoid a fight and do what you can to convince the wererat to leave peacefully. He hasn’t been violent yet, so I think there’s a chance. And here’s a silver dagger, just in case. Unfortunately, I only have the one. And good luck, <CHARNAME>. */ IF ~~ THEN DO ~
  GiveItemCreate("DAGG09",Player1,1,1,0) SetGlobal("gBFq4","GLOBAL",3) ~ EXIT
END

IF ~ Global("gBFq4","GLOBAL",3) !Dead("g_rk")~ THEN BEGIN ratLater2
	SAY @13139 /* Come back when you've resolved the situation. And good luck. */ IF ~~ THEN EXIT
END


//killed rat king
IF ~GlobalLT("gBFq4","GLOBAL",4) Dead("g_rk")~ THEN BEGIN ratDead
	SAY @13081 /* Anything to report? */
	++ @13140 /* I've slain the wererat. */ GOTO ratDeadD
END

IF ~~ THEN BEGIN ratDeadD
	SAY @13141 /* So, I’m curious. Why kill the lycanthrope? I’m sure it was a difficult fight. */
	++ @13142 /* Lycanthropes are evil; I couldn’t let him live. */ GOTO ratEvil
	++ @13143 /* Lycanthropes are too dangerous, especially near civilization. It was too risky to not kill him. */ GOTO ratDanger
	++ @13144 /* I wanted a difficult fight. */ GOTO ratFight
	++ @13145 /* I couldn’t convince him. It was my only option. */ GOTO ratSad
END

IF ~~ THEN BEGIN ratEvil
	SAY @13146 /* Irredeemably evil by virtue of existence? That’s cold, <CHARNAME>. What of the Selunite lycanthropes? Well, let’s hope there’s never any surprises about what *you* are. Ah, but we don’t have time to dwell on this now. Talk to me again when you want something to do. */ 
IF ~~ THEN DO ~
   IncrementGlobal("gBFdP","GLOBAL",1) SetGlobal("gBFq4","GLOBAL",5) SetGlobal("GGBFMQ","GLOBAL",5) AddJournalEntry(@5111, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150)~ EXIT
END

IF ~~ THEN BEGIN ratDanger
	SAY @13147 /* I wonder, <CHARNAME>…. Will there ever be a time when *you* become so dangerous and powerful that someone believes that you’re too risky to stay alive? Ah, but we don’t have time to dwell on this now. Talk to me again when you want something to do. */ 
IF ~~ THEN DO ~
   IncrementGlobal("gBFdP","GLOBAL",1) SetGlobal("gBFq4","GLOBAL",5) SetGlobal("GGBFMQ","GLOBAL",5) AddJournalEntry(@5111, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150)~ EXIT
END


IF ~~ THEN BEGIN ratFight
	SAY @13148 /* Did you? I’m sure you got one. I wonder if someone should ever believe the same of you. What then? Though perhaps you’d relish the opportunity. Ah, but we don’t have time for this. Talk to me again when you want something to do. */ 
IF ~~ THEN DO ~
   IncrementGlobal("gBFdP","GLOBAL",1) SetGlobal("gBFq4","GLOBAL",5) SetGlobal("GGBFMQ","Global",5) AddJournalEntry(@5111, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150)~ EXIT
END

IF ~~ THEN BEGIN ratSad
	SAY @13149 /* That’s unfortunate, but it’s reality. I’m sorry, <CHARNAME>, I really am. Ah, but I’m afraid we don’t have any time. Talk to me again when you want something to do. */ 
IF ~~ THEN DO ~
 SetGlobal("GGBFMQ","GLOBAL",5) SetGlobal("gBFq4","GLOBAL",5) AddJournalEntry(@5111, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150)~ EXIT
END



//convinced rat king to leave
IF ~ Global("gBFq4","GLOBAL",4) !Dead("g_rk")~ THEN BEGIN ratRelo
	SAY @13081 /* Anything to report? */
	+ ~Global("gBF4rk","GLOBAL",0)~ + @13150 /* The rats were led by a lycanthrope, and I convinced them to leave for the warrens that the Malarite used to occupy. */ GOTO ratLive
	+ ~Global("gBF4rk","GLOBAL",1)~ + @13308 /* The rats were led by a lycanthrope, and I convinced them to leave. */ GOTO ratLive
END

IF ~~ THEN BEGIN ratLive
	SAY @13151 /* So, I’m curious. Why keep the lycanthrope alive? */
	++ @13152 /* He wasn’t hostile. I’m not attacking someone who doesn’t want to fight. It’s wrong and dishonorable. */ GOTO ratHonor
	++ @13153 /* He wasn’t doing anything wrong. He didn’t deserve to die just because he’s a wererat. */ GOTO ratHappy
	++ @13154 /* I just really, really didn’t want to fight a lycanthrope. */ GOTO ratCoward
END

IF ~~ THEN BEGIN ratHonor
	SAY @13155 /* Dishonorable? Yes, I suppose we all have some guiding principles. Or should, anyway. Good on you, <CHARNAME>.Talk to me again when you want something to do. */ 
IF ~~ THEN DO ~
   IncrementGlobal("gBFrsP","GLOBAL",1)  SetGlobal("gBFq4","GLOBAL",5) SetGlobal("GGBFMQ","GLOBAL",5) AddJournalEntry(@5111, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150)~ EXIT
END

IF ~~ THEN BEGIN ratHappy
	SAY @13156 /* So we can’t help what we are, but we can help who we become. Is that it? I truly hope you’re correct, <CHARNAME>. Really I do. And I wish that more people would agree with you. Ah, no point dwelling on this though.Talk to me again when you want something to do. */ 
IF ~~ THEN DO ~
   IncrementGlobal("gBFrdP","GLOBAL",1) SetGlobal("gBFq4","GLOBAL",5) SetGlobal("GGBFMQ","GLOBAL",5) AddJournalEntry(@5111, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150)~ EXIT
END

IF ~~ THEN BEGIN ratCoward
	SAY @13157 /* Cowardly, but sometimes cowardice keeps you alive. Talk to me again when you want something to do. */ 
IF ~~ THEN DO ~
SetGlobal("GGBFMQ","GLOBAL",5) SetGlobal("gBFq4","GLOBAL",5) AddJournalEntry(@5111, QUEST) AddXPObject(Player1,150) AddXPObject(Player2,150) AddXPObject(Player3,150) AddXPObject(Player4,150) AddXPObject(Player5,150) AddXPObject(Player6,150)~ EXIT
END

/////////////////////////////////
// Beneath Beregost
////////////////////////////////
//placeholder section. Skipping this quest for now because
//it would be a pain in the ass to implement and because
//it's not narratively important. Might implement later, idk


/////////////////////////////////
// A Zhent Agent
////////////////////////////////

IF ~Global ("GGBFMQ","GLOBAL",5) Global("gBFq5","GLOBAL",0) ~ THEN BEGIN zhentAgent
	SAY @13158 /* Now, I’d love to take the time to have one of our chats, but… there’s a Zhent agent on the way from the Friendly Arm Inn to Beregost. Kill him. Questions? */
	++ @13159 /* Just kill him? Not even talk first? */ GOTO zhentTalk
	++ @13160 /* What should I look for? */ GOTO zhentLook
	++ @13076 /* No questions. I'm on it. */ GOTO zhentGo
END

IF ~~ THEN BEGIN zhentTalk
	SAY @13161 /* The only good Zhent is a dead one, <CHARNAME>. There is the occasional renegade, but that’s not the situation at hand. Anything else? */
	++ @13160 /* What should I look for? */ GOTO zhentLook
	++ @13076 /* No questions. I'm on it. */ GOTO zhentGo
END

IF ~~ THEN BEGIN zhentLook
	SAY @13162 /* It’s a straight shot between here and the Friendly Arm. He’d be a fool to walk on the path, but he’d also be a fool to stray too far from it. And Zhent field agents aren’t exactly known for their subtlety. He shouldn’t be too hard to find. Anything else? */
	++ @13159 /* Just kill him? Not even talk first? */ GOTO zhentTalk
	++ @13076 /* No questions. I'm on it. */ GOTO zhentGo
END

IF ~~ THEN BEGIN zhentGo
	SAY @13136 /* Good. */ IF ~~ THEN DO ~
 SetGlobal("gBFq5","GLOBAL",1) AddJournalEntry(@5114, QUEST)~ EXIT
END

IF ~ Global("gBFq5","GLOBAL",1) !Dead("g_zhent1")~ THEN BEGIN zhentAlive
	SAY @13163 /* Kill the Zhentarim agent, <CHARNAME>.  */ IF ~~ THEN EXIT
END

IF ~ Global("gBFq5","GLOBAL",1) Dead("g_zhent1")~ THEN BEGIN zhentAlive
	SAY @13164 /* Hello again, <CHARNAME>. How goes your task? */
	++ @13165 /* The Zhent agent is dead, though he had some things to say first. */ GOTO zhentTalk1
END

IF ~ Global("gBFq5","GLOBAL",1) Dead("g_zhent1")~ THEN BEGIN zhentTalk1
	SAY @13166 /* Did he now? */
	++ @13167 /* He called me your newest toy. */ GOTO zhentToy
	++ @13168 /* Are you a Harper? Is that why you sent me after the Zhent? */ GOTO harper
	++ @13169 /* Why does a Zhent know about you? */ GOTO zhentWhy
	++ @13170 /* Let's move on. */ GOTO zhentMoveOn
END

IF ~~ THEN BEGIN zhentToy
	SAY @13171 /* Did he now? You’re not the first person I’ve sent out into the field. And I doubt you’ll be my last—not because I expect you to die or anything mind you. I’m hoping that you move on for one reason or another. Anything else? */
	++ @13168 /* Are you a Harper? Is that why you sent me after the Zhent? */ GOTO harper
	++ @13169 /* Why does a Zhent know about you? */ GOTO zhentWhy
	++ @13170 /* Let's move on. */ GOTO zhentMoveOn
END

IF ~~ THEN BEGIN harper
	SAY @13172 /* What? No. I’m not nearly—nevermind. I most certainly am not. Anything else? */
	++ @13173 /* He called me your ‘newest toy’. */ GOTO zhentToy
	++ @13169 /* Why does a Zhent know about you? */ GOTO zhentWhy
	++ @13170 /* Let's move on. */ GOTO zhentMoveOn
END

IF ~~ THEN BEGIN zhentWhy
	SAY @13174 /* You mean besides the fact that I’m a Lathanderite, which they hate on principle? And that I go after criminals, which they are? And have been for some time now? It’d be strange if they didn’t know about me. Anything else? */
	++ @13173 /* He called me your ‘newest toy’. */ GOTO zhentToy
	++ @13168 /* Are you a Harper? Is that why you sent me after the Zhent? */ GOTO harper
	++ @13170 /* Let's move on. */ GOTO zhentMoveOn
END

IF ~~ THEN BEGIN zhentMoveOn
	SAY @13175 /* Gladly. When you're ready for another mission, come talk to me. And here's some gold for your trouble. */
IF ~~ THEN DO ~
SetGlobal("GGBFMQ","Global",6) SetGlobal("gBFq5","GLOBAL",2) GiveGoldForce(1000) AddJournalEntry(@5115, QUEST)~ EXIT
END

/////////////////////////////////
// The Hungry Halfling
////////////////////////////////

IF ~Global("GGBFMQ","Global",6) Global("gBFq6","GLOBAL",0)~ THEN BEGIN hungryHalf
	SAY @13176 /* Alright, now that’s behind us. I’m sending you after Lenovola, a rather notorious cannibal. She’s a halfling—though she also eats more than just halflings, so don’t go thinking that any of you are safe either. She’s been preying on people traveling between Beregost and Nashkel, and she’s been spotted near Gullykin from time to time as well. I’d look around the Lonely Peaks. Careful she doesn’t eat you—a mutilated or desecrated body cannot be raised from the dead. If she eats you or any of your companions, there won’t be a damn thing anyone can do about it. Other than kill her, of course. Any questions? */
	++ @13177 /* Any chance of talking to her first? */ GOTO hungryTalk
	++ @13088 /* No more questions. I’m on it. */ GOTO hungryGo
END

IF ~~ THEN BEGIN hungryTalk
	SAY @13178 /* Depends on how hungry she is. In all seriousness, it’s unlikely. Cannibalism is her choice, and I doubt she’ll be deterred from it. Anything else? */
	++ @13088 /* No more questions. I’m on it. */ GOTO hungryGo
END

IF ~~ THEN BEGIN hungryGo
SAY @13136 /* Good. */
IF ~~ THEN DO ~
 SetGlobal("gBFq6","GLOBAL",1) AddJournalEntry(@5116, QUEST)~ EXIT
END

IF ~Global("gBFq6","GLOBAL",1) !Dead("gg_can")~ THEN BEGIN hungryDoIt
	SAY @13179 /* Complete your task. */ IF ~~ THEN EXIT
END

IF ~Global("gBFq6","GLOBAL",1) Dead("gg_can")~ THEN BEGIN canBack
	SAY @13180 /* Ah, you're back and still alive. Excellent. Talk to me again when you're ready for your next task. And here--take this ring. It'll help prevent anyone from cooking you in the future. */ 
IF ~~ THEN DO ~
SetGlobal("GGBFMQ","Global",7) SetGlobal("gBFq6","GLOBAL",2) GiveItemCreate("RING02",Player1,1,1,0) AddJournalEntry(@5117, QUEST)~ EXIT
END

/////////////////////////////////
// Bandits and Thieves
////////////////////////////////

IF ~Global("GGBFMQ","Global",7) Global("gBFq7","GLOBAL",0)~ THEN BEGIN banditThief
	SAY @13181 /* I’ve heard rumors that the bandits are operating in the forests nearby. A Shadow Thief must have also heard these rumors, since he left Amn and went straight for the forests. To the best of our knowledge, he hasn’t left the woods yet. Regardless, if the Shadow Thieves are interested in the bandits for whatever reason, that's something worth knowing. Find the Shadow Thief and find out whatever you can. There’s a chance that he’s already made his way to wherever the bandit camp is, so you may need to find that first. Any questions? */
	++ @13182 /* Where’s the Bandit Camp? */ GOTO banditWhere
	++ @13183 /* What’s a Shadow Thief doing around here? */ GOTO banditWhy
	++ @13184 /* No more questions. I'm on it. */ GOTO banditStart
END

IF ~~ THEN BEGIN banditWhere
	SAY @13185 /* I don’t know. Only the bandits themselves do. You’ll need to get some sort of lead, and I’m afraid I can’t help you there. Anything else? */
	++ @13183 /* What’s a Shadow Thief doing around here? */ GOTO banditWhy
	++ @13184 /* No more questions. I'm on it. */ GOTO banditStart
END

IF ~~ THEN BEGIN banditWhy
	SAY @13186 /* I’m not sure. That’s what I want you to find out. Anything else? */
	++ @13182 /* Where’s the Bandit Camp? */ GOTO banditWhere
	++ @13184 /* No more questions. I'm on it. */ GOTO banditStart
END

IF ~~ THEN BEGIN banditStart
	SAY @13079 /* Good. Lathander go with you. */
IF ~~ THEN DO ~
 SetGlobal("gBFq7","GLOBAL",1) AddJournalEntry(@5118, QUEST)~ EXIT
END

IF ~Global("gBFq7","GLOBAL",1)~ THEN BEGIN banditDoIt
	SAY @13179 /* Complete your task. */ IF ~~ THEN EXIT
END

//Shadow thief lives
IF ~Global("gBFq7","GLOBAL",2) !Dead("g_thief")~ THEN BEGIN banditEnd
	SAY @13164 /* Hello again, <CHARNAME>. How goes your task? */
	++ @13187 /* The Shadow Thief was a renegade. He went to the bandits because he thought they were the only ones who would accept him after his crimes. I directed him here. */ GOTO banditBrief
END

IF ~~ THEN BEGIN banditBrief
	SAY @13188 /* Oh? What influenced that decision? */
	++ @13189 /* He might deserve death for his crimes, but that’s not for me to decide. */ GOTO banditJury
	+~!Alignment(Player1,MASK_EVIL)~+ @13190 /* He seemed repentant, and I thought he deserved a second chance. */ GOTO banditChanceG
	+~Alignment(Player1,MASK_EVIL)~+ @13190 /* He seemed repentant, and I thought he deserved a second chance. */ GOTO banditChanceE
	++ @13191 /* I really didn’t want to fight a Shadow Thief when there were so many bandits around to deal with. */ GOTO banditWise
END

IF ~~ THEN BEGIN banditJury
	SAY @13192 /* So, you don’t want to be the judge, the jury, and the executioner? I can agree with that. Usually. Regardless, I have something else for you. Talk to me again when you're ready. */
IF ~~ THEN DO ~
   IncrementGlobal("gBFrsP","GLOBAL",1) SetGlobal("gBFq7","GLOBAL",3) SetGlobal("GGBFMQ","Global",8) AddJournalEntry(@5120, QUEST) AddXPObject(Player1,200) AddXPObject(Player2,200) AddXPObject(Player3,200) AddXPObject(Player4,200) AddXPObject(Player5,200) AddXPObject(Player6,200)~ EXIT
END

IF ~~ THEN BEGIN banditChanceG
	SAY @13193 /*  You’re a credit to your faith, <CHARNAME>. Talk to me again when you're ready. */
IF ~~ THEN DO ~
   IncrementGlobal("gBFrdP","GLOBAL",1) SetGlobal("gBFq7","GLOBAL",3) SetGlobal("GGBFMQ","Global",8) AddJournalEntry(@5120, QUEST) AddXPObject(Player1,200) AddXPObject(Player2,200) AddXPObject(Player3,200) AddXPObject(Player4,200) AddXPObject(Player5,200) AddXPObject(Player6,200)~ EXIT
END

IF ~~ THEN BEGIN banditChanceE
	SAY @13194 /* Oh? Am I starting to rub off on you? Perhaps I’ll make a Lathanderite out of you yet! Jests aside, I do have something else for you. Talk to me again when you're ready. */
IF ~~ THEN DO ~
   IncrementGlobal("gBFrdP","GLOBAL",1) SetGlobal("gBFq7","GLOBAL",3) SetGlobal("GGBFMQ","Global",8) AddJournalEntry(@5120, QUEST) AddXPObject(Player1,200) AddXPObject(Player2,200) AddXPObject(Player3,200) AddXPObject(Player4,200) AddXPObject(Player5,200) AddXPObject(Player6,200)~ EXIT
END

IF ~~ THEN BEGIN banditWise
	SAY @13195 /* That’s practical of you.Regardless, I have something else for you. Talk to me again when you're ready. */
IF ~~ THEN DO ~
   IncrementGlobal("gBFrsP","GLOBAL",1) SetGlobal("gBFq7","GLOBAL",3) SetGlobal("GGBFMQ","Global",8) AddJournalEntry(@5120, QUEST) AddXPObject(Player1,200) AddXPObject(Player2,200) AddXPObject(Player3,200) AddXPObject(Player4,200) AddXPObject(Player5,200) AddXPObject(Player6,200)~ EXIT
END

//shadow thief dies
IF ~Global("gBFq7","GLOBAL",2) Dead("g_thief")~ THEN BEGIN banditEnd2
	SAY @13164 /* Hello again, <CHARNAME>. How goes your task? */
	++ @13196 /* The Shadow Thief was a renegade. He went to the bandits because he thought they were the only ones who would accept him after his crimes. I killed him. */ GOTO banditBrief2
END

IF ~~ THEN BEGIN banditBrief2
	SAY @13188 /* Oh? What influenced that decision? */
	++ @13197 /* He deserved death for what he did as a Shadow Thief. */ GOTO oneChance
	++ @13198 /*  He might have been lying about being a renegade. I didn’t want to risk Shadow Thief involvement with the bandits. */ GOTO noRisk
	++ @13199 /*  I’ve never fought a Shadow Thief before, and I was curious. */ GOTO curious
END

IF ~~ THEN BEGIN oneChance
	SAY @13200 /* No second chances? People can change in surprising ways, <CHARNAME>. Since he was a renegade–well, I suppose we’ll never know now. Regardless, I have something else for you. Talk to me again when you're ready. */
IF ~~ THEN DO ~
   IncrementGlobal("gBFdP","GLOBAL",1) SetGlobal("gBFq7","GLOBAL",3) SetGlobal("GGBFMQ","Global",8) AddJournalEntry(@5120, QUEST) AddXPObject(Player1,200) AddXPObject(Player2,200) AddXPObject(Player3,200) AddXPObject(Player4,200) AddXPObject(Player5,200) AddXPObject(Player6,200)~ EXIT
END


IF ~~ THEN BEGIN noRisk
	SAY @13201 /* Oh. Yes, I suppose if he was being dishonest, he could have created a lot of trouble for everyone down the road. Last thing we need are the Shadow Thieves getting involved in…. Whatever is going on. Regardless, I have something else for you. Talk to me again when you're ready. */
IF ~~ THEN DO ~
   IncrementGlobal("gBFrsP","GLOBAL",1) SetGlobal("gBFq7","GLOBAL",3) SetGlobal("GGBFMQ","Global",8) AddJournalEntry(@5120, QUEST) AddXPObject(Player1,200) AddXPObject(Player2,200) AddXPObject(Player3,200) AddXPObject(Player4,200) AddXPObject(Player5,200) AddXPObject(Player6,200)~ EXIT
END

IF ~~ THEN BEGIN curious
	SAY @13202 /* You’ve never fought a lot of things before, <CHARNAME>. If I sent you to meet a dragon, would you kill that too? Regardless, I have something else for you. Perhaps it will help quench that bloodlust of yours. Talk to me again when you're ready. */
IF ~~ THEN DO ~
   SetGlobal("gBFq7","GLOBAL",3) SetGlobal("GGBFMQ","Global",8) AddJournalEntry(@5120, QUEST) AddXPObject(Player1,200) AddXPObject(Player2,200) AddXPObject(Player3,200) AddXPObject(Player4,200) AddXPObject(Player5,200) AddXPObject(Player6,200)~ EXIT
END

/////////////////////////////////
// The Ulcaster Ruins
////////////////////////////////

IF ~Global("GGBFMQ","Global",8) Global("gBFq8","GLOBAL",0)~ THEN BEGIN schoolStart
	SAY @13203 /* Have you heard of the Ulcaster Ruins? It was a school of wizardry founded some centuries ago by the conjurer Ulcaster under the guidance of Aumvor the Undying, a Netherese lich. Anyway, the school was destroyed some time ago, and there’s been undead in the area ever since. The undead, naturally, attract necromancers. We occasionally go clear the place out, but everyone is so busy with banditry and the Iron Crisis. You see where I’m going with this, don’t you? Go to the Ulcaster Ruins, find the latest residential necromancer, and remove him. Any questions? */
	++ @13074 /* Any advice? */ GOTO necroAdvice
	+~!Class(Player1,SORCERER) !Class(Player1,DRUID_ALL) !Class(Player1,MAGE_ALL)~+ @13076 /* No questions. I'm on it. */ GOTO necroYes
	+~Class(Player1,DRUID_ALL)~+ @13076 /* No questions. I'm on it. */ GOTO necroYesDruid
// +~Class(Player1,SORCERER)~+ @13076 /* No questions. I'm on it. */ GOTO necroYesSorc
	+~Class(Player1,MAGE_ALL)~+ @13076 /* No questions. I'm on it. */ GOTO necroYesMage
END

IF ~~ THEN BEGIN necroAdvice
	SAY @13204 /* Careful in the ruins. We haven’t been able to pay a visit in some time, so I imagine that there’s all kinds of things crawling around down there. As for fighting a necromancer, do try to prevent him from getting spells off. Anything else? */
	++ @13076 /* No questions. I'm on it. */ GOTO necroYes
END

IF ~~ THEN BEGIN necroYes
	SAY @13205 /* Good. Lathander go with you. And take these arrows. They're quite useful against spellcasters. Ah, and your reward for your previous mission--a guard's ring. It may be helpful in the future. */
IF ~~ THEN DO ~
GiveItemCreate("RING07",Player1,1,1,0) GiveItemCreate("AROW05",Player1,1,1,0) GiveItemCreate("AROW05",Player1,1,1,0) GiveItemCreate("AROW05",Player1,1,1,0) GiveItemCreate("AROW05",Player1,1,1,0) SetGlobal("gBFq8","GLOBAL",1) AddJournalEntry(@5121, QUEST)~ EXIT
END

IF ~~ THEN BEGIN necroYesDruid
	SAY @13206 /* Good. Lathander go with you. And take these arrows. They're quite useful against spellcasters. Ah, and your reward for your previous mission--a druid's ring. It may be helpful in the future. */
IF ~~ THEN DO ~
GiveItemCreate("RING03",Player1,1,1,0) GiveItemCreate("AROW05",Player1,1,1,0) GiveItemCreate("AROW05",Player1,1,1,0) GiveItemCreate("AROW05",Player1,1,1,0) GiveItemCreate("AROW05",Player1,1,1,0) SetGlobal("gBFq8","GLOBAL",1) AddJournalEntry(@5121, QUEST)~ EXIT
END

/*
IF ~~ THEN BEGIN necroYesSorc
	SAY @13207 /* Good. Lathander go with you. And take these arrows. They're quite useful against spellcasters. Ah, and your reward for your previous mission--a Ring of Acuity. It may be helpful in the future. */
IF ~~ THEN DO ~
GiveItemCreate("RING40",Player1,1,1,0) GiveItemCreate("AROW05",Player1,1,1,0) GiveItemCreate("AROW05",Player1,1,1,0)  GiveItemCreate("AROW05",Player1,1,1,0) GiveItemCreate("AROW05",Player1,1,1,0) SetGlobal("gBFq8","GLOBAL",1) AddJournalEntry(@5118, QUEST)~ EXIT
END
*/

IF ~~ THEN BEGIN necroYesMage
	SAY @13207 /* Good. Lathander go with you. And take these arrows. They're quite useful against spellcasters. Ah, and your reward for your previous mission--a Ring of Acuity. It may be helpful in the future. */
IF ~~ THEN DO ~
GiveItemCreate("RING40",Player1,1,1,0) GiveItemCreate("AROW05",Player1,1,1,0) GiveItemCreate("AROW05",Player1,1,1,0) GiveItemCreate("AROW05",Player1,1,1,0) GiveItemCreate("AROW05",Player1,1,1,0) SetGlobal("gBFq8","GLOBAL",1) AddJournalEntry(@5121, QUEST)~ EXIT
END

IF ~Global("gBFq8","GLOBAL",1) !Dead("g_necro")~ THEN BEGIN necroDoIt
	SAY @13179 /* Complete your task. */ IF ~~ THEN EXIT
END

/////////////////////////////////
// Judge and Jury
////////////////////////////////

IF ~ Dead("g_necro") Global("gBFq9","GLOBAL",0)~ THEN BEGIN judgeJury
	SAY @13208 /* Ah, <CHARNAME>. There you are. Perfect timing. <CHARNAME>, when you cleared out the Bandit Camp, you must’ve missed a bandit. Or perhaps he just wasn’t at the camp at the time. Regardless, he’s here now, and I’m calling on you to arbitrate something between me and this Flaming Fist officer. <CHARNAME>, the situation is this. This individual here participated in banditry. He is repentant and is seeking sanctuary in this Temple. He is willing to study here and learn the teachings of Lathander, and I think his remorse is genuine. But the Temple and the Fist are at odds here, and I'm calling on you to be the jury. Let me know when you've decided. */
IF ~~ THEN DO ~
   SetGlobal("gBFq9","GLOBAL",1) SetGlobal("GGBFMQ","Global",11) AddJournalEntry(@5122, QUEST) AddJournalEntry(@5123, QUEST)~ EXIT
END

IF ~Global("gBFq9","GLOBAL",1)~ THEN BEGIN decisionTime
	SAY @13209 /* Well, <CHARNAME>? Your decision? */
	++ @13210 /* He deserves the hangman’s noose for his crimes. */ GOTO judgeBad
	++ @13211 /*  He needs to face justice, but he doesn’t have to die. Lock him up for a while instead. He can learn Lathander’s teachings behind bars. */ GOTO judgeMedium
	++ @13212 /* He’s repentant. Let him stay here. */ GOTO judgeGood
	++ @13213 /* I'm still thinking. */ GOTO judgeStall
END

IF ~~ THEN BEGIN judgeBad
	SAY @13214 /* Perhaps–no. We all had an agreement. I am sorry, Ovlin. The gods know the truth, and I trust that they will have mercy on your soul. <CHARNAME>, talk to me when you're ready for your next task. */
IF ~~ THEN DO ~
   IncrementGlobal("gBFdP","GLOBAL",1) SetGlobal("gBFq9","GLOBAL",2) SetGlobal("GGBFMQ","Global",11) ActionOverride("g_bfovl",EscapeArea()) ActionOverride("g_bfre",EscapeArea()) AddJournalEntry(@5120, QUEST) AddXPObject(Player2,200) AddXPObject(Player3,200) AddXPObject(Player4,200) AddXPObject(Player5,200) AddXPObject(Player6,200)~ EXIT
END

IF ~~ THEN BEGIN judgeMedium
	SAY @13215 /* A compromise, is it? Better than some of the alternatives, that’s for sure. <CHARNAME>, talk to me when you're ready for your next task. */
IF ~~ THEN DO ~
   IncrementGlobal("gBFrsP","GLOBAL",1) SetGlobal("gBFq9","GLOBAL",2) ActionOverride("g_bfovl",EscapeArea()) ActionOverride("g_bfre",EscapeArea())  SetGlobal("GGBFMQ","Global",11) AddJournalEntry(@5120, QUEST) AddXPObject(Player2,200) AddXPObject(Player3,200) AddXPObject(Player4,200) AddXPObject(Player5,200) AddXPObject(Player6,200)~ EXIT
END

IF ~~ THEN BEGIN judgeGood
	SAY @13216 /* We’ll take full responsibility for him, if it makes you feel better, Officer. Now, unless you have something else…? And <CHARNAME>, talk to me when you're ready for your next task.  */
IF ~~ THEN DO ~
   IncrementGlobal("gBFrdP","GLOBAL",1) ActionOverride("g_bfre",EscapeArea())   SetGlobal("gBFq9","GLOBAL",2) SetGlobal("GGBFMQ","Global",11) AddJournalEntry(@5120, QUEST) AddXPObject(Player2,200) AddXPObject(Player3,200) AddXPObject(Player4,200) AddXPObject(Player5,200) AddXPObject(Player6,200)~ EXIT
END

IF ~~ THEN BEGIN judgeStall
	SAY @13217 /* Take your time to think about it.  */ IF ~~ THEN EXIT
END


/////////////////////////////////
// Renegade Zhent
////////////////////////////////
 IF ~Global("gBFq9","GLOBAL",2) Global("gBFq11","GLOBAL",0) Global("GGBFMQ","Global",11)~ THEN BEGIN renZhentStart
	SAY @13218 /* I have something of a delicate nature for you. I got word of a renegade Zhent in Cloakwood, and I want you to invite him here. I’m not sure exactly where in Cloakwood he is–likely deep enough to avoid civilization, but not so deep as to run into Shadow Druids. Find him and send him here, understood? */
	++ @13219 /* Why not kill him? I thought the only good Zhent was a dead one? */ GOTO zhentJustice
	++ @13220 /* Why do you want him here? */ GOTO zhentWhy2
	++ @13221 /* Are you sure you aren’t a Harper? */ GOTO harper2
	++ @13088 /* No more questions. I’m on it. */ GOTO zhentRenYes
END

IF ~~ THEN BEGIN zhentJustice
	SAY @13222 /* He’s not a Zhent anymore. He defected; he’s a renegade. Does that clear it up for you? Anything else? */
	++ @13220 /* Why do you want him here? */ GOTO zhentWhy2
	++ @13221 /* Are you sure you aren’t a Harper? */ GOTO harper2
	++ @13088 /* No more questions. I’m on it. */ GOTO zhentRenYes
END

IF ~~ THEN BEGIN zhentWhy2
	SAY @13223 /* Because if he’s not here or with the Ilmateri, he’s as good as dead. Lathander teaches redemption, <CHARNAME>, even for Zhents. Anything else? */
	++ @13219 /* Why not kill him? I thought the only good Zhent was a dead one? */ GOTO zhentJustice
	++ @13221 /* Are you sure you aren’t a Harper? */ GOTO harper2
	++ @13088 /* No more questions. I’m on it. */ GOTO zhentRenYes
END

IF ~~ THEN BEGIN harper2
	SAY @13224 /* Yes, I am quite sure. Quit asking that. Anything else? */
	++ @13219 /* Why not kill him? I thought the only good Zhent was a dead one? */ GOTO zhentJustice
	++ @13220 /* Why do you want him here? */ GOTO zhentWhy2
	++ @13088 /* No more questions. I’m on it. */ GOTO zhentRenYes
END 

IF ~~ THEN BEGIN zhentRenYes
	SAY @13136 /* Good. */ 
IF ~~ THEN DO ~
 SetGlobal("gBFq11","GLOBAL",1) AddJournalEntry(@5125, QUEST)~ EXIT
END


IF ~Global("gBFq11","GLOBAL",1) !Dead("g_rZhent")~ THEN BEGIN zhentRenDo
	SAY @13225 /* Rescue the renegade, <CHARNAME>.  */ IF ~~ THEN EXIT
END

//renegade saved
IF ~Global("gBFq11","GLOBAL",2) !Dead("g_rZhent")~ THEN BEGIN zhentRenDone
	SAY @13164 /* Hello again, <CHARNAME>. How goes your task? */
	+ ~Dead("g_thief")~ + @13226 /* I sent the Zhent off this way. There were other Zhents about to kill him, but they’re dead now. The other Zhents called me your “attack dog”. */ GOTO attackYes
	+ ~!Dead("g_thief")~ + @13226 /* I sent the Zhent off this way. There were other Zhents about to kill him, but they’re dead now. The other Zhents called me your “attack dog”. */ GOTO attackNo
END

IF ~~ THEN BEGIN attackYes
	SAY @13227 /* Mm, I suppose that’s not entirely inaccurate, is it? Regardless, good work, <CHARNAME>. I have another mission for you–less dramatic this time, I think. Talk to me when you're ready. */
IF ~~ THEN DO ~
SetGlobal("gBFq11","GLOBAL",3) SetGlobal("GGBFMQ","Global",12) AddJournalEntry(@5126, QUEST)~ EXIT
END

IF ~~ THEN BEGIN attackNo
	SAY @13228 /* Really? They called you that? How strange. You aren’t a particularly violent sort–definitely not as bloodthirsty as they are. Regardless, good work, <CHARNAME>. I have another mission for you–less dramatic this time, I think. Talk to me when you're ready. */
IF ~~ THEN DO ~
SetGlobal("gBFq11","GLOBAL",3) SetGlobal("GGBFMQ","Global",12) AddJournalEntry(@5126, QUEST)~ EXIT
END


//renegade killed
IF ~Global("gBFq11","GLOBAL",2) Dead("g_rZhent")~ THEN BEGIN zhentRenDead
	SAY @13164 /* Hello again, <CHARNAME>. How goes your task? */
	++ @13229 /* I killed the renegade Zhent. */ GOTO uDonFuckedUp
END

IF ~~ THEN BEGIN uDonFuckedUp
	SAY @13230 /* You WHAT?! I very specifically told you not to do that, <CHARNAME>! I don’t care what your reasoning was. Get out of here! */
IF ~~ THEN DO ~
SetGlobal("gBFq11","GLOBAL",5) AddJournalEntry(@5126, QUEST_DONE)~ EXIT
END

IF ~Global("gBFq11","GLOBAL",5)~ THEN BEGIN gtfo
	SAY @13231 /* Get out, <CHARNAME>. */ IF ~~ THEN EXIT
END

/////////////////////////////////
// Papers, please
////////////////////////////////

IF ~Global("gBFq11","GLOBAL",3) Global("gBFq12","GLOBAL",0) Global("GGBFMQ","Global",12) ~ THEN BEGIN papersPlease
	SAY @13232 /* The Helmites in Baldur’s Gate had some papers that they thought I could decipher for them. Do me a favor and go get them for me. Arteger will be at the Helmite Temple, naturally. Any questions? */
	++ @13233 /* Why do they think you can decipher the papers? Why not ask a Candlekeep scholar? */ GOTO ppcs
	++ @13234 /* Why don’t you get the papers? */ GOTO noU
	++ @13088 /* No more questions. I’m on it. */ GOTO paperStart
END

IF ~~ THEN BEGIN ppcs
	SAY @13235 /* I’m not entirely certain, and I won’t be until I have those papers. You can satisfy both of our curiosities by bringing those papers here. Anything else? */
	++ @13234 /* Why don’t you get the papers? */ GOTO noU
	++ @13088 /* No more questions. I’m on it. */ GOTO paperStart
END

IF ~~ THEN BEGIN noU
	SAY @13236 /* Because I am loath to leave the temple. You, however, don’t seem to mind leaving so much. Anything else? */
	++ @13233 /* Why do they think you can decipher the papers? Why not ask a Candlekeep scholar? */ GOTO ppcs
	++ @13088 /* No more questions. I’m on it. */ GOTO paperStart
END

IF ~~ THEN BEGIN paperStart
	SAY @13136 /* Good. */
IF ~~ THEN DO ~
 SetGlobal("gBFq12","GLOBAL",1) AddJournalEntry(@5132, QUEST)~ EXIT
END

IF ~Global("gBFq12","GLOBAL",1) !PartyHasItem("gBFed")~ THEN BEGIN papersDoIt
	SAY @13237 /* Bring me those papers.  */ IF ~~ THEN EXIT
END


IF ~PartyHasItem("gBFed")~ THEN BEGIN papersHave
	SAY @13238 /* Ah, I see you have the papers. Hm. Let me see those. Ah. Yes. I can definitely see… Hm. Unfortunately, it looks like I ought to go to the Gate myself. I’ll likely have other missions for you–meet me at the Helmite Temple. */
IF ~~ THEN DO ~
 SetGlobal("GGBFMQ","Global",13) TakePartyItem("gBFed") SetGlobal("gBFq12","GLOBAL",2) AddJournalEntry(@5133, QUEST) EscapeArea()~ EXIT
END

/////////////////////////////////
// The Loviataran
////////////////////////////////

IF ~ Global("gBFq13","GLOBAL",0) Global("GGBFMQ","Global",13)  ~ THEN BEGIN loviStart
	SAY @13239 /* Ah, <CHARNAME>, there you are. Excellent. I have a mission for you, naturally. I may have overheard some Helmites talking about a particular follower of Loviatar. She’s in Baldur’s Gate as a defector and wants to make amends with the Ilmateri. The Helmites, of course, want to bring her to justice, which likely means the hangman’s noose. Personally, I think the Ilmateri should decide what to do with her. I would have you find her and give her this invisibility ring. The tricky part is figuring out where she’s staying. Oh, and the Helmites don’t know that we know about her, so I’d appreciate it if you kept this between us. Any questions? */
	++ @13240 /* What do you mean that the Helmites don’t know that we know about her? */ GOTO loviSneaky
	++ @13241 /* Why let the Ilmateri decide what to do with her? */ GOTO loviIlm
	++ @13242 /* You seem unusually invested in this particular case. */ GOTO loviInvest
	++ @13243 /* Any ideas where to look? */ GOTO loviLook
	++ @13076 /* No questions. I'm on it. */ GOTO loviYes
END

IF ~~ THEN BEGIN loviSneaky
	SAY @13244 /* Eavesdropping, <CHARNAME>. It’s a wonder what people will say when they don’t know you’re there or realize that you’re listening. Anything else? */
	++ @13241 /* Why let the Ilmateri decide what to do with her? */ GOTO loviIlm
	++ @13242 /* You seem unusually invested in this particular case. */ GOTO loviInvest
	++ @13243 /* Any ideas where to look? */ GOTO loviLook
	++ @13076 /* No questions. I'm on it. */ GOTO loviYes
END

IF ~~ THEN BEGIN loviIlm
	SAY @13245 /* From what I overheard, most of her crimes were against the Ilmateri. As such, we should let them decide what to do with her, don’t you think? Anything else? */
	++ @13240 /* What do you mean that the Helmites don’t know that we know about her? */ GOTO loviSneaky
	++ @13242 /* You seem unusually invested in this particular case. */ GOTO loviInvest
	++ @13243 /* Any ideas where to look? */ GOTO loviLook
	++ @13076 /* No questions. I'm on it. */ GOTO loviYes
END

IF ~~ THEN BEGIN loviInvest
	SAY @13246 /* I… I’m not any more invested in this case than the others. She’s a renegade, and I want her to have a chance to redeem herself, same as the renegade Zhent I sent you to find. Anything else? */
	++ @13240 /* What do you mean that the Helmites don’t know that we know about her? */ GOTO loviSneaky
	++ @13241 /* Why let the Ilmateri decide what to do with her? */ GOTO loviIlm
	++ @13243 /* Any ideas where to look? */ GOTO loviLook
	++ @13076 /* No questions. I'm on it. */ GOTO loviYes
END

IF ~~ THEN BEGIN loviLook
	SAY @13247 /* Hm. Loviatans can be rather decadent, so she might be in a high-end tavern. But they’re also rather calculating, so she might have intentionally gone with a low-end one. But she might know that we might think that. Just check wherever people might stay, <CHARNAME>. Anything else? */
	++ @13240 /* What do you mean that the Helmites don’t know that we know about her? */ GOTO loviSneaky
	++ @13241 /* Why let the Ilmateri decide what to do with her? */ GOTO loviIlm
	++ @13242 /* You seem unusually invested in this particular case. */ GOTO loviInvest
	++ @13076 /* No questions. I'm on it. */ GOTO loviYes
END

IF ~~ THEN BEGIN loviYes
	SAY @13248 /* Good. I hope you find her before the Fist or Paladins do. */
IF ~~ THEN DO ~
 SetGlobal("gBFq13","GLOBAL",1) AddJournalEntry(@5134, QUEST) GiveItemCreate("RING05",Player1,1,1,0) ~ EXIT
END

//hasn't delivered the ring yet

IF  ~Global("gBFq13","GLOBAL",1) !Dead("g_lovi")~ THEN BEGIN loviDoIt
 SAY @13249 /* Deliver that ring. */ IF ~~ THEN EXIT
END

//has delivered the ring // (potions)

IF  ~Global("gBFq13","GLOBAL",2) !Dead("g_lovi")~ THEN BEGIN loviDone
	SAY @13250 /* Ah, you're back. Tell me, <CHARNAME>, in this case, why did you do what I asked? */
	++ @13251 /* You seemed oddly invested in this, so I figured it must be important. */ GOTO loviBinvest
	++ @13252 /* Because you told me to. */ GOTO loviBorder
	++ @13253 /* Because I think she should have a chance. */ GOTO loviBchance
END

IF ~~ THEN BEGIN loviBinvest
	SAY @13254 /* Do I seem so? Hm. I suppose it is important to me, in a way. Moving on, I have another mission for you. Talk to me when you're ready. */
IF ~~ THEN DO ~
   IncrementGlobal("gBFrsP","GLOBAL",1) SetGlobal("gBFq13","GLOBAL",3) SetGlobal("GGBFMQ","Global",14) AddJournalEntry(@5136, QUEST) AddXPObject(Player2,250) AddXPObject(Player3,250) AddXPObject(Player4,250) AddXPObject(Player5,250) AddXPObject(Player6,250)~ EXIT
END


IF ~~ THEN BEGIN loviBorder
	SAY @13255 /* Is that really it, <CHARNAME>? If I told you to–no, this isn’t fair of me. Moving on, I have another mission for you. */
IF ~~ THEN DO ~
 SetGlobal("gBFq13","GLOBAL",3) SetGlobal("GGBFMQ","Global",14) AddJournalEntry(@5136, QUEST) AddXPObject(Player2,250) AddXPObject(Player3,250) AddXPObject(Player4,250) AddXPObject(Player5,250) AddXPObject(Player6,250)~ EXIT
END

IF ~~ THEN BEGIN loviBchance
	SAY @13256 /* I’m glad we agree. Moving on, I have another mission for you. Talk to me when you're ready. */
IF ~~ THEN DO ~
   IncrementGlobal("gBFrdP","GLOBAL",1) SetGlobal("gBFq13","GLOBAL",3) SetGlobal("GGBFMQ","Global",14) AddJournalEntry(@5136, QUEST) AddXPObject(Player2,250) AddXPObject(Player3,250) AddXPObject(Player4,250) AddXPObject(Player5,250) AddXPObject(Player6,250)~ EXIT
END

//killed the loviataran
IF  ~Global("gBFq13","GLOBAL",2) Dead("g_lovi")~ THEN BEGIN loviDead
	SAY @13164 /* Hello again, <CHARNAME>. How goes your task? */
	++ @13257 /* I killed the renegade Lovitaran. */ GOTO uDonFuckedUp2
END

IF  ~Global("gBFq13","GLOBAL",1) Dead("g_lovi")~ THEN BEGIN loviDead
	SAY @13164 /* Hello again, <CHARNAME>. How goes your task? */
	++ @13257 /* I killed the renegade Lovitaran. */ GOTO uDonFuckedUp2
END

IF ~~ THEN BEGIN uDonFuckedUp2
	SAY @13230 /* You WHAT?! I very specifically told you not to do that, <CHARNAME>! I don’t care what your reasoning was. Get out of here! */
IF ~~ THEN DO ~
SetGlobal("gBFq13","GLOBAL",5) AddJournalEntry(@5136, QUEST_DONE)~ EXIT
END

IF ~Global("gBFq13","GLOBAL",5)~ THEN BEGIN gtfo
	SAY @13231 /* Get out, <CHARNAME>. */ IF ~~ THEN EXIT
END

/////////////////////////////////
// The Doppelganger
////////////////////////////////

IF ~Global("gBFq13","GLOBAL",3) Global("GGBFMQ","Global",14) Global("gBFq14","GLOBAL",0)~ THEN BEGIN dopStart
	SAY @13258 /* Ah, <CHARNAME>. Here’s something interesting for you - there’s been reports of a doppelganger in the sewers. The Fist wants the doppelganger dead, of course, but I am awfully curious. You almost never see a doppelganger in its true form, and I can’t help but wonder why this doppelganger isn’t hiding within society like most of its kind does. Go investigate, won’t you? */
	++ @13259 /* Do you think this doppelganger has anything to do with the unrest in the City? */ GOTO dopInnocent
	++ @13260 /* I'm on it. */ GOTO dopYes
END

IF ~~ THEN BEGIN dopInnocent
	SAY @13261 /* Unlikely. If this doppelganger was trying to cause problems, it wouldn’t be in its true form.  */
	++ @13260 /* I'm on it. */ GOTO dopYes
END

IF ~~ THEN BEGIN dopYes
	SAY @13262 /* Good. I hope you find it before the Fist does. */
IF ~~ THEN DO ~
 SetGlobal("gBFq14","GLOBAL",1) AddJournalEntry(@5137, QUEST)~ EXIT
END

//hasn't talked to dop
IF ~Global("gBFq14","GLOBAL",1)~ THEN BEGIN doDopplz
 SAY @13263 /* Figure out what's going on. */ IF ~~ THEN EXIT
END

//let dop live
IF ~Global("gBFq14","GLOBAL",2) !Dead("g_dop")~ THEN BEGIN dopLivelol
	SAY @13264 /* Ah, <CHARNAME>, you're back. Thank the gods. */
	++@13265 /* The doppelganger just wanted to live as it is, and so I let it live. */ GOTO dopLiveWhy
END

IF ~~ THEN BEGIN dopLiveWhy
	SAY @13266 /* Good choice, <CHARNAME>. Perhaps… perhaps there is hope yet. But there’s no time for musings, I have something extremely urgent for you. Talk to me again as soon as you can. */
IF ~~ THEN DO ~
   IncrementGlobal("gBFrdP","GLOBAL",1) SetGlobal("gBFq14","GLOBAL",3) SetGlobal("GGBFMQ","Global",15) AddJournalEntry(@5136, QUEST)  AddXPObject(Player2,250) AddXPObject(Player3,250) AddXPObject(Player4,250) AddXPObject(Player5,250) AddXPObject(Player6,250)~ EXIT
END

//killed dop
IF ~Global("gBFq14","GLOBAL",2) Dead("g_dop")~ THEN BEGIN dopDeadlol
	SAY @13264 /* Ah, <CHARNAME>, you're back. Thank the gods. */
	++ @13267 /* The doppelganger is dead–I couldn’t let such a monster live. */ GOTO dopDeadWhy
END

IF ~~ THEN BEGIN dopDeadWhy
	SAY @13268 /* I suppose that this is why they stay hidden, <CHARNAME>. And... why other people lie and hide themselves as well. Judgment can be violent.  But there’s no time for musings, I have something extremely urgent for you.Talk to me again as soon as you can. */
IF ~~ THEN DO ~
   IncrementGlobal("gBFdP","GLOBAL",1) SetGlobal("gBFq14","GLOBAL",3) SetGlobal("GGBFMQ","Global",15) AddJournalEntry(@5136, QUEST)  AddXPObject(Player2,250) AddXPObject(Player3,250) AddXPObject(Player4,250) AddXPObject(Player5,250) AddXPObject(Player6,250)~ EXIT
END

/////////////////////////////////
// Blood or Faith
////////////////////////////////

IF ~Global("GGBFMQ","Global",15) Global("gBFq15","GLOBAL",0)~ THEN BEGIN bloodOrFaithStart
	SAY @13269 /* The Undercellars, beneath the Blushing Mermaid. A big-name Zhentarim assassin, Mordiyin, is there. He needs to die, <CHARNAME>. Questions? */
	++ @13270 /* Why don't you do it? */ GOTO bofHistory
	++ @13271 /* How do you know this? */ GOTO bofHowKnow
	++ @13272 /* Why not get the Fist? */ GOTO bofFist
	++ @13273 /* Why not get the Harpers? */ GOTO bofHarp
	++ @13274 /* This isn’t some sort of trap, is it? */ GOTO bofTrap
	++ @13275 /* What can you tell me about Mordiyin? */ GOTO bofInfo
	++ @13276 /* No more questions, I'm on it. */ GOTO bofYes
END

IF ~~ THEN BEGIN bofHistory
	SAY @13277 /* I… don’t trust myself. Too much history here. Anything else? */
	++ @13271 /* How do you know this? */ GOTO bofHowKnow
	++ @13272 /* Why not get the Fist? */ GOTO bofFist
	++ @13273 /* Why not get the Harpers? */ GOTO bofHarp
	++ @13274 /* This isn’t some sort of trap, is it? */ GOTO bofTrap
	++ @13275 /* What can you tell me about Mordiyin? */ GOTO bofInfo
	++ @13276 /* No more questions, I'm on it. */ GOTO bofYes
END

IF ~~ THEN BEGIN bofHowKnow
	SAY @13278 /* Remember those papers you got for me from the Helmites? The reason I came to Baldur’s Gate, instead of staying in Beregost? They were Zhentarim papers. It wasn’t too hard for me to break the code, and that’s how I found out. Anything else? */
	++ @13270 /* Why don't you do it? */ GOTO bofHistory
	++ @13271 /* How do you know this? */ GOTO bofHowKnow
	++ @13273 /* Why not get the Harpers? */ GOTO bofHarp
	++ @13274 /* This isn’t some sort of trap, is it? */ GOTO bofTrap
	++ @13275 /* What can you tell me about Mordiyin? */ GOTO bofInfo
	++ @13276 /* No more questions, I'm on it. */ GOTO bofYes
END

IF ~~ THEN BEGIN bofFist
	SAY @13279 /* The Fist? Are we thinking of the same organization? The Fist can’t even handle bandits, how are they going to handle the Zhentarim? They’re not. It’s going to be a slaughter, assuming the Fist can even muster the courage to face them. Anything else? */
	++ @13270 /* Why don't you do it? */ GOTO bofHistory
	++ @13271 /* How do you know this? */ GOTO bofHowKnow
	++ @13273 /* Why not get the Harpers? */ GOTO bofHarp
	++ @13274 /* This isn’t some sort of trap, is it? */ GOTO bofTrap
	++ @13275 /* What can you tell me about Mordiyin? */ GOTO bofInfo
	++ @13276 /* No more questions, I'm on it. */ GOTO bofYes
END

IF ~~ THEN BEGIN bofHarp
	SAY @13280 /* Good luck finding any in time. Assuming you do find them, they are going to have a lot of questions, and they’ll waste time asking them, and you’ll waste time having to answer them. Much like we’re doing now. Anything else? */
	++ @13270 /* Why don't you do it? */ GOTO bofHistory
	++ @13271 /* How do you know this? */ GOTO bofHowKnow
	++ @13272 /* Why not get the Fist? */ GOTO bofFist
	++ @13274 /* This isn’t some sort of trap, is it? */ GOTO bofTrap
	++ @13275 /* What can you tell me about Mordiyin? */ GOTO bofInfo
	++ @13276 /* No more questions, I'm on it. */ GOTO bofYes
END

IF ~~ THEN BEGIN bofTrap
	SAY @13281 /* Of course, <CHARNAME>, I’ve spent all this time building you up only to lead you into a trap like a lamb to slaughter. No, this isn’t a trap. Anything else? */
	++ @13270 /* Why don't you do it? */ GOTO bofHistory
	++ @13271 /* How do you know this? */ GOTO bofHowKnow
	++ @13272 /* Why not get the Fist? */ GOTO bofFist
	++ @13273 /* Why not get the Harpers? */ GOTO bofHarp
	++ @13275 /* What can you tell me about Mordiyin? */ GOTO bofInfo
	++ @13276 /* No more questions, I'm on it. */ GOTO bofYes
END

IF ~~ THEN BEGIN bofInfo
	SAY @13282 /* We were partners once. I’ve dodged and killed a number of other assassins from the Zhentil Keep, and it seems like they finally sent Mordiyin. He knows me well enough, and I’m assuming that they know that I’m too sentimental these days. I… I don’t know if I can face him, which is why I’m sending you. And be careful–he’s competent enough in direct combat, and he has some magical ability. I don’t know what he’s capable of exactly these days; I haven’t been keeping tabs on him. Perhaps that was a mistake on my part. Anything else? */
	++ @13270 /* Why don't you do it? */ GOTO bofHistory
	++ @13271 /* How do you know this? */ GOTO bofHowKnow
	++ @13272 /* Why not get the Fist? */ GOTO bofFist
	++ @13273 /* Why not get the Harpers? */ GOTO bofHarp
	++ @13274 /* This isn’t some sort of trap, is it? */ GOTO bofTrap
	++ @13276 /* No more questions, I'm on it. */ GOTO bofYes
END

IF ~~ THEN BEGIN bofYes
	SAY @13283 /* Godspeed, <CHARNAME>. */ IF ~~ THEN DO ~
 SetGlobal("gBFq15","GLOBAL",1) AddJournalEntry(@5140, QUEST)~ EXIT
END

//Mordiyin still alive
IF ~Global("gBFq15","GLOBAL",1) !Dead ("g_mordy")~ THEN BEGIN killMordyPlz
 SAY @13284 /* Kill Mordiyin, <CHARNAME>. Soon. Please. */ IF ~~ THEN EXIT
END

//Mordiyin dead and no talkies
IF ~Global("gBFq15","GLOBAL",1) Dead ("g_mordy")~ THEN BEGIN mordyDead
	SAY @13285 /* Oh, <CHARNAME>! You're back. */
	++ @13286 /* Yes, and Mordiyin had some interesting things to say. */ GOTO confessionTime
END

//Mordiyin dead and talkies
IF ~Global("gBFq15","GLOBAL",2) Dead ("g_mordy")~ THEN BEGIN mordyDead
	SAY @13285 /* Oh, <CHARNAME>! You're back. */
	++ @13286 /* Yes, and Mordiyin had some interesting things to say. */ GOTO confessionTime
END

/// Max Evil Options: 5 || Min: 3
// Max Nuetral Options: 4 || Min: 3
// Max Good Options: 4 ||  Min: 3
IF ~~ THEN BEGIN confessionTime
	SAY @13287 /* Yes, I suppose he did.. I should be honest with you. I was a Zhent agent once. An enforcer. I hunted our enemies without pity or remorse, and anyone who opposed us, anyone who so much as helped those who stood against us... I slaughtered innocents for the crime of harboring renegades. A whole temple of Ilmateri, and they did not raise a hand against me. I have tried to escape my past. To be better. Lathander promises a new day, but I cannot escape the shadow of my sins. The Zhentarim say, once a Zhent, always a Zhent, and I have come to realize the truth of it. I’ve even tried redeeming other renegades, but… when I say that the only good Zhent is a dead Zhent, trust that I know what I am talking about. So I have one final task for you, <CHARNAME>. I want you to witness my death. */
////////////////
// EVIL RESPECT OPTION 
///////////////
	+~Alignment(Player1,MASK_EVIL) GLOBALGT("gBFrsP", "GLOBAL",3)~+ @13288 /* Don't be absurd. You realize that I'm no saint either? If you damn yourself, you're damning me alongside with you. */ GOTO evilRespect
////////////////
// EVIL -> NUETRAL OPTIONS
///////////////
	+~Alignment(Player1,CHAOTIC_EVIL) GlobalGT("gBFrdP","GLOBAL",3)~+ @13289 /* Neither of us are saints, Eloran, but surely who we become matters as much--if not more than--who we've been? (NOTE: this will shift your alignment to Chaotic Neutral) */ GOTO ce2cn
	+~Alignment(Player1,NEUTRAL_EVIL) GlobalGT("gBFrdP","GLOBAL",3)~+ @13290 /* Neither of us are saints, Eloran, but surely who we become matters as much--if not more than--who we've been? (NOTE: this will shift your alignment to True Neutral) */ GOTO ne2tn
	+~Alignment(Player1,LAWFUL_EVIL) GlobalGT("gBFrdP","GLOBAL",3)~+ @13291 /* Neither of us are saints, Eloran, but surely who we become matters as much--if not more than--who we've been? (NOTE: this will shift your alignment to Lawful Neutral) */ GOTO le2ln
////////////////
// EVIL OPTION 
///////////////
	+~Alignment(Player1,MASK_EVIL)~+ @13292 /* So you feel guilt over what you did, as you should. You deserve to stay alive, if only to suffer for what you’ve done. */ GOTO evilYes
////////////////
// GOOD -> NUETRAL OPTIONS
///////////////
	+~Alignment(Player1,CHAOTIC_GOOD) GlobalGT("gBFdP","GLOBAL",3)~+@13293 /* So you feel guilt over what you did, as you should. You deserve to stay alive, if only to suffer for what you’ve done. (NOTE: this will shift your alignment to Chaotic Neutral) */ GOTO cg2cn
	+~Alignment(Player1,NEUTRAL_GOOD) GLOBALGT("gBFdP", "GLOBAL",3)~+@13294 /* So you feel guilt over what you did, as you should. You deserve to stay alive, if only to suffer for what you’ve done. (NOTE: this will shift your alignment to True Neutral) */ GOTO ng2tn
	+~Alignment(Player1,LAWFUL_GOOD) GLOBALGT("gBFdP", "GLOBAL",3)~+@13295 /* So you feel guilt over what you did, as you should. You deserve to stay alive, if only to suffer for what you’ve done. (NOTE: this will shift your alignment to Lawful Neutral) */ GOTO lg2ln
////////////////
// NOT EVIL OPTIONS
///////////////
	+~!Alignment(Player1,MASK_EVIL) Class(Player1,PALADIN_ALL)~+ @13296 /* Eloran, you have already redeemed yourself. Have faith in yourself. Or at least, have faith in Lathander--what you are doing now and the reasons behind it goes against nearly everything he stands for.  */ GOTO notEvilYes
	+~!Alignment(Player1,MASK_EVIL) Class(Player1,MONK)~+ @13296 /* Eloran, you have already redeemed yourself. Have faith in yourself. Or at least, have faith in Lathander--what you are doing now and the reasons behind it goes against nearly everything he stands for.  */ GOTO notEvilYes
	+~!Alignment(Player1,MASK_EVIL) Class(Player1,CLERIC_ALL)~+ @13296 /* Eloran, you have already redeemed yourself. Have faith in yourself. Or at least, have faith in Lathander--what you are doing now and the reasons behind it goes against nearly everything he stands for.  */ GOTO notEvilYes
	+~!Alignment(Player1,MASK_EVIL) !Class(Player1,PALADIN_ALL) !Class(Player1,MONK) !Class(Player1,CLERIC_ALL) GlobalLT("gBFrdP","GLOBAL",3)~+ @13296 /* Eloran, you have already redeemed yourself. Have faith in yourself. Or at least, have faith in Lathander--what you are doing now and the reasons behind it goes against nearly everything he stands for.  */ GOTO notEvilNo
	+~!Alignment(Player1,MASK_EVIL) !Class(Player1,PALADIN_ALL) !Class(Player1,MONK) !Class(Player1,CLERIC_ALL) GlobalGT("gBFrdP","GLOBAL",3)~+ @13296 /* Eloran, you have already redeemed yourself. Have faith in yourself. Or at least, have faith in Lathander--what you are doing now and the reasons behind it goes against nearly everything he stands for.  */ GOTO notEvilYes
////////////////
// NUETRAL -> EVIL OPTIONS
///////////////
	+~Alignment(Player1,CHAOTIC_NEUTRAL)~+@13297 /* So you feel guilt over what you did, as you should. You deserve to stay alive, if only to suffer for what you’ve done. (NOTE: this will shift your alignment to Chaotic Evil) */ GOTO cn2ce
	+~Alignment(Player1,NEUTRAL)~+@13298 /* So you feel guilt over what you did, as you should. You deserve to stay alive, if only to suffer for what you’ve done. (NOTE: this will shift your alignment to Neutral Evil) */ GOTO tn2ne
	+~Alignment(Player1,LAWFUL_NEUTRAL) ~+@13299 /* So you feel guilt over what you did, as you should. You deserve to stay alive, if only to suffer for what you’ve done. (NOTE: this will shift your alignment to Lawful Evil) */ GOTO ln2le
////////////////
// N -> G OPTIONS
///////////////
	+~Alignment(Player1,CHAOTIC_NEUTRAL) GLOBALGT("gBFrdP", "GLOBAL",3)~+ @13300 /* Neither of us are saints, Eloran, but surely who we become matters as much--if not more than--who we've been? (NOTE: this will shift your alignment to Chaotic Good) */ GOTO cn2cg
	+~Alignment(Player1,NEUTRAL) GLOBALGT("gBFrdP", "GLOBAL",3)~+ @13301 /* Neither of us are saints, Eloran, but surely who we become matters as much--if not more than--who we've been? (NOTE: this will shift your alignment to Neutral Good) */ GOTO tn2ng
	+~Alignment(Player1,LAWFUL_NEUTRAL) GLOBALGT("gBFrdP", "GLOBAL",3)~+ @13302 /* Neither of us are saints, Eloran, but surely who we become matters as much--if not more than--who we've been? (NOTE: this will shift your alignment to Lawful Good) */ GOTO ln2lg
////////////////
// WATCH
///////////////
	++ @13303 /* (Do nothing, but watch.) */ GOTO fail
END

///////////////////////////////////
// Finale Results - Evil
////////////////////////////////

IF ~~ THEN BEGIN evilRespect
	SAY @13304 /* Perhaps... Do you really have that much faith in me, <CHARNAME>, even now knowing what I am - what I was? You believe that I still should have a chance? I... I need to think about this. And I can't stay in the Gate any longer, now that the Zhentarim know I'm here. Goodbye, <CHARNAME>. And thank you. */
IF ~~ THEN DO ~
	AddJournalEntry(@5142,QUEST)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450)
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	GiveItemCreate("g_bfiam",Player1,1,1,0)
	EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ce2cn
	SAY @13304 /* Perhaps... Do you really have that much faith in me, <CHARNAME>, even now knowing what I am - what I was? You believe that I still should have a chance? I... I need to think about this. And I can't stay in the Gate any longer, now that the Zhentarim know I'm here. Goodbye, <CHARNAME>. And thank you. */
IF ~~ THEN DO ~
	AddJournalEntry(@5142,QUEST_DONE)
	ChangeAlignment(Player1,CHAOTIC_NEUTRAL)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450)
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	GiveItemCreate("g_bfiam",Player1,1,1,0)
	EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ne2tn
	SAY @13304 /* Perhaps... Do you really have that much faith in me, <CHARNAME>, even now knowing what I am - what I was? You believe that I still should have a chance? I... I need to think about this. And I can't stay in the Gate any longer, now that the Zhentarim know I'm here. Goodbye, <CHARNAME>. And thank you. */
IF ~~ THEN DO ~
	AddJournalEntry(@5142,QUEST_DONE)
	ChangeAlignment(Player1,NEUTRAL)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450)
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	GiveItemCreate("g_bfiam",Player1,1,1,0)
	EscapeArea()~ EXIT
END


IF ~~ THEN BEGIN le2ln
	SAY @13304 /* Perhaps... Do you really have that much faith in me, <CHARNAME>, even now knowing what I am - what I was? You believe that I still should have a chance? I... I need to think about this. And I can't stay in the Gate any longer, now that the Zhentarim know I'm here. Goodbye, <CHARNAME>. And thank you. */
IF ~~ THEN DO ~
	AddJournalEntry(@5142,QUEST_DONE)
	ChangeAlignment(Player1,LAWFUL_NEUTRAL)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450)
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	GiveItemCreate("g_bfiam",Player1,1,1,0)
	EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN evilYes
	SAY @13305 /* You truly believe that, don’t you? Fine. I just hope that I don’t make things worse somehow. Gods know I’ve done enough damage already. Since you want me to stay alive so badly, I’ll… I’ll have to leave the Gate. now that the Zhentarim know I'm here. Goodbye, <CHARNAME>. I hope this isn’t just another mistake. */
IF ~~ THEN DO ~
	AddJournalEntry(@5142,QUEST_DONE)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450)
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	EscapeArea()~ EXIT
END
///////////////////////////////////
// Finale Results - Good
////////////////////////////////


IF ~~ THEN BEGIN cg2cn
	SAY @13305 /* You truly believe that, don’t you? Fine. I just hope that I don’t make things worse somehow. Gods know I’ve done enough damage already. Since you want me to stay alive so badly, I’ll… I’ll have to leave the Gate. now that the Zhentarim know I'm here. Goodbye, <CHARNAME>. I hope this isn’t just another mistake. */
IF ~~ THEN DO ~
	AddJournalEntry(@5142,QUEST_DONE)
	ChangeAlignment(Player1,CHAOTIC_NEUTRAL)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450)
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ng2tn
	SAY @13305 /* You truly believe that, don’t you? Fine. I just hope that I don’t make things worse somehow. Gods know I’ve done enough damage already. Since you want me to stay alive so badly, I’ll… I’ll have to leave the Gate. now that the Zhentarim know I'm here. Goodbye, <CHARNAME>. I hope this isn’t just another mistake. */
IF ~~ THEN DO ~
	AddJournalEntry(@5142,QUEST_DONE)
	ChangeAlignment(Player1,NEUTRAL)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450)
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN lg2ln
	SAY @13305 /* You truly believe that, don’t you? Fine. I just hope that I don’t make things worse somehow. Gods know I’ve done enough damage already. Since you want me to stay alive so badly, I’ll… I’ll have to leave the Gate. now that the Zhentarim know I'm here. Goodbye, <CHARNAME>. I hope this isn’t just another mistake. */
IF ~~ THEN DO ~
	AddJournalEntry(@5142,QUEST_DONE)
	ChangeAlignment(Player1,LAWFUL_NEUTRAL)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450)
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN notEvilYes
	SAY @13304 /* Perhaps... Do you really have that much faith in me, <CHARNAME>, even now knowing what I am - what I was? You believe that I still should have a chance? I... I need to think about this. And I can't stay in the Gate any longer, now that the Zhentarim know I'm here. Goodbye, <CHARNAME>. And thank you. */
IF ~~ THEN DO ~
	AddJournalEntry(@5142,QUEST_DONE)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450)
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	GiveItemCreate("g_bfiam",Player1,1,1,0)
	EscapeArea()~ EXIT
END


///////////////////////////////////
// Finale Results - Neutral to evil
////////////////////////////////

IF ~~ THEN BEGIN cn2ce
	SAY @13305 /* You truly believe that, don’t you? Fine. I just hope that I don’t make things worse somehow. Gods know I’ve done enough damage already. Since you want me to stay alive so badly, I’ll… I’ll have to leave the Gate. now that the Zhentarim know I'm here. Goodbye, <CHARNAME>. I hope this isn’t just another mistake. */
IF ~~ THEN DO ~
	AddJournalEntry(@5142, QUEST_DONE)
	ChangeAlignment(Player1,CHAOTIC_EVIL)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450)
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN tn2ne
	SAY @13305 /* You truly believe that, don’t you? Fine. I just hope that I don’t make things worse somehow. Gods know I’ve done enough damage already. Since you want me to stay alive so badly, I’ll… I’ll have to leave the Gate. now that the Zhentarim know I'm here. Goodbye, <CHARNAME>. I hope this isn’t just another mistake. */
IF ~~ THEN DO ~
	AddJournalEntry(@5142, QUEST_DONE)
	ChangeAlignment(Player1,NEUTRAL_EVIL)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450) 
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN ln2le
	SAY @13305 /* You truly believe that, don’t you? Fine. I just hope that I don’t make things worse somehow. Gods know I’ve done enough damage already. Since you want me to stay alive so badly, I’ll… I’ll have to leave the Gate. now that the Zhentarim know I'm here. Goodbye, <CHARNAME>. I hope this isn’t just another mistake. */
IF ~~ THEN DO ~
	AddJournalEntry(@5142, QUEST_DONE)
	ChangeAlignment(Player1,LAWFUL_EVIL)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450)
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	EscapeArea()~ EXIT
END

///////////////////////////////////
// Finale Results - Neutral to good
////////////////////////////////

IF ~~ THEN BEGIN cn2cg
	SAY @13304 /* Perhaps... Do you really have that much faith in me, <CHARNAME>, even now knowing what I am - what I was? You believe that I still should have a chance? I... I need to think about this. And I can't stay in the Gate any longer, now that the Zhentarim know I'm here. Goodbye, <CHARNAME>. And thank you. */
IF ~~ THEN DO ~
	AddJournalEntry(@5142, QUEST_DONE)
	ChangeAlignment(Player1,CHAOTIC_GOOD)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450)
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	GiveItemCreate("g_bfiam",Player1,1,1,0)
	EscapeArea()~ EXIT
END


IF ~~ THEN BEGIN tn2ng
	SAY @13304 /* Perhaps... Do you really have that much faith in me, <CHARNAME>, even now knowing what I am - what I was? You believe that I still should have a chance? I... I need to think about this. And I can't stay in the Gate any longer, now that the Zhentarim know I'm here. Goodbye, <CHARNAME>. And thank you. */
IF ~~ THEN DO ~
	AddJournalEntry(@5142, QUEST_DONE)
	ChangeAlignment(Player1,NEUTRAL_GOOD)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450)
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	GiveItemCreate("g_bfiam",Player1,1,1,0)
	EscapeArea()~ EXIT
END


IF ~~ THEN BEGIN ln2lg
	SAY @13304 /* Perhaps... Do you really have that much faith in me, <CHARNAME>, even now knowing what I am - what I was? You believe that I still should have a chance? I... I need to think about this. And I can't stay in the Gate any longer, now that the Zhentarim know I'm here. Goodbye, <CHARNAME>. And thank you. */
IF ~~ THEN DO ~
	AddJournalEntry(@5142, QUEST_DONE)
	ChangeAlignment(Player1,LAWFUL_GOOD)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450)
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	GiveItemCreate("g_bfiam",Player1,1,1,0)
	EscapeArea()~ EXIT
END



///////////////////////////////////
// Finale Results - fail
////////////////////////////////

IF ~~ THEN BEGIN notEvilNo
	SAY @13306 /* Don't you dare quote things at me that you don't fully understand yourself! Goodbye, <CHARNAME>. */
IF ~~ THEN DO ~
	AddJournalEntry(@5141, QUEST_DONE)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450)
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	Kill(Myself)~ EXIT
END

IF ~~ THEN BEGIN fail
	SAY @13307 /* Goodbye, <CHARNAME>. */
IF ~~ THEN DO ~
	AddJournalEntry(@5141, QUEST_DONE)
	AddXPObject(Player1,450)
	AddXPObject(Player2,450)
	AddXPObject(Player3,450)
	AddXPObject(Player4,450)
	AddXPObject(Player5,450)
	AddXPObject(Player6,450)
	Kill(Myself)~ EXIT
END
END

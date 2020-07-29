
// dialogue.d contains all the dialogue for berelinde's contributions to the mod 

/* Contents */
/* Initiate files */
/* Brega and Wessalen */
/* Messenger */
/* Aster */
/* Bodhi */
/* Gaelan */
/* Aster - B!Alternatives=6 */
/* Shadow Thieves - getting in */
/* Zahl - guy who opens the door to Bodhi's lair */
/* Aster - B!Alternatives=7 */
/* Bodhi - villain's exposition */ 
/* Aster - B!Alternatives=8 */
/* Aster, Saemon, and Sime */ 
/* Tanova */
/* Prelate */ 
/* Cleaning up the references to Bodhi, Aran Linvale, and the Shadow Thieves */ 
/* Malficus Rodendril */ 
/* Leyt - puzzle box person */ 
/* Puzzle box */
/* Assistant Harbormaster Ballas */ 
/* Vhellon - purveyor of goods that might not be welcome in certain society */
/* Wael - assassin for hire */ 
/* Harbormaster Nador */ 
/* Vulova Estate */ 
/* Chief Inspector Brega - revealing the plot against Harbormaster Nador */ 
/* Malficus, Saemon, and Sime */ 
/* Vampire Ambush setup */ 


/* Initiate files */

BEGIN ~B!BREGA~   /* Inspector Brega substitute */ 
BEGIN ~B!PRELAT~  /* Prelate Wessalen substitute */ 
BEGIN ~B!ALTMSG~  /* Aster's messenger */ 
BEGIN ~B!ASTER~   /* Aster, paladin of Lathander */ 
BEGIN ~B!STDOOR~  /* Amnish guard who stands outside the Shadow Thieves */ 
BEGIN ~B!ZAHL~    /* Zahl, Aster's mage who lets you in to deal with Bodhi */ 
BEGIN ~B!ASTER2~  /* Aster, second incarnation, who gets you on the boat */
BEGIN ~B!MAL~     /* Malficus Rodendril */
BEGIN ~B!MAL2~    /* Malficus, second incarnation, who gets you on the boat */
BEGIN ~B!LEYT~    /* Leyt - puzzle box person */ 
BEGIN ~B!PUZLBX~  /* Puzzlebox dialogue file */ 
BEGIN ~B!WAEL~    /* Wael, Assassin for hire */ 
BEGIN ~B!HARBOR~  /* Harbormaster */ 
BEGIN ~B!BALLAS~  /* Ballas, the Assistant Harbormaster */ 
BEGIN ~B!VHELON~  /* Vhellon, Assassin's Guild person at the Five Flagons */
BEGIN ~B!VULBTR~  /* Butler at the Vulova estate */
BEGIN ~B!VULCOK~  /* Cook at the Vulova estate */ 
BEGIN ~B!VULOVA~  /* Lord Vulova */
BEGIN ~B!VULG_1~  /* Female guest at the Vulova estate */ 
BEGIN ~B!VULG_2~  /* Male guest at the Vulova estate */ 
BEGIN ~B!NADOR~   /* Harbormaster Nador in the Council of Six Building */ 
BEGIN ~B!NADOR2~  /* Harbormaster Nador in the Vulova estate */ 

/* Brega and Wessalen */

CHAIN
IF ~Global("B!Alternatives","GLOBAL",1)~ THEN ~B!BREGA~ overheard
@0 
DO ~SetGlobal("B!Alternatives","GLOBAL",2) RealSetGlobalTimer("B!AltTime","GLOBAL",900)~ 
== ~B!PRELAT~ @1 
== ~B!BREGA~ @2 
== ~B!PRELAT~ @3 
== ~B!BREGA~ @4 
== ~B!PRELAT~ @5 
== ~B!BREGA~ @6 
== ~B!PRELAT~ @7 
== ~B!BREGA~ @8 
== ~B!PRELAT~ @9 
== ~B!BREGA~ @10 
== ~B!PRELAT~ @11 
== ~B!BREGA~ @12 
== ~B!PRELAT~ @13 
== ~B!BREGA~ @14 
== ~B!PRELAT~ @15 
== ~B!BREGA~ @16
== ~B!PRELAT~ IF ~ReputationLT(Player1,9)~ THEN @17
== ~B!BREGA~ IF ~ReputationLT(Player1,9)~ THEN @18
== ~B!PRELAT~ IF ~ReputationLT(Player1,16) ReputationGT(Player1,8)~ THEN @19
== ~B!BREGA~ IF ~ReputationLT(Player1,16) ReputationGT(Player1,8)~ THEN @20
== ~B!PRELAT~ IF ~ReputationGT(Player1,15)~ THEN @21
== ~B!BREGA~ IF ~ReputationGT(Player1,15)~ THEN @22
== ~B!BREGA~ @23 
== ~B!PRELAT~ @24 
== ~B!BREGA~ @25 
== ~B!PRELAT~ @26 
== ~B!BREGA~ @27 
== ~B!PRELAT~ @28 
== ~B!BREGA~ @29 
DO ~ClearAllActions() 
    StartCutSceneMode() 
    StartCutScene("B!ALT_02")~ 
EXIT 

/* Messenger */

APPEND ~B!ALTMSG~

IF ~True()~ THEN BEGIN summons
SAY @30
++ @31 DO ~SetGlobal("B!Alternatives","GLOBAL",4)~ + summons1
++ @32 DO ~SetGlobal("B!Alternatives","GLOBAL",4)~ + summons1
++ @33 DO ~SetGlobal("B!Alternatives","GLOBAL",4)~ + summons2
END

IF ~~ summons1
SAY @34 
++ @35 + summons3
++ @36 + summons4
++ @37 + summons3
END

IF ~~ summons2
SAY @38
IF ~~ THEN + summons5
END

IF ~~ summons3
SAY @39
IF ~~ THEN + summons4
END

IF ~~ summons4
SAY @40
IF ~~ THEN + summons5
END

IF ~~ summons5
SAY @41
IF ~~ THEN DO ~AddJournalEntry(@42,QUEST) EscapeArea()~ EXIT
END
END 

/* Aster */

APPEND ~B!ASTER~

IF ~NumTimesTalkedTo(0) !GlobalGT("WorkingForAran","GLOBAL",0) !GlobalGT("WorkingForBodhi","GLOBAL",0) !GlobalGT("B!Tourist","GLOBAL",7)~ THEN aster
SAY @43  
++ @44 DO ~SetGlobal("B!Alternatives","GLOBAL",5)~ + aster1
++ @45 DO ~SetGlobal("B!Alternatives","GLOBAL",5)~ + aster2
+ ~Kit(Player1,GODLATHANDER)~ + @46 DO ~SetGlobal("B!Alternatives","GLOBAL",5)~ + aster3
++ @47 DO ~SetGlobal("B!Alternatives","GLOBAL",5)~ + aster4
++ @48 DO ~SetGlobal("B!Alternatives","GLOBAL",5)~ + aster4
END

IF ~NumTimesTalkedTo(0) OR(3) GlobalGT("WorkingForAran","GLOBAL",0) GlobalGT("WorkingForBodhi","GLOBAL",0) GlobalGT("B!Tourist","GLOBAL",7)~ THEN aster.1 
SAY @43  
++ @44 DO ~SetGlobal("B!Alternatives","GLOBAL",5)~ + aster.2 
++ @45 DO ~SetGlobal("B!Alternatives","GLOBAL",5)~ + aster.3 
+ ~Kit(Player1,GODLATHANDER)~ + @46 DO ~SetGlobal("B!Alternatives","GLOBAL",5)~ + aster.4 
++ @47 DO ~SetGlobal("B!Alternatives","GLOBAL",5)~ + aster.5 
END 


/*

Global("B!Aster_WhatWasTold","LOCALS",1): PC gave word of secrecy

Global("B!Aster_WhatWasTold","LOCALS",2): PC heard about first task (Shadow Thieves)

Global("B!Aster_WhatWasTold","LOCALS",3): PC agreed but didn't have the gold


*/

IF ~NumTimesTalkedToGT(0) GlobalLT("B!Alternatives","GLOBAL",6) !GlobalGT("WorkingForAran","GLOBAL",0) !GlobalGT("WorkingForBodhi","GLOBAL",0) !GlobalGT("B!Tourist","GLOBAL",7)~ THEN asterA
SAY @49 /* ~We meet again, it seems. Are you satisfied now? Will you agree to the terms I offered earlier?~ [b!ast_02] */
++ @50 /* ~Refresh my memory. What were they?~ */ + asterA1
+ ~Global("B!Aster_WhatWasTold","LOCALS",0)~ + @94 /* ~What are the two tasks?~ */ + aster15 
+ ~Global("B!Aster_WhatWasTold","LOCALS",1)~ + @94 /* ~What are the two tasks?~ */ + aster20
+ ~Global("B!Aster_WhatWasTold","LOCALS",3) PartyGoldGT(14999)~ + @123 /* ~Very well, here's the gold.~ */ DO ~
//SetGlobal("Chapter","GLOBAL",%bg2_chapter_3%) 
SetGlobal("B!Alternatives","GLOBAL",6) SetGlobal("VampShadWar","GLOBAL",6) TakePartyGold(15000) DestroyGold(15000)~ + aster31
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + @110 /* ~I need more time to think.~ */ + aster24 
+ ~!Global("C#IM_ImoenStays","GLOBAL",0)~ + @110 /* ~I need more time to think.~ */ + aster24_I4E
++ @53 /* ~I'm no longer interested.~ */ + aster19
END 

IF ~NumTimesTalkedToGT(0) OR(3) GlobalGT("WorkingForAran","GLOBAL",0) GlobalGT("WorkingForBodhi","GLOBAL",0) GlobalGT("B!Tourist","GLOBAL",7)~ THEN asterA
SAY @43  
++ @54 + aster.2 
++ @55 + aster.2
++ @56 + asterA.0 
++ @57 + aster.5
END 

IF ~~ asterA.0 
SAY @58 
IF ~~ THEN DO ~EscapeArea()~ EXIT 
END 

IF ~~ asterA1
SAY @59 /* ~For 15,000 gold pieces, my associates will provide you with transportation to Spellhold, if you can demonstrate to them your intention to do good works.~ */
+ ~Global("B!Aster_WhatWasTold","LOCALS",0)~ + @94 /* ~What are the two tasks?~ */ + aster15 
+ ~Global("B!Aster_WhatWasTold","LOCALS",1)~ + @94 /* ~What are the two tasks?~ */ + aster20
+ ~Global("B!Aster_WhatWasTold","LOCALS",3) PartyGoldGT(14999)~ + @123 /* ~Very well, here's the gold.~ */ DO ~
//SetGlobal("Chapter","GLOBAL",%bg2_chapter_3%) 
SetGlobal("B!Alternatives","GLOBAL",6) SetGlobal("VampShadWar","GLOBAL",6) TakePartyGold(15000) DestroyGold(15000)~ + aster31
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + @110 /* ~I need more time to think.~ */ + aster24 
+ ~!Global("C#IM_ImoenStays","GLOBAL",0)~ + @110 /* ~I need more time to think.~ */ + aster24_I4E 
++ @53 /* ~I'm no longer interested.~ */ + aster19
END 

IF ~~ aster.2
SAY @60 
IF ~~ THEN DO ~EscapeArea()~ EXIT 
END 

IF ~~ aster.3
SAY @61 
IF ~~ THEN DO ~EscapeArea()~ EXIT 
END 

IF ~~ aster.4
SAY @62 
IF ~~ THEN DO ~EscapeArea()~ EXIT 
END 

IF ~~ aster.5
SAY @63 
IF ~~ THEN DO ~EscapeArea()~ EXIT 
END 

IF ~~ aster1 
SAY @64 
IF ~~ THEN + aster4 
END 

IF ~~ aster2 
SAY @65 
++ @66 + aster5 
++ @67 + aster5 
++ @68 + aster4 
END 

IF ~~ aster3 
SAY @69 
IF ~~ THEN + aster4 
END 

IF ~~ aster4 
SAY @70 
++ @71 + aster6 
++ @72 + aster6.1  
++ @73 + aster7 
++ @74 + aster8 
END 

IF ~~ aster5 
SAY @75 
IF ~~ THEN + aster4 
END 

IF ~~ aster6.1 
SAY @76 
++ @77 + aster7 
++ @78 + aster19 
END 

IF ~~ aster6 
SAY @79 
= @80 
IF ~~ THEN + aster7 
END 

IF ~~ aster7 
SAY @81 
++ @82 + aster10 
++ @83 + aster11 
++ @84 + aster9 
++ @85 + aster12 
END 

IF ~~ aster8 
SAY @86 
IF ~~ THEN + aster7 
END 

IF ~~ aster9 
SAY @87 
++ @88 + aster13 
++ @85 + aster12 
++ @89 + aster14 
END 

IF ~~ aster10 
SAY @90 
IF ~~ THEN + aster13
END 

IF ~~ aster11 
SAY @91 
IF ~~ THEN + aster13 
END 

IF ~~ aster12 
SAY @92 
IF ~~ THEN + aster13 
END 

IF ~~ aster13 
SAY @93 /* ~If you complete two tasks, I will arrange passage for you to Brynnlaw, the island where the asylum... Spellhold, it is called... is located.~ [b!ast_03] */
= @59 /* ~For 15,000 gold pieces, my associates will provide you with transportation to Spellhold, if you can demonstrate to them your intention to do good works.~ */
++ @94 /* ~What are the two tasks?~ */ + aster15 
++ @95 /* ~That's it? Just two tasks?~ */ + aster16 
++ @96 /* ~I'd like to hear what the others are offering before I commit.~ */ + aster23a 
END 


IF ~~ aster14 
SAY @97 
IF ~~ THEN + aster13 
END 

IF ~~ aster15 
SAY @918 /* ~Before I commit to giving you more information, I must have your pledge of secrecy.~ */
++ @99 /* ~Very well, you have it.~ */ DO ~SetGlobal("B!Aster_WhatWasTold","LOCALS",1)~ + aster20
++ @353 /* ~I'm not sure I like your tone. I won't do anything illegal.~ */ + aster18
++ @101 /* ~I have had other offers. I'd like to hear what they have to say before I commit.~ */ + aster23a
++ @102 /* ~Thanks anyway, but I'd rather take my chances with a known commodity.~ */ + aster19 
END 

IF ~~ aster16 
SAY @103 /* ~They are enough.~ */
IF ~~ THEN + aster15 
END 

IF ~~ aster18 
SAY @108 /* ~I am a servant of the Morninglord. I will not ask you to do anything malevolent.~ */
++ @109 /* ~I'm satisfied. I agree to your terms.~ */ DO ~SetGlobal("B!Aster_WhatWasTold","LOCALS",1)~ + aster20 
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + @110 /* ~I need more time to think.~ */ + aster24 
+ ~!Global("C#IM_ImoenStays","GLOBAL",0)~ + @110 /* ~I need more time to think.~ */ + aster24_I4E 
++ @186 /* ~Why the subterfuge?~ */ + aster21 
++ @111 /* ~No, I'd still prefer to deal with another.~ */ + aster19 
END 

IF ~~ aster19 
SAY @106 /* ~So be it.~ */
IF ~~ THEN + aster22 
END 

IF ~~ aster20 
SAY @112  /* ~Splendid. Are you ready to hear about your first task?~ [b!ast_04] */
++ @113 /* ~As ready as I'll ever be.~ */ DO ~SetGlobal("B!Aster_WhatWasTold","LOCALS",2)~ + aster23c 
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + @110 /* ~I need more time to think.~ */ + aster24 
+ ~!Global("C#IM_ImoenStays","GLOBAL",0)~ + @110 /* ~I need more time to think.~ */ + aster24_I4E
++ @114 /* ~I'm a bit rushed at the moment. Can I come back later?~ */ + aster25 
END 

IF ~~ aster21 
SAY @115 /* ~Some doors only open one way. If you travel through them, you may not travel back.~ */
++ @109 /* ~I'm satisfied. I agree to your terms.~ */ DO ~SetGlobal("B!Aster_WhatWasTold","LOCALS",1)~ + aster20 
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + @110 /* ~I need more time to think.~ */ + aster24 
+ ~!Global("C#IM_ImoenStays","GLOBAL",0)~ + @110 /* ~I need more time to think.~ */ + aster24_I4E 
++ @367 /* ~No. I won't listen to another word.~ */ + aster19 
++ @111 /* ~No, I'd still prefer to deal with another.~ */ + aster19 
END 

IF ~~ aster22 
SAY @118 /* ~Farewell, and good luck in your endeavors. You will need it.~ [b!ast_05] */
IF ~~ THEN DO ~SetGlobal("B!RefusedAlternatives","GLOBAL",1)
  EraseJournalEntry(@42) 
  AddJournalEntry(@119,QUEST_DONE) 
  EscapeArea()~ EXIT  
END 

IF ~~ aster23a
SAY @124 /* ~I shall wait here until you do.~ */
IF ~~ THEN EXIT
END

IF ~~ aster23c 
SAY @126 /* ~As you know, the Shadow Thieves have a strong hold over Athkatla. Extortion, slave-trading, murder, and torture number among their crimes.~ */
= @127 /* ~It is probably not possible to eliminate illegal activity completely within Athkatla, but cleansing the Shadow Thieves' base of operations would reduce it to the point that conventional law enforcement officials might be able to deal with whatever remains.~ */
++ @128 /* ~You're asking me to take on the Shadow Thieves?~ */ + aster27
++ @130 /* ~What compensation will I get for this?~ */ + aster28
+ ~Class(Player1,THIEF_ALL)~ + @131 /* ~Are you aware that I might have affiliations with that organization?~ */ + aster23d 
++ @132 /* ~I won't do it.~ */ + aster19 
END 

IF ~~ aster23d 
SAY @135 /* ~Yes.~ */
IF ~~ THEN + aster27 
END

IF ~~ aster23e
SAY @919 /* ~Very well. Pay the 15,000 gold coins to seal our agreement.~ */
+ ~!PartyGoldLT(15000)~ + @123 /* ~Very well, here's the gold.~ */ DO ~
//SetGlobal("Chapter","GLOBAL",%bg2_chapter_3%) 
SetGlobal("B!Alternatives","GLOBAL",6) SetGlobal("VampShadWar","GLOBAL",6) TakePartyGold(15000) DestroyGold(15000)~ + aster31
+ ~Global("C#IM_ImoenStays","GLOBAL",0)~ + @110 /* ~I need more time to think.~ */ DO ~SetGlobal("B!Aster_WhatWasTold","LOCALS",3)~ + aster24 
+ ~!Global("C#IM_ImoenStays","GLOBAL",0)~ + @110 /* ~I need more time to think.~ */ DO ~SetGlobal("B!Aster_WhatWasTold","LOCALS",3)~ + aster24_I4E
++ @132 /* ~I won't do it.~ */ + aster19 
END

IF ~~ aster23f
SAY @920 /* ~If you agree to defeat the Shadow Thieves, you will find the second task to serve an even greater good.~ */
= @234 /* ~If you want our help, you might as well accept that you will have to do these things.~ */
IF ~~ + aster23e
END 

IF ~~ aster24 
SAY @133 /* ~Take all the time you need... if you think your friend Imoen can survive the delay.~ */
IF ~~ THEN EXIT 
END 

IF ~~ aster24_I4E
SAY @923 /* ~Take all the time you need.~ */
IF ~~ THEN EXIT 
END 

IF ~~ aster25 
SAY @134 /* ~You can, though I should warn you that I have ways of finding out if you have accepted another offer.~ */ 
IF ~~ THEN EXIT 
END 

IF ~~ aster27 
SAY @137 /* ~That's right. I want you to destroy their base.~ */
++ @188  /* ~You mentioned two tasks. What's next?~ */ + aster23f
++ @130 /* ~What compensation will I get for this?~ */ + aster28 
+ ~Class(Player1,THIEF_ALL)~ + @131 /* ~Are you aware that I might have affiliations with that organization?~ */ + aster23d 
++ @132 /* ~I won't do it.~ */ + aster19 
END 

IF ~~ aster28 
SAY @138 /* ~You will find riches indeed in the lair of the Shadow Thieves.~ */
IF ~~ THEN + aster27 
END 

IF ~~ aster31
SAY @142 /* ~Splendid. I will send an associate, Harold, on ahead to brief you when you get there. The Shadow Thieves use an orange building in the Docks as their base. I'll look forward to hearing of your success.~ [b!ast_07] */
IF ~~ THEN DO ~EraseJournalEntry(@42)
  EraseJournalEntry(34188)
  EraseJournalEntry(34189)
  EraseJournalEntry(34187)
  EraseJournalEntry(34183)
  EraseJournalEntry(@143)
EraseJournalEntry(@144)
EraseJournalEntry(@143)
EraseJournalEntry(@145)
EraseJournalEntry(@146)
EraseJournalEntry(@147)
EraseJournalEntry(@148)
EraseJournalEntry(@149)
EraseJournalEntry(@150)
EraseJournalEntry(@151)
  AddJournalEntry(@152,QUEST)
  AddJournalEntry(@153,QUEST_DONE)
  AddJournalEntry(@154,QUEST_DONE)
AddJournalEntry(@155,QUEST_DONE)
StartCutSceneMode()
StartCutScene("b!chap3a")~ EXIT
END


END

/* Bodhi */

ADD_STATE_TRIGGER BODHI 0 
~!GlobalGT("B!Alternatives","GLOBAL",5) !GlobalGT("B!Tourist","GLOBAL",7)~ 

ADD_STATE_TRIGGER BODHI 38 
~!GlobalGT("B!Alternatives","GLOBAL",5) !GlobalGT("B!Tourist","GLOBAL",7)~

APPEND BODHI

IF WEIGHT #-1 ~GlobalGT("B!Alternatives","GLOBAL",5)~ THEN BEGIN bodhi1
  SAY @158 
  IF ~~ THEN DO ~SetGlobal("BodhiAppear","GLOBAL",3) EscapeArea()~ EXIT
END

IF WEIGHT #-1 ~GlobalGT("B!Tourist","GLOBAL",7)~ THEN BEGIN bodhi2
  SAY @159 
  IF ~~ THEN DO ~SetGlobal("BodhiAppear","GLOBAL",3) EscapeArea()~ EXIT
END
END 

/* Gaelan */

APPEND GAELAN

IF WEIGHT #-1 ~GlobalGT("B!Alternatives","GLOBAL",4) Global("B!AlternativesGaelan","LOCALS",0)~ THEN BEGIN gaelan1
  SAY #21037 /* ~Ye've been seen with dangerous folk... dangerous folk indeed. I be askin' ye a question and ye be answerin' it truthfully or be suffering the consequences.~ [GAELEN30] */
  IF ~~ THEN GOTO gaelan2
END 

IF ~~ THEN BEGIN gaelan2
  SAY #21038 /* ~This person ye was seen with... have ye joined forces with her?~ */
  IF ~GlobalGT("B!Alternatives","GLOBAL",5)
~ THEN REPLY #21039 /* ~Yes, I have.~ */ DO ~SetGlobal("B!AlternativesGaelan","LOCALS",1)~ GOTO 56
  IF ~!GlobalGT("B!Alternatives","GLOBAL",5)
~ THEN REPLY #21040 /* ~Yes, I have.~ */ DO ~SetGlobal("B!AlternativesGaelan","LOCALS",1)~ GOTO 58
  IF ~GlobalGT("B!Alternatives","GLOBAL",5)
~ THEN REPLY #21041 /* ~No, I haven't.~ */ DO ~SetGlobal("B!AlternativesGaelan","LOCALS",1)~ GOTO 57
  IF ~!GlobalGT("B!Alternatives","GLOBAL",5)
~ THEN REPLY #21042 /* ~No, I haven't.~ */ DO ~SetGlobal("B!AlternativesGaelan","LOCALS",1)~ GOTO 59
END 

IF WEIGHT #-1 ~GlobalGT("B!Tourist","GLOBAL",3) Global("B!AlternativesGaelan","LOCALS",0)~ THEN BEGIN gaelan3
  SAY #21037 /* ~Ye've been seen with dangerous folk... dangerous folk indeed. I be askin' ye a question and ye be answerin' it truthfully or be suffering the consequences.~ [GAELEN30] */
  IF ~~ THEN GOTO gaelan4
END 

IF ~~ THEN BEGIN gaelan4
  SAY #21038 /* ~This person ye was seen with... have ye agreed to do what he says?~ */
  IF ~GlobalGT("B!Tourist","GLOBAL",7)
~ THEN REPLY #21039 /* ~Yes, I have.~ */ DO ~SetGlobal("B!AlternativesGaelan","LOCALS",1)~ GOTO 56
  IF ~!GlobalGT("B!Tourist","GLOBAL",7)
~ THEN REPLY #21040 /* ~Yes, I have.~ */ DO ~SetGlobal("B!AlternativesGaelan","LOCALS",1)~ GOTO gaelan5
  IF ~GlobalGT("B!Tourist","GLOBAL",7)
~ THEN REPLY #21041 /* ~No, I haven't.~ */ DO ~SetGlobal("B!AlternativesGaelan","LOCALS",1)~ GOTO 57
  IF ~!GlobalGT("B!Tourist","GLOBAL",7)
~ THEN REPLY #21042 /* ~No, I haven't.~ */ DO ~SetGlobal("B!AlternativesGaelan","LOCALS",1)~ GOTO gaelan6
END 

IF ~~ THEN BEGIN gaelan5
  SAY #21045 /* ~Eh?  I have a spell here that be saying that ye be lying.  This is no time to be tellin' Gaelan jokes, me <LADYLORD>.  No time, indeed!~ */
  IF ~~ THEN GOTO gaelan7
END

IF ~~ THEN BEGIN gaelan6
  SAY #21046 /* ~Coo!  Good!  It is good to be seeing that there are those who tell the truth, even here in this city, aye?~ */
  IF ~~ THEN GOTO gaelan7
END

IF ~~ THEN BEGIN gaelan7
  SAY @160 
  IF ~PartyGoldLT(20000)
~ THEN REPLY #21050 /* ~I need more help finding work.  Do you know of anything?~ */ GOTO 43
  IF ~PartyGoldGT(19999)
~ THEN REPLY #21051 /* ~I have the money, now.~ */ GOTO 51
  IF ~~ THEN REPLY #21053 /* ~Bodhi said the Shadow Thieves are behind the 'assistance' you give. Is it true?~ */ GOTO 64
  IF ~PartyGoldLT(20000)
~ THEN REPLY #21052 /* ~No, not right now.  I shall return.~ */ GOTO 52
END 
END 

/* Aster - B!Alternatives=6 */

APPEND ~B!ASTER~ 

IF ~Global("B!Alternatives","GLOBAL",6)~ THEN a2.0
SAY @161  
++ @162 + a2.1
++ @163 + a2.2
++ @164 + a2.3
END 

IF ~~ a2.1
SAY @165 
IF ~~ THEN EXIT 
END

IF ~~ a2.2
SAY @166 
IF ~~ THEN EXIT
END 

IF ~~ a2.3 
SAY @167 
IF ~~ THEN DO ~ActionOverride("b!aster",ReallyForceSpell(Player1,CLERIC_BLESS))~ EXIT 
END 
END 

/* Shadow Thieves - getting in */

APPEND ~B!STDOOR~ 

IF ~Global("B!Alternatives","GLOBAL",6)~ THEN BEGIN st0
  SAY @168
  IF ~OpenState("door0305",FALSE)~ THEN DO ~SetGlobal("B!Alternatives","GLOBAL",7)
    GiveItemCreate("misc4s",Player1,0,0,0)
    TriggerActivation("Tran0327",TRUE)
    Unlock("door0305")
    StartCutSceneMode()
    MoveToObject("door0305")
    OpenDoor("door0305")
    EndCutSceneMode()~ EXIT
  IF ~OpenState("door0305",TRUE)~ THEN DO ~SetGlobal("B!Alternatives","GLOBAL",7)
    GiveItemCreate("misc4s",Player1,0,0,0)
    TriggerActivation("Tran0327",TRUE)
    Unlock("door0305")
    StartCutSceneMode()
    MoveToObject("door0305")
    EndCutSceneMode()~ EXIT
END

IF ~Global("B!Tourist","GLOBAL",8)~ THEN BEGIN st0a
  SAY @169
  IF ~OpenState("door0305",FALSE)~ THEN DO ~SetGlobal("B!Tourist","GLOBAL",9)
    GiveItemCreate("misc4s",Player1,0,0,0)
    TriggerActivation("Tran0327",TRUE)
    Unlock("door0305")
    StartCutSceneMode()
    MoveToObject("door0305")
    OpenDoor("door0305")
    EndCutSceneMode()~ EXIT
  IF ~OpenState("door0305",TRUE)~ THEN DO ~SetGlobal("B!Tourist","GLOBAL",9)
    GiveItemCreate("misc4s",Player1,0,0,0)
    TriggerActivation("Tran0327",TRUE)
    Unlock("door0305")
    StartCutSceneMode()
    MoveToObject("door0305")
    EndCutSceneMode()~ EXIT
END

IF ~!Dead("Aran") OR(2) GlobalGT("B!Alternatives","GLOBAL",6) GlobalGT("B!Tourist","GLOBAL",7)~ THEN BEGIN st1
  SAY @170
  IF ~~ THEN EXIT
END

IF ~Dead("Aran") OR(2) GlobalGT("B!Alternatives","GLOBAL",6) GlobalGT("B!Tourist","GLOBAL",7)~ THEN BEGIN st2
  SAY @171
  IF ~~ THEN EXIT
END
END 

/* Zahl - guy who opens the door to Bodhi's lair */

APPEND ~B!ZAHL~

IF ~Global("FleshAttack","AR0801",0)~ THEN BEGIN zahl0
  SAY @172 
  IF ~~ THEN GOTO zahl1
END

IF ~~ THEN BEGIN zahl1
  SAY @173 
  IF ~~ THEN DO ~SetGlobal("FleshAttack","AR0801",1)~ EXIT
END

IF ~Global("GrimwarderAttack","AR0801",1)~ THEN BEGIN zahl2
  SAY #50890 /* ~No!  Stay back!~ */
  IF ~~ THEN DO ~Kill(Myself)~ EXIT
END

IF ~NumDead("bodfgt01",2)
NumDead("bodfgt02",2)~ THEN BEGIN zahl3
  SAY #51079 /* ~That is all I can do for you.~ */
  IF ~~ THEN DO ~EscapeArea()~ EXIT
END
END 

/* Aster - B!Alternatives=7 */ 

APPEND ~B!ASTER~ 

IF ~Global("B!Alternatives","GLOBAL",7)~ THEN BEGIN a3.0
SAY @174  
+ ~Dead("Aran")~ + @175 + a3.1
+ ~!Dead("Aran")~ + @175 + a3.2
++ @176 + a3.3 
++ @177 + a3.4
END

IF ~~ a3.1
SAY @178
++ @179 + a3.5
++ @180 + a3.6
++ @181 + a3.7
END

IF ~~ a3.2
SAY @182 
IF ~~ THEN EXIT 
END 

IF ~~ a3.3
SAY @183 
IF ~~ THEN EXIT 
END

IF ~~ a3.4 
SAY @184 
IF ~~ THEN DO ~ActionOverride("b!aster",ReallyForceSpell(Player1,CLERIC_BLESS)~ EXIT 
END 

IF ~~ a3.5
SAY @185
++ @186 + a3.8 
++ @187 + a3.9 
++ @188 + a3.6 
END

IF ~~ a3.6 
SAY @189 
++ @190 + a3.10 
++ @191 + a3.11 
++ @192 + a3.12 
END 

IF ~~ a3.7
SAY @193 
IF ~~ THEN + a3.6 
END 

IF ~~ a3.8
SAY @194
++ @195 + a3.13
++ @196 + a3.14
++ @197 + a3.15
END 

IF ~~ a3.9 
SAY @198 
= @199 
++ @200 + a3.6 
++ @201 + a3.13 
++ @202 + a3.6 
END 

IF ~~ a3.10 
SAY @203 
= @204 
= @205 
IF ~~ THEN + a3.11 
END 
END 

CHAIN ~B!ASTER~ a3.11 
@206 
= @207 
= @208
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @209 
== ~B!ASTER~ @210
= @211 
END 
++ @212 + a3.11a 
++ @213 + a3.11a 
++ @214 + a3.11b 

CHAIN ~B!ASTER~ a3.11a
@215 
DO ~SetGlobal("B!Alternatives","GLOBAL",8)
    GiveItemCreate("misc6w",Player1,0,0,0)
    GiveItemCreate("misc6w",Player1,0,0,0)
    GiveItemCreate("misc6w",Player1,0,0,0)
    GiveItemCreate("misc6w",Player1,0,0,0) 
    EraseJournalEntry(@42)
    EraseJournalEntry(@152)
    EraseJournalEntry(@915)
    AddJournalEntry(@216,QUEST_DONE)
    AddJournalEntry(@217,QUEST)
    AddXPObject(Player1,36750)
    AddXPObject(Player2,36750)
    AddXPObject(Player3,36750)
    AddXPObject(Player4,36750)
    AddXPObject(Player5,36750)
    AddXPObject(Player6,36750)~ EXIT 
    
CHAIN ~B!ASTER~ a3.11b 
@218 
EXTERN ~B!ASTER~ a3.11a

APPEND ~B!ASTER~ 

IF ~~ a3.12 
SAY @219
++ @220 + a3.16 
+ ~Alignment(Player1,MASK_EVIL)~ + @221 + a3.17
++ @222 + a3.18a
++ @223 + a3.19
END

IF ~~ a3.13
SAY @224 
IF ~~ THEN + a3.14 
END 

IF ~~ a3.14 
SAY @225 
++ @226 + a3.6 
++ @227 + a3.18 
++ @228 + a3.20 
END 

IF ~~ a3.15 
SAY @229 
IF ~~ THEN + a3.6 
END 

IF ~~ a3.16 
SAY @230 
IF ~~ THEN + a3.6 
END

IF ~~ a3.17 
SAY @231
= @232 
IF ~~ THEN + a3.6 
END 

IF ~~ a3.18 
SAY @233 
IF ~~ THEN + a3.6  
END 

IF ~~ a3.18a 
SAY @234 
IF ~~ THEN + a3.6  
END 
IF ~~ a3.19 
SAY @235 
IF ~~ THEN + a3.6  
END 

IF ~~ a3.20 
SAY @103 
IF ~~ THEN + a3.6  
END 
END 

/* Bodhi - villain's exposition */

EXTEND_BOTTOM BODHI2 1 2 3 
+ ~Global("B!Alternatives","GLOBAL",8)~ + @236 + 4
END 

INTERJECT BODHI2 4 b_BodhiExposition1 
== BODHI2 IF ~Global("B!Alternatives","GLOBAL",8)~ THEN @237 
END BODHI2 6 

ADD_TRANS_TRIGGER BODHI2 12 
~!Global("B!Alternatives","GLOBAL",8)~ DO 0 1 

EXTEND_BOTTOM BODHI2 12 
+ ~Global("B!Alternatives","GLOBAL",8)~ + @238 + 11
+ ~Global("B!Alternatives","GLOBAL",8)~ + @239 + 11 
END 

ADD_TRANS_TRIGGER BODHI2 24 
~!Global("B!Alternatives","GLOBAL",8)~ DO 0 1 2 

EXTEND_BOTTOM BODHI2 24 
IF ~Global("B!Alternatives","GLOBAL",8)~ THEN REPLY #39743 /* ~You'll not walk away from me so easy!~ */ DO ~SetGlobal("LassalVampires","GLOBAL",3)
AddExperienceParty(18750)
~ GOTO be1 
  IF ~Global("B!Alternatives","GLOBAL",8)~ THEN REPLY #39744 /* ~What manner of creature are you? Is this all a game to you?~ */ DO ~SetGlobal("LassalVampires","GLOBAL",3)
AddExperienceParty(18750)
~ GOTO be2 
  IF ~Global("B!Alternatives","GLOBAL",8)~ THEN REPLY #39745 /* ~Crawl back to your master then. I will see him soon enough.~ */ DO ~SetGlobal("LassalVampires","GLOBAL",3)
AddExperienceParty(18750)
~ GOTO be3 
END 

APPEND BODHI2 

IF ~~ THEN BEGIN be1
  SAY #39746 /* ~Oh yes, yes I will.  I see no reason to finish this here.  You can still be useful to Irenicus where he is.  Fight on; I have seen what I came to see.~ */
  IF ~Global("C#IM_ImoenStays","GLOBAL",0)~ THEN DO ~CreateVisualEffectObject("SPFLESHS",Myself)
ReallyForceSpellDead(Myself,VAMPIRE_BAT_FORM_CHANGE)
EscapeArea()
~ UNSOLVED_JOURNAL @240 EXIT
  IF ~!Global("C#IM_ImoenStays","GLOBAL",0)~ THEN DO ~CreateVisualEffectObject("SPFLESHS",Myself)
ReallyForceSpellDead(Myself,VAMPIRE_BAT_FORM_CHANGE)
EscapeArea()
~ UNSOLVED_JOURNAL @924 EXIT
END

IF ~~ THEN BEGIN be2 
  SAY #39747 /* ~Perhaps, but games can be deadly serious, especially when I keep the rules to myself. Fight on, and seek your lost Imoen; I have seen what I came to see.~ */
  IF ~Global("C#IM_ImoenStays","GLOBAL",0)~ THEN DO ~CreateVisualEffectObject("SPFLESHS",Myself)
ReallyForceSpellDead(Myself,VAMPIRE_BAT_FORM_CHANGE)
EscapeArea()
~ UNSOLVED_JOURNAL @240 EXIT
  IF ~!Global("C#IM_ImoenStays","GLOBAL",0)~ THEN DO ~CreateVisualEffectObject("SPFLESHS",Myself)
ReallyForceSpellDead(Myself,VAMPIRE_BAT_FORM_CHANGE)
EscapeArea()
~ UNSOLVED_JOURNAL @924 EXIT
END

IF ~~ THEN BEGIN be3
  SAY #39748 /* ~Oh, I am not crawling away for fear of your wrath. By all means, coddle, develop and direct it. Fight on, and seek your lost Imoen; I have seen what I came to see.~ */
  IF ~Global("C#IM_ImoenStays","GLOBAL",0)~ THEN DO ~CreateVisualEffectObject("SPFLESHS",Myself)
ReallyForceSpellDead(Myself,VAMPIRE_BAT_FORM_CHANGE)
EscapeArea()
~ UNSOLVED_JOURNAL @240 EXIT
  IF ~!Global("C#IM_ImoenStays","GLOBAL",0)~ THEN DO ~CreateVisualEffectObject("SPFLESHS",Myself)
ReallyForceSpellDead(Myself,VAMPIRE_BAT_FORM_CHANGE)
EscapeArea()
~ UNSOLVED_JOURNAL @924 EXIT
END
END 

/* Aster - B!Alternatives=8 */ 

APPEND ~B!ASTER~ 

IF ~Global("B!Alternatives","GLOBAL",8)~ THEN BEGIN a4.0
SAY @241  
+ ~Global("LassalVampires","GLOBAL",3)~ + @242 DO ~SetGlobal("B!Alternatives","GLOBAL",9)
    AddXPObject(Player1,50000)
    AddXPObject(Player2,50000)
    AddXPObject(Player3,50000)
    AddXPObject(Player4,50000)
    AddXPObject(Player5,50000)
    AddXPObject(Player6,50000)~ + a4.1 
+ ~Global("LassalVampires","GLOBAL",3)~ + @243 DO ~SetGlobal("B!Alternatives","GLOBAL",9)
    AddXPObject(Player1,50000)
    AddXPObject(Player2,50000)
    AddXPObject(Player3,50000)
    AddXPObject(Player4,50000)
    AddXPObject(Player5,50000)
    AddXPObject(Player6,50000)~ + a4.1 
+ ~!Global("LassalVampires","GLOBAL",3)~ + @244 + a4.2 
++ @245 + a4.3 
END 

IF ~~ a4.1 
SAY @246  
++ @247 + a4.8 
++ @248 + a4.4 
++ @249 + a4.5 
END 

IF ~~ a4.2 
SAY @250 
IF ~~ THEN EXIT 
END 

IF ~~ a4.3 
SAY @251 
++ @252 + a4.6 
++ @253 + a4.7 
++ @254 + a4.7
END 

IF ~~ a4.4 
SAY @255  
IF ~~ THEN EXIT 
END 

IF ~~ a4.5 
SAY @256  
IF ~Global("C#IM_ImoenStays","GLOBAL",0)~ THEN  DO ~EraseJournalEntry(@42) 
EraseJournalEntry(@152) 
EraseJournalEntry(@157) 
EraseJournalEntry(@257) 
EraseJournalEntry(@240)
EraseJournalEntry(@924)  
EraseJournalEntry(@217) 
AddJournalEntry(@258,QUEST_DONE) 
StartCutSceneMode()
StartCutScene("B!ALTM3B")~ EXIT 
IF ~!Global("C#IM_ImoenStays","GLOBAL",0)~ THEN  DO ~EraseJournalEntry(@42) 
EraseJournalEntry(@152) 
EraseJournalEntry(@157) 
EraseJournalEntry(@257) 
EraseJournalEntry(@240) 
EraseJournalEntry(@924)  
EraseJournalEntry(@217) 
AddJournalEntry(@925,QUEST_DONE) 
StartCutSceneMode()
StartCutScene("B!ALTM3B")~ EXIT
END 

IF ~~ a4.6 
SAY @259  
IF ~~ THEN EXIT 
END 

IF ~~ a4.7 
SAY @260  
IF ~~ THEN EXIT 
END 

IF ~~ a4.8 
SAY @261  
++ @262 + a4.9 
++ @263 + a4.10 
++ @264 + a4.11 
++ @265 + a4.12 
++ @266 + a4.15 
END 

IF ~~ a4.9 
SAY @267 
IF ~~ THEN + a4.14 
END 

IF ~~ a4.10 
SAY @268 
IF ~~ THEN + a4.14 
END 

IF ~~ a4.11 
SAY @269 
= @270 
IF ~~ THEN + a4.14 
END 

IF ~~ a4.12 
SAY @271 
++ @272 + a4.13 
++ @273 + a4.14 
END 

IF ~~ a4.13 
SAY @274 
IF ~~ THEN + a4.14 
END 

IF ~~ a4.14 
SAY @275 
++ @135 + a4.8 
++ @2 + a4.15 
END 

IF ~~ a4.15 
SAY @276  
++ @277 + a4.5 
++ @278 + a4.4 
END 

IF ~Global("B!Alternatives","GLOBAL",9)~ THEN BEGIN a5.0 
SAY @276   
++ @277 + a4.5 
++ @278 + a4.4 
END 
END 

/* Aster, Saemon, and Sime */ 

CHAIN 
IF ~True()~ THEN ~B!ASTER2~ a6.0
@279  
DO ~SetGlobal("B!Alternatives","GLOBAL",10)~ 
== PPSAEM @280  
== ~B!ASTER2~ @281  
== PPSAEM @282  
== ~B!ASTER2~ @283  
== PPSAEM @284 
= @285 
END
  IF ~~ THEN REPLY #43905 /* ~I am all ears, captain. Yours is the voice of experience and I will listen.~ */ EXTERN PPSAEM a6.2 
  IF ~~ THEN REPLY #43906 /* ~Speak if you must but keep it brief! We should sat sail as soon as possible!~ */ EXTERN ~B!ASTER2~ a6.1 
  IF ~~ THEN REPLY @286 EXTERN ~B!ASTER2~ a6.1


CHAIN ~B!ASTER2~ a6.1 
@287 
EXTERN ~PPSAEM~ a6.2 

CHAIN PPSAEM a6.2
@288
== ~B!ASTER2~ @289
== PPSAEM #43913 /* ~Protection? I was not aware of any such plans. The captain should be consulted on all such matters.~ */
== ~B!ASTER2~ @290 
== ~B!ASTER2~ #43915 /* ~This is Sime, and she will be staying very close to you, Saemon Havarian. For your safety, of course.~ */
== PPSAEM #43916 /* ~Of course.~ */
== PPSIME #43917 /* ~I shall make certain that, should we be surprised at sea, death will not come from a surprise source. Do I make myself clear?~ */
== PPSAEM #43918 /* ~As clear as clear could be, m'lady, though I am not sure I approve of your tone. I assure you, nothing untoward will happen during our crossing.~ */
== ~B!ASTER2~ #43919 /* ~Sime shall also advise you, <CHARNAME>. She is acquainted with a few of the inhabitants of the island.~ */
== PPSAEM @291 
= #43921 /* ~Hold fast, the journey begins.~ */
DO ~StartCutSceneMode()
StartCutScene("B!ALT41d")~ 
EXIT

APPEND PPSAEM 

IF ~Global("B!Alternatives","GLOBAL",10)
Global("AsylumPlot","GLOBAL",1)~ THEN BEGIN s0
  SAY #43922 /* ~We have arrived, and in good time, I might add. Congratulatory remarks for all the crew, and to our visitors for their delightful company.~ [PPSAEM02] */
  IF ~Global("C#IM_ImoenStays","GLOBAL",0)
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Yoshimo")
!IsValidForPartyDialog("Korgan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2) 
EraseJournalEntry(@42) 
EraseJournalEntry(@152) 
EraseJournalEntry(@157) 
EraseJournalEntry(@257) 
EraseJournalEntry(@240) 
EraseJournalEntry(@924)  
EraseJournalEntry(@217)
~ JOURNAL @292 FLAGS 128 EXTERN ~PPSIME~ 1
  IF ~Global("C#IM_ImoenStays","GLOBAL",0)
IsValidForPartyDialog("Nalia")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2) 
  EraseJournalEntry(@42) 
EraseJournalEntry(@152) 
EraseJournalEntry(@157) 
EraseJournalEntry(@257) 
EraseJournalEntry(@240) 
EraseJournalEntry(@924)  
EraseJournalEntry(@217) 
~ JOURNAL @292 FLAGS 128 EXTERN ~NALIAJ~ 272
  IF ~Global("C#IM_ImoenStays","GLOBAL",0)
!IsValidForPartyDialog("Nalia")
IsValidForPartyDialog("Jan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2) 
EraseJournalEntry(@42) 
EraseJournalEntry(@152) 
EraseJournalEntry(@157) 
EraseJournalEntry(@257) 
EraseJournalEntry(@240) 
EraseJournalEntry(@924)  
EraseJournalEntry(@217) 
~ JOURNAL @292 FLAGS 128 EXTERN ~JANJ~ 150
  IF ~Global("C#IM_ImoenStays","GLOBAL",0)
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Jan")
IsValidForPartyDialog("Yoshimo")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2) 
EraseJournalEntry(@42) 
EraseJournalEntry(@152) 
EraseJournalEntry(@157) 
EraseJournalEntry(@257) 
EraseJournalEntry(@240) 
EraseJournalEntry(@924)  
EraseJournalEntry(@217) 
~ JOURNAL @292 FLAGS 128 EXTERN ~YOSHJ~ 92
  IF ~Global("C#IM_ImoenStays","GLOBAL",0)
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Yoshimo")
IsValidForPartyDialog("Korgan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)
EraseJournalEntry(@42) 
EraseJournalEntry(@152) 
EraseJournalEntry(@157) 
EraseJournalEntry(@257) 
EraseJournalEntry(@240) 
EraseJournalEntry(@924)  
EraseJournalEntry(@217) 
~ JOURNAL @292 FLAGS 128 EXTERN ~KORGANJ~ 117
  IF ~!Global("C#IM_ImoenStays","GLOBAL",0)
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Yoshimo")
!IsValidForPartyDialog("Korgan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2) 
EraseJournalEntry(@42) 
EraseJournalEntry(@152) 
EraseJournalEntry(@157) 
EraseJournalEntry(@257) 
EraseJournalEntry(@240) 
EraseJournalEntry(@924)  
EraseJournalEntry(@217)
~ JOURNAL @926 FLAGS 128 EXTERN ~PPSIME~ 1
  IF ~!Global("C#IM_ImoenStays","GLOBAL",0)
IsValidForPartyDialog("Nalia")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2) 
  EraseJournalEntry(@42) 
EraseJournalEntry(@152) 
EraseJournalEntry(@157) 
EraseJournalEntry(@257) 
EraseJournalEntry(@240) 
EraseJournalEntry(@924)  
EraseJournalEntry(@217) 
~ JOURNAL @926 FLAGS 128 EXTERN ~NALIAJ~ 272
  IF ~!Global("C#IM_ImoenStays","GLOBAL",0)
!IsValidForPartyDialog("Nalia")
IsValidForPartyDialog("Jan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2) 
EraseJournalEntry(@42) 
EraseJournalEntry(@152) 
EraseJournalEntry(@157) 
EraseJournalEntry(@257) 
EraseJournalEntry(@240) 
EraseJournalEntry(@924)  
EraseJournalEntry(@217) 
~ JOURNAL @926 FLAGS 128 EXTERN ~JANJ~ 150
  IF ~!Global("C#IM_ImoenStays","GLOBAL",0)
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Jan")
IsValidForPartyDialog("Yoshimo")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2) 
EraseJournalEntry(@42) 
EraseJournalEntry(@152) 
EraseJournalEntry(@157) 
EraseJournalEntry(@257) 
EraseJournalEntry(@240) 
EraseJournalEntry(@924)  
EraseJournalEntry(@217) 
~ JOURNAL @926 FLAGS 128 EXTERN ~YOSHJ~ 92
  IF ~!Global("C#IM_ImoenStays","GLOBAL",0)
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Yoshimo")
IsValidForPartyDialog("Korgan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)
EraseJournalEntry(@42) 
EraseJournalEntry(@152) 
EraseJournalEntry(@157) 
EraseJournalEntry(@257) 
EraseJournalEntry(@240) 
EraseJournalEntry(@924)  
EraseJournalEntry(@217) 
~ JOURNAL @926 FLAGS 128 EXTERN ~KORGANJ~ 117
END
END 

EXTEND_TOP KORGANJ 117 
IF ~OR(2) Global("B!Alternatives","GLOBAL",10) Global("B!Tourist","GLOBAL",10)~ THEN EXTERN PPSIME 1
END

EXTEND_BOTTOM KORGANJ 118
IF ~OR(2) Global("B!Alternatives","GLOBAL",10) Global("B!Tourist","GLOBAL",10)~ THEN EXTERN PPSIME 1
END

EXTEND_TOP YOSHJ 92
IF ~OR(2) Global("B!Alternatives","GLOBAL",10) Global("B!Tourist","GLOBAL",10)~ THEN EXTERN PPSIME 1
END

EXTEND_TOP JANJ 150 
IF ~OR(2) Global("B!Alternatives","GLOBAL",10) Global("B!Tourist","GLOBAL",10)~ THEN EXTERN PPSIME 1
END

EXTEND_TOP NALIAJ 272 
IF ~OR(2) Global("B!Alternatives","GLOBAL",10) Global("B!Tourist","GLOBAL",10)~ THEN EXTERN PPSIME 1
END 

ADD_TRANS_TRIGGER PPSIME 11 
~!Global("B!Alternatives","GLOBAL",10)~ DO 3 

EXTEND_BOTTOM PPSIME 11 
IF ~Global("B!Alternatives","GLOBAL",10) PartyHasItem("misc8v")~ THEN REPLY #43952 /* ~I have a ward token that will unlock the gates.~ */ GOTO si0
END 

APPEND PPSIME 

IF ~~ si0
SAY @293
  IF ~~ THEN DO ~EscapeArea()~ UNSOLVED_JOURNAL @294 EXIT
END 
END 

/* Tanova */

ADD_TRANS_TRIGGER VVTANOV 1 
~GlobalLT("B!Alternatives","GLOBAL",6)~ DO 1 

/* Prelate */
///* and this is why people dislike paladins... */

ADD_TRANS_TRIGGER HPRELATE 32
~!Global("B!Alternatives","GLOBAL",10) !Global("B!Tourist","GLOBAL",10)~ DO 0 

ADD_TRANS_TRIGGER HPRELATE 32
~!Global("B!Alternatives","GLOBAL",10) !Global("B!Tourist","GLOBAL",10)~ DO 0 

EXTEND_BOTTOM HPRELATE 32 
IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY #53011 /* ~I do.  I must do battle with a powerful coven of vampires in this city and I ask for the Order's assistance.~ */ GOTO p0 
END 

EXTEND_BOTTOM HPRELATE 32 
IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY #53011 /* ~I do.  I must do battle with a powerful coven of vampires in this city and I ask for the Order's assistance.~ */ GOTO p0a 
END 

ADD_TRANS_TRIGGER HPRELATE 33 
~!Global("B!Alternatives","GLOBAL",10) !Global("B!Tourist","GLOBAL",10)~ DO 0 

EXTEND_BOTTOM HPRELATE 33
IF ~Global("B!Alternatives","GLOBAL",10)~ THEN REPLY #53015 /* ~I do.  I intend to do battle with a powerful coven of vampires here in the city and I wish to request the Order's aid.~ */ GOTO p0 
END 

EXTEND_BOTTOM HPRELATE 33
IF ~Global("B!Tourist","GLOBAL",10)~ THEN REPLY #53015 /* ~I do.  I intend to do battle with a powerful coven of vampires here in the city and I wish to request the Order's aid.~ */ GOTO p0a 
END 

ADD_STATE_TRIGGER HPRELATE 34 
~!Global("B!Alternatives","GLOBAL",10)~ 

ADD_TRANS_TRIGGER HPRELATE 34
~!Global("B!Tourist","GLOBAL",10)~  DO 0 2 

EXTEND_BOTTOM HPRELATE 34 
  IF ~Global("WorkingForBodhi","GLOBAL",0)
CheckStatGT(Player1,14,CHR)~ THEN REPLY #53021 /* ~Because I have an enemy that is yours, as well.  I intend to battle a coven of powerful vampires here in the city... and I am here to ask for your assistance.~ */ GOTO p4 
END 

EXTEND_BOTTOM HPRELATE 34 
IF ~Global("WorkingForBodhi","GLOBAL",0)
CheckStatLT(Player1,15,CHR)~ THEN REPLY #53023 /* ~Because my enemy is a powerful vampire here in Athkatla, and I offer you the privilege of joining me when I destroy her.~ */ GOTO p5  
END 

APPEND HPRELATE 

IF ~~ p0 
SAY @295 
IF ~Global("PaladinOrder","GLOBAL",1)~ THEN REPLY @296 GOTO 44
IF ~!Global("PaladinOrder","GLOBAL",1)~ THEN REPLY @296 GOTO 48 
END 

IF ~~ p0a 
SAY @297 
  IF ~Global("PaladinOrder","GLOBAL",1)~ THEN REPLY @298 GOTO 44
  IF ~!Global("PaladinOrder","GLOBAL",1)~ THEN REPLY @298 GOTO 48
END


IF WEIGHT #-1 ~Global("B!Alternatives","GLOBAL",10) 
    Global("Chapter","GLOBAL",%bg2_chapter_6%)
    InPartySlot(LastTalkedToBy,0)
    !Global("PaladinOrder","GLOBAL",1)
    ReputationLT(LastTalkedToBy,10)
    Global("OrderFightBodhi","GLOBAL",0)
    !Dead("c6bodhi")~ THEN BEGIN p1 
SAY @299 
  IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY #53021 /* ~Because I have an enemy that is yours, as well.  I intend to battle a coven of powerful vampires here in the city... and I am here to ask for your assistance.~ */ GOTO p2
  IF ~CheckStatLT(Player1,15,CHR)~ THEN REPLY #53023 /* ~Because my enemy is a powerful vampire here in Athkatla, and I offer you the privilege of joining me when I destroy her.~ */ GOTO p3 
  IF ~~ THEN REPLY #53025 /* ~Do not threaten me, old man.  You'll find it dangerous for your health.~ */ GOTO 41
  IF ~~ THEN REPLY #53026 /* ~Because I am leaving.  You can keep your self-righteousness and stick it, old man.~ */ GOTO 42
END 

IF ~~ p2
SAY @300
  IF ~~ THEN REPLY #53045 /* ~I destroyed her guild, but not her.  And now she has regained her strength and returned... and she is too powerful for me to defeat alone.~ */ GOTO 48
  IF ~~ THEN REPLY #53046 /* ~I'll not explain myself to you.  The fact is, I did not destroy her and I cannot without your aid.~ */ GOTO 50
END 

IF ~~ THEN BEGIN p3 
  SAY @301 
  IF ~~ THEN REPLY #53050 /* ~I am not lying.  I destroyed her guild, but not her, and now she has recovered and returned with a more powerful force.  I cannot defeat her alone.~ */ GOTO 52
  IF ~~ THEN REPLY #53051 /* ~I'll not explain myself to you.  The fact is, I did not destroy her and I cannot without your aid.~ */ GOTO 52
  IF ~~ THEN REPLY #53052 /* ~I am up to nothing.  Accuse me again of being a liar and you'll regret it, old man.~ */ GOTO 57
END 

IF ~~ p4
SAY @302
  IF ~~ THEN REPLY @303 GOTO 48
  IF ~~ THEN REPLY @304 GOTO 50
END 

IF ~~ THEN BEGIN p5 
  SAY @305 
  IF ~~ THEN REPLY @306 GOTO 52
  IF ~~ THEN REPLY @307 GOTO 52
  IF ~~ THEN REPLY #53052 /* ~I am up to nothing.  Accuse me again of being a liar and you'll regret it, old man.~ */ GOTO 57
END 

END 

/* Cleaning up the references to Bodhi, Aran Linvale, and the Shadow Thieves */ 

APPEND ARNWAR08 

IF WEIGHT #-1 ~!Dead("booter02") OR(2) GlobalGT("B!Alternatives","GLOBAL",5) GlobalGT("B!Tourist","GLOBAL",7)~ THEN BEGIN tiz0 
SAY @308 
IF ~~ THEN EXIT
END 

IF WEIGHT #-1 ~Dead("booter02") OR(2) GlobalGT("B!Alternatives","GLOBAL",5) GlobalGT("B!Tourist","GLOBAL",7)~ THEN BEGIN tiz1
SAY @309 
+ ~OpenState("DOOR03",TRUE)~ + @310DO ~AddJournalEntry(@257,QUEST)~ + 5 
+ ~OpenState("DOOR03",TRUE)~ + @311DO ~AddJournalEntry(@257,QUEST)~ + 5  
+ ~OpenState("DOOR03",FALSE)~ + @312 EXIT   
END 
END 

INTERJECT ARNWAR08 7 b_tizzak
== ARNWAR08 IF ~Global("B!Alternatives","GLOBAL",7)~ THEN @313 
END ARNWAR08 tiz3

INTERJECT ARNWAR08 7 b_tizzak
== ARNWAR08 IF ~Global("B!Tourist","GLOBAL",9)~ THEN @313 
END ARNWAR08 tiz3 

ADD_TRANS_TRIGGER ARNWAR08 2 
~!GlobalGT("B!Alternatives","GLOBAL",5) !GlobalGT("B!Tourist","GLOBAL",7)~ DO 0 

EXTEND_BOTTOM ARNWAR08 2 
+ ~OR(2) GlobalGT("B!Alternatives","GLOBAL",5) GlobalGT("B!Tourist","GLOBAL",7)~ + @314 + 5 
END 

EXTEND_BOTTOM ARNWAR08 3 
+ ~OR(2) GlobalGT("B!Alternatives","GLOBAL",5) GlobalGT("B!Tourist","GLOBAL",7)~ + @315 + tiz2 
END 

EXTEND_BOTTOM ARNWAR08 7 
IF ~OR(2) GlobalGT("B!Alternatives","GLOBAL",5) GlobalGT("B!Tourist","GLOBAL",7)~ THEN + tiz4 
END 


APPEND ARNWAR08 

IF ~~ tiz2 
SAY @316 
IF ~~ THEN + 5 
END 

IF ~~ tiz3 
SAY @317 
IF ~~ THEN DO ~EscapeArea()~ EXIT 
END 

IF ~~ tiz4
SAY #39276 
IF ~~ THEN DO ~EscapeArea()~ EXIT 
END
END 

APPEND ARNWAR06 

IF WEIGHT #-1 ~OR(2) Global("B!Alternatives","GLOBAL",7) Global("B!Tourist","GLOBAL",9)~ THEN BEGIN haz0
SAY @318 
  IF ~~ THEN DO ~Enemy()~ EXIT
END
END 

APPEND ARAN02 

IF WEIGHT #-1 ~Global("B!Alternatives","GLOBAL",7)~ THEN BEGIN aran0 
SAY @319 
IF ~~ THEN DO ~Enemy()~ EXIT 
END 

IF WEIGHT #-1 ~Global("B!Tourist","GLOBAL",9)~ THEN BEGIN aran0 
SAY @320 
IF ~~ THEN DO ~Enemy()~ EXIT 
END 
END 

/* Malficus Rodendril */ 
APPEND ~B!MAL~ 

IF ~!GlobalGT("B!Tourist","GLOBAL",7) Global("B!RefusedThieves","LOCALS",1) Global("B!TouristThieves","GLOBAL",0)
!Global("B!TouristFirstClass","GLOBAL",1)~THEN BEGIN mal_before_third 
SAY @321 
+ ~PartyGoldGT(90000)~ + @322 DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1) TakePartyGold(90000) DestroyGold(90000) 
//IncrementChapter("")
~ + mal60 
+ ~Global("B!Tourist","GLOBAL",7) PartyGoldGT(50000)~ + @323 + mal65b 
++ @324 DO ~SetGlobal("B!RefusedThieves","LOCALS",1)~ + mal65d   
++ @325 + mal76 
++ @326 + mal13 
END 


IF ~!GlobalGT("B!Tourist","GLOBAL",7) Global("B!TouristThieves","GLOBAL",1)
Global("B!TouristFirstClass","GLOBAL",0)~ THEN BEGIN mal_return
SAY @327  
+ ~GlobalLT("B!Tourist","GLOBAL",7) PartyGoldGT(90000)~ + @328 DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1) TakePartyGold(90000) DestroyGold(90000) 
//IncrementChapter("")
~ + mal60 
+ ~Global("B!Tourist","GLOBAL",7) PartyGoldGT(50000)~ + @329  DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1) TakePartyGold(50000) DestroyGold(50000) 
//IncrementChapter("")
~ + mal60 
++ @330 + mal80 
++ @331 + mal78 
END 

IF ~NumTimesTalkedTo(0)~ THEN BEGIN mal0 
SAY @332 
++ @333 DO ~SetGlobal("B!Tourist","GLOBAL",1)~ + mal1 
++ @334 DO ~SetGlobal("B!Tourist","GLOBAL",1)~ + mal2 
++ @335 DO ~SetGlobal("B!Tourist","GLOBAL",1)~ + mal3 
++ @336 DO ~SetGlobal("B!Tourist","GLOBAL",1)~ + mal4 
++ @337 DO ~SetGlobal("B!Tourist","GLOBAL",1)~ + mal4 
END 

IF ~~ mal1
SAY @338 
IF ~~ THEN + mal5 
END 

IF ~~ mal2
SAY @339 
IF ~~ THEN + mal5 
END 

IF ~~ mal3
SAY @340 
IF ~~ THEN + mal6 
END 

IF ~~ mal4
SAY @341 
IF ~~ THEN + mal6
END 

IF ~~ mal5
SAY @342 
IF ~~ THEN + mal6 
END 

IF ~~ mal6
SAY @343 
= @344  
++ @345 + mal7 
++ @346 + mal8 
++ @347 + mal9 
++ @348 + mal8 
END 

IF ~~ mal7
SAY @349 
++ @350 + mal10 
++ @351 + mal11 
++ @352 + mal10 
++ @353 + mal12 
++ @354 + mal10 
++ @355 + mal13 
END 

IF ~~ mal8
SAY @356 
IF ~~ THEN + mal7 
END 

IF ~~ mal9
SAY @357 
++ @345 + mal7 
++ @358 + mal8 
++ @359 + mal7 
END 

IF ~~ mal10
SAY @360 
++ @361 + mal14 
++ @362 + mal15
++ @363 + mal16
++ @364 + mal17 
END 

IF ~~ mal11
SAY @365 
= @366 
++ @367 + mal17 
++ @368 + mal16 
++ @369 + mal15 
END 

IF ~~ mal12 
SAY @370 
IF ~~ THEN + mal15 
END 

IF ~~ mal13 
SAY @371 
IF ~~ THEN DO ~SetGlobal("B!RefusedAlternaMal","GLOBAL",1)
EraseJournalEntry(@143) 
EraseJournalEntry(@144) 
EraseJournalEntry(@143) 
EraseJournalEntry(@145) 
EraseJournalEntry(@146) 
EraseJournalEntry(@372) 
EraseJournalEntry(@147) 
EraseJournalEntry(@373) 
EraseJournalEntry(@374) 
EraseJournalEntry(@148) 
EraseJournalEntry(@149) 
AddJournalEntry(@375,QUEST_DONE) 
EscapeArea()~ EXIT 
END 

IF ~~ mal14 
SAY @376 
IF ~~ THEN + mal15 
END 

IF ~~ mal15
SAY @377 
+ ~OR(3) Global("WorkingForAran","GLOBAL",1) Global("WorkingForBodhi","GLOBAL",1) GlobalGT("B!Alternatives","GLOBAL",4)~ + @378 + mal13 
+ ~!Global("WorkingForAran","GLOBAL",1) !Global("WorkingForBodhi","GLOBAL",1) !GlobalGT("B!Alternatives","GLOBAL",4)~ + @379 + mal16 
+ ~!Global("WorkingForAran","GLOBAL",1) !Global("WorkingForBodhi","GLOBAL",1) !GlobalGT("B!Alternatives","GLOBAL",4)~ + @380 + mal17 
+ ~!Global("WorkingForAran","GLOBAL",1) !Global("WorkingForBodhi","GLOBAL",1) !GlobalGT("B!Alternatives","GLOBAL",4)~ + @381 + mal18 
+ ~!Global("WorkingForAran","GLOBAL",1) !Global("WorkingForBodhi","GLOBAL",1) !GlobalGT("B!Alternatives","GLOBAL",4)~ + @382 + mal18 
+ ~!Global("WorkingForAran","GLOBAL",1) !Global("WorkingForBodhi","GLOBAL",1) !GlobalGT("B!Alternatives","GLOBAL",4)~ + @383 + mal18 
END 

IF ~~ mal16
SAY @384 
IF ~~ THEN DO ~AddJournalEntry(@143,QUEST) 
    EscapeAreaMove("AR0704",580,313,0)~ EXIT    
END 

IF ~~ mal17
SAY @385 
IF ~~ THEN DO ~SetGlobal("B!RefusedAlternaMal","GLOBAL",1) EscapeArea()~ EXIT 
END 

IF ~~ mal18
SAY @386 
= @387 
++ @388 + mal16 
++ @389 + mal19 
+ ~PartyGoldGT(100000)~ + @390 DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1) TakePartyGold(100000) DestroyGold(100000)
// IncrementChapter("")
~ + mal20 
END 

IF ~~ mal19
SAY @391 
++ @392 + mal21 
++ @393 + mal22 
++ @394 + mal16 
END 

IF ~~ mal20 
SAY @395 
IF ~~ THEN DO ~AddJournalEntry(@144,QUEST) 
EscapeAreaMove("AR0300",3674,2975,7)~ EXIT
END 

IF ~~ mal21
SAY @396 
++ @397 + mal22 
++ @398 + mal23 
++ @399 + mal16 
END 

IF ~~ mal22
SAY @400 
++ @401 + mal24 
++ @402 + mal25 
++ @403 + mal26 
++ @404 + mal16 
END 

IF ~~ mal23
SAY @405 
IF ~~ THEN DO ~AddJournalEntry(@143,QUEST) 
    EscapeAreaMove("AR0704",580,313,0)~ EXIT 
END 

IF ~~ mal24
SAY @406 
++ @407 + mal27 
++ @408 DO ~SetGlobal("B!Tourist","GLOBAL",2)~ + mal28 
END 

IF ~~ mal25
SAY @409 
++ @410 + mal24 
++ @411 + mal16 
++ @412 + mal26 
END 

IF ~~ mal26
SAY @413 
++ @414 + mal25 
++ @415 + mal24 
++ @416 + mal16  
END 

IF ~~ mal27
SAY @417 
++ @418 DO ~SetGlobal("B!Tourist","GLOBAL",2)~ + mal29 
++ @419 DO ~SetGlobal("B!Tourist","GLOBAL",2)~ + mal30 
++ @420 DO ~SetGlobal("B!Tourist","GLOBAL",2)~ + mal31 
END 

IF ~~ mal28
SAY @421 
IF ~~ THEN DO ~AddJournalEntry(@145,QUEST) 
    EscapeAreaMove("AR0704",580,313,0)~ EXIT 
END 

IF ~~ mal29
SAY @422 
IF ~~ THEN + mal28 
END 

IF ~~ mal30
SAY @423 
IF ~~ THEN + mal28 
END 

IF ~~ mal31
SAY @424 
IF ~~ THEN  DO ~AddJournalEntry(@146,QUEST) 
    EscapeAreaMove("AR0704",580,313,0)~ EXIT
END 

IF ~Global("B!TouristFirstClass","GLOBAL",1)~ THEN BEGIN mal32
SAY @425   
++ @426 + mal33 
++ @113 + mal34 
END 

IF ~~ mal33
SAY @427 
IF ~~ THEN EXIT 
END 

IF ~~ mal34
SAY @428 
IF ~~ THEN DO ~AddJournalEntry(@372,QUEST) 
StartCutSceneMode()
StartCutScene("B!MALM3B")~ EXIT 
END 

IF ~Global("B!Tourist","GLOBAL",1)~ THEN BEGIN mal35
SAY @429 
+ ~!Global("WorkingForAran","GLOBAL",1) !Global("WorkingForBodhi","GLOBAL",1) !GlobalGT("B!Alternatives","GLOBAL",4)~ + @430 + mal36 
+ ~!Global("WorkingForAran","GLOBAL",1) !Global("WorkingForBodhi","GLOBAL",1) !GlobalGT("B!Alternatives","GLOBAL",4)~ + @431 + mal37 
+ ~!Global("WorkingForAran","GLOBAL",1) !Global("WorkingForBodhi","GLOBAL",1) !GlobalGT("B!Alternatives","GLOBAL",4)~ + @432 + mal38 
+ ~OR(3) Global("WorkingForAran","GLOBAL",1) Global("WorkingForBodhi","GLOBAL",1) GlobalGT("B!Alternatives","GLOBAL",4)~ + @433 + mal13 
+ ~!Global("WorkingForAran","GLOBAL",1) !Global("WorkingForBodhi","GLOBAL",1) !GlobalGT("B!Alternatives","GLOBAL",4) PartyGoldGT(100000)~ + @434 DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1)~ + mal20 
END 

IF ~~ mal36
SAY @435 
IF ~~ THEN + mal36a 
END 

IF ~~ mal36a 
SAY @436  
++ @437 + mal38 
++ @438 + mal39 
++ @439 + mal40 
++ @440 + mal40 
++ @441 + mal43
END 

IF ~~ mal37 
SAY @442 
++ @443 + mal36 
++ @444 + mal41 
+ ~PartyGoldGT(100000)~ + @445 DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1) TakePartyGold(100000) DestroyGold(100000) 
//IncrementChapter("")
~ + mal20 
++ @446 + mal42 
++ @441 + mal43
END 

IF ~~ mal38 
SAY @447 
IF ~~ THEN DO ~SetGlobal("B!Tourist","GLOBAL",2) 
AddJournalEntry(@147,QUEST)~ EXIT   
END 

IF ~~ mal39 
SAY @448 
++ @449 + mal36 
++ @450 + mal40 
++ @441 + mal43
END 

IF ~~ mal40
SAY @451 
IF ~~ THEN EXIT 
END 

IF ~~ mal41 
SAY @452 
IF ~~ THEN + mal36a 
END 

IF ~~ mal42 
SAY @453 
IF ~~ THEN EXIT 
END 

IF ~~ mal43 
SAY @454 
= @455  
++ @456 + mal36 
++ @457 + mal40 
+ ~PartyGoldGT(100000)~ + @434 DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1) TakePartyGold(100000) DestroyGold(100000) 
//IncrementChapter("")
~ + mal20 
END 

IF ~Global("B!Tourist","GLOBAL",2)~ THEN BEGIN m44
SAY @458 
+ ~PartyHasItem("b!puzlbx")~ + @459DO ~TakePartyItem("b!puzlbx")~ + mal45 
+ ~PartyHasItem("b!puzlbx")~ + @460 + mal46 
+ ~PartyHasItem("b!puzlbx") Global("B!BonkedLeyt","GLOBAL",1)~ + @461 + mal47 
+ ~PartyHasItem("b!altltr")~ + @462 DO ~TakePartyItem("b!altbox") TakePartyItem("b!altltr")~ + mal48 
+ ~PartyHasItem("b!altltr")~ + @460 + mal46 
+ ~PartyHasItem("b!altltr") Global("B!BonkedLeyt","GLOBAL",1)~ + @461 + mal47 
+ ~Global("B!ThreatenedLeyt","GLOBAL",1)~ + @463 + mal52 
+ ~Global("B!RefusedLeytDocs","GLOBAL",1)~ + @464 + mal52 
+ ~Global("B!RefusedLeytDocs","GLOBAL",1)~ + @465 + mal52 
++ @466 + mal49 
+ ~PartyGoldGT(100000)~ + @467 DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1) TakePartyGold(100000) DestroyGold(100000) 
//IncrementChapter("")
~ + mal20 
++ @326 + mal13 
END 

IF ~~ mal45 
SAY @468  
++ @469 + mal50 
++ @470 + mal50 
++ @471 + mal50 
END 

IF ~~ mal46 
SAY @472 
+ ~PartyHasItem("b!puzlbx")~ + @473DO ~TakePartyItem("b!puzlbx")~ + mal45
+ ~PartyHasItem("b!altltr")~ + @473 DO ~TakePartyItem("b!altbox") TakePartyItem("b!altltr")~ + mal48 
++ @474 + mal51 
+ ~PartyGoldGT(100000)~ + @475 DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1) TakePartyGold(100000)  DestroyGold(100000) 
//IncrementChapter("")
~ + mal20 
++ @326 + mal13 
END 

IF ~~ mal47 
SAY @476
= @477 
+ ~PartyHasItem("b!puzlbx")~ + @473DO ~TakePartyItem("b!puzlbx")~ + mal45
+ ~PartyHasItem("b!altltr")~ + @473 DO ~TakePartyItem("b!altbox") TakePartyItem("b!altltr")~ + mal48 
+ ~PartyHasItem("b!puzlbx")~ + @460 + mal46 
+ ~PartyHasItem("b!altltr")~ + @460 + mal46 
+ ~PartyGoldGT(100000)~ + @478 DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1) TakePartyGold(100000)  DestroyGold(100000) 
//IncrementChapter("")
~ + mal20 
END 

IF ~~ mal48 
SAY @479 
+ ~PartyGoldGT(90000)~ + @480 DO ~TakePartyItem("b!altbox") 
    TakePartyItem("b!altltr")
    AddXPObject(Player1,10000)
    AddXPObject(Player2,10000)
    AddXPObject(Player3,10000)
    AddXPObject(Player4,10000)
    AddXPObject(Player5,10000)
    AddXPObject(Player6,10000) 
    SetGlobal("B!TouristFirstClass","GLOBAL",1) 
    TakePartyGold(90000) 
    DestroyGold(90000) 
  //  IncrementChapter("")
~ + mal20 
++ @481 DO ~SetGlobal("B!Tourist","GLOBAL",3) 
    TakePartyItem("b!altbox") 
    TakePartyItem("b!altltr") 
    AddXPObject(Player1,10000)
    AddXPObject(Player2,10000)
    AddXPObject(Player3,10000)
    AddXPObject(Player4,10000)
    AddXPObject(Player5,10000)
    AddXPObject(Player6,10000)~ + mal53
++ @326 + mal13 
END 

IF ~~ mal49 
SAY @482 
IF ~~ THEN EXIT 
END 

IF ~~ mal50 
SAY @483 
= @484 
++ @485 DO ~TakePartyItem("b!puzlbx")
    AddXPObject(Player1,5000)
    AddXPObject(Player2,5000)
    AddXPObject(Player3,5000)
    AddXPObject(Player4,5000)
    AddXPObject(Player5,5000)
    AddXPObject(Player6,5000)~ + mal53 
+ ~PartyGoldGT(95000)~ + @486 DO ~TakePartyItem("b!puzlbx") TakePartyGold(95000) DestroyGold(95000) 
    AddXPObject(Player1,5000)
    AddXPObject(Player2,5000)
    AddXPObject(Player3,5000)
    AddXPObject(Player4,5000)
    AddXPObject(Player5,5000)
    AddXPObject(Player6,5000) 
//    IncrementChapter("")
~ + mal20 
++ @326 + mal13 
END 

IF WEIGHT #-1
~NumTimesTalkedToGT(0) OR(3) GlobalGT("WorkingForAran","GLOBAL",0) GlobalGT("WorkingForBodhi","GLOBAL",0) GlobalGT("B!Alternatives","GLOBAL",4)~ mal51 
SAY @487 
IF ~~ THEN DO ~SetGlobal("B!RefusedAlternaMal","GLOBAL",1) EscapeArea()~ EXIT 
END 

IF ~~ mal52 
SAY @488 
++ @485 + mal53 
+ ~PartyGoldGT(100000)~ + @489 DO ~TakePartyGold(100000) DestroyGold(100000)
// IncrementChapter("")
~ + mal20 
++ @326 + mal13 
END 

IF ~~ mal53 
SAY @490 
++ @491 + mal54 
+ ~Alignment(Player1,MASK_EVIL)~ + @358 + mal54 
+ ~OR(2) Alignment(Player1,MASK_GOOD) Class(Player1,PALADIN_ALL)~ + @492 + mal55 
++ @493 + mal54 
++ @494 + mal56 
END 
END 

CHAIN ~B!MAL~ mal54 
@495 
= @496 
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @497 
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @498 
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @499 
END
+ ~Class(Player1,THIEF_ALL)~ + @500 EXTERN ~B!MAL~ mal57 
++ @501 EXTERN ~B!MAL~ mal58 
+ ~!Class(Player1,PALADIN_ALL)~ + @502 EXTERN ~B!MAL~ mal57 
+ ~Class(Player1,PALADIN_ALL)~ + @503 EXTERN ~B!MAL~ mal55 

APPEND ~B!MAL~ 
IF ~~ mal55 
SAY @504 
++ @505 + mal59 
+ ~PartyGoldGT(90000)~ + @506 DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1) TakePartyGold(90000) DestroyGold(90000)
// IncrementChapter("")
~ + mal60 
++ @326 + mal13 
END 

IF ~~ mal56 
SAY @507 
IF ~~ THEN DO ~SetGlobal("B!Bloodless","GLOBAL",2)~ + mal59 
END 

IF ~~ mal57 
SAY @508 
++ @509 DO ~SetGlobal("B!TouristSecret","GLOBAL",1)~ + mal61 
++ @510 DO ~SetGlobal("B!TouristSecret","GLOBAL",1)~ + mal61 
++ @511 + mal62 
++ @512 + mal55 
END 

IF ~~ mal58 
SAY @513 
= @514 
IF ~~ THEN DO ~SetGlobal("B!Bloodless","GLOBAL",2)~ + mal59 
END 

IF ~~ mal59 
SAY @515 
++ @516 + mal63 
++ @517 + mal64 
++ @518 + mal76
++ @519 + mal65 
++ @520 + mal66 
++ @326 + mal13 
END 

IF ~~ mal60 
SAY @521 
IF ~~ THEN + mal20 
END 

IF ~~ mal61 
SAY @522 
IF ~~ THEN DO ~SetGlobal("B!Tourist","GLOBAL",4) 
AddJournalEntry(@523,QUEST)~ EXIT 
END 

IF ~~ mal62 
SAY @524 
IF ~~ THEN + mal62a 
END 

IF ~~ mal62a 
SAY @525 
++ @505 + mal59 
+ ~PartyGoldGT(90000)~ + @506 DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1) TakePartyGold(90000) DestroyGold(90000) 
//IncrementChapter("")
~ + mal60 
++ @326 + mal13 
END 

IF ~~ mal63 
SAY @526 
++ @517 + mal64 
++ @518 + mal76
++ @519 + mal65 
++ @520 + mal66 
++ @326 + mal13 
END 

IF ~~ mal64 
SAY @527 
++ @518 + mal76
++ @519 + mal65 
++ @520 + mal66 
++ @326 + mal13 
END 

IF ~~ mal65 
SAY @528 
++ @529 + mal76 
++ @530 + mal65a 
END 

IF ~~ mal65a 
SAY @531 
+ ~PartyGoldGT(90000)~ + @532 DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1) TakePartyGold(90000) DestroyGold(90000) 
//IncrementChapter("")
~ + mal60 
+ ~Global("B!Tourist","GLOBAL",7) PartyGoldGT(50000)~ + @533 + mal65b 
++ @534 DO ~SetGlobal("B!RefusedThieves","LOCALS",1)~ + mal65d  
++ @535 + mal76 
++ @326 + mal13 
END 

IF ~~ mal65b 
SAY @536 
++ @537 + mal65c 
++ @538 DO ~TakePartyGold(50000) DestroyGold(50000) 
//IncrementChapter("")
~ + mal60 
++ @539 DO ~TakePartyGold(50000) DestroyGold(50000) 
//IncrementChapter("")
~ + mal60 
++ @326 + mal13 
END 

IF ~~ mal65c 
SAY @540 
IF ~~ THEN + mal76 
END 

IF ~~ mal65d 
SAY @541 
IF ~~ THEN EXIT 
END 

IF ~~ mal66 
SAY @542 
IF ~~ THEN + mal65a 
END 

IF ~~ mal67 
SAY @543 
IF ~~ THEN + mal59 
END 

IF ~GlobalGT("B!Tourist","GLOBAL",3) GlobalLT("B!Tourist","GLOBAL",8)~ THEN mal68 
SAY @544  
+ ~Global("B!Tourist","GLOBAL",7)~ + @545 DO ~AddXPObject(Player1,30000)
    AddXPObject(Player2,30000)
    AddXPObject(Player3,30000)
    AddXPObject(Player4,30000)
    AddXPObject(Player5,30000)
    AddXPObject(Player6,30000)~ + mal69
+ ~Global("B!Tourist","GLOBAL",4)~ + @546 + mal70 
+ ~Global("B!Tourist","GLOBAL",5) !Global("B!TouristSecret","GLOBAL",2)~ + @466 + mal71 
+ ~Global("B!Tourist","GLOBAL",5) Global("B!TouristSecret","GLOBAL",2)~ + @466 + mal72 
+ ~Global("B!Tourist","GLOBAL",5) Global("B!TouristSecret","GLOBAL",2)~ + @545 + mal73 
+ ~Global("B!Tourist","GLOBAL",6) !Global("B!TouristSecret","GLOBAL",2)~ + @466 + mal71 
+ ~Global("B!Tourist","GLOBAL",6) Global("B!TouristSecret","GLOBAL",2)~ + @466 + mal72 
+ ~Global("B!Tourist","GLOBAL",6) Global("B!TouristSecret","GLOBAL",2)~ + @545 + mal73 
END 

IF ~~ mal69 
SAY @547 
++ @548 + mal67 
++ @549 + mal74 
++ @550 + mal13 
END 

IF ~~ mal70 
SAY @551 
IF ~~ THEN EXIT 
END 

IF ~~ mal71 
SAY @552 
IF ~~ THEN EXIT 
END 

IF ~~ mal72 
SAY @553 
IF ~~ THEN + mal75 
END 

IF ~~ mal73 
SAY @554 
= @555 
IF ~~ THEN + mal75 
END 

IF ~~ mal74 
SAY @556 
+ ~PartyGoldGT(50000)~ + @557  DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1) TakePartyGold(50000) DestroyGold(50000)
// IncrementChapter("")
~ + mal60 
++ @558 + mal67 
++ @559 + mal13 
END  

IF ~~ mal75 
SAY @560 
= @561 
IF ~~ THEN DO ~SetGlobal("B!RefusedAlternaMal","GLOBAL",1) EscapeArea()~ EXIT 
END 

IF ~~ mal76 
SAY @562 
++ @563 + mal77 
++ @564 + mal77
++ @565 DO ~SetGlobal("B!TouristThieves","GLOBAL",1)~ + mal78 
END 

IF ~~ mal77 
SAY @566 
= @567 
= @568 
= @569 
++ @570 DO ~SetGlobal("B!Tourist","GLOBAL",8) SetGlobal("B!TouristThieves","GLOBAL",1)~ + mal80
++ @398 DO ~SetGlobal("B!TouristThieves","GLOBAL",1)~ + mal78 
++ @571 DO ~SetGlobal("B!TouristThieves","GLOBAL",1)~ + mal79 
++ @572 DO ~SetGlobal("B!TouristThieves","GLOBAL",1)~ + mal13 
END 

IF ~~ mal78 
SAY @573 
IF ~~ THEN EXIT 
END 

IF ~~ mal79 
SAY @574 
+ ~GlobalLT("B!Tourist","GLOBAL",7) PartyGoldGT(90000)~ + @575 DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1) TakePartyGold(90000) DestroyGold(90000) 
//IncrementChapter("")
~ + mal60 
+ ~GlobalLT("B!Tourist","GLOBAL",7) !PartyGoldGT(90000)~ + @576 + mal78 
+ ~Global("B!Tourist","GLOBAL",7) PartyGoldGT(50000)~ + @577  DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1) TakePartyGold(50000) DestroyGold(50000) 
//IncrementChapter("")
~ + mal60 
+ ~Global("B!Tourist","GLOBAL",7) !PartyGoldGT(50000)~ + @578 + mal78 
++ @331 + mal78 
END 

IF ~~ mal80 
SAY @579 
IF ~~ THEN DO ~SetGlobal("B!Tourist","GLOBAL",8) SetGlobal("B!TouristThieves","GLOBAL",1) 
SetGlobal("VampShadWar","GLOBAL",6) //to prevent guild wars on the streets
//IncrementChapter("") 
EraseJournalEntry(@42) 
EraseJournalEntry(34189) 
EraseJournalEntry(34188) 
EraseJournalEntry(34187) 
EraseJournalEntry(34183) 
AddJournalEntry(@373,QUEST) 
AddJournalEntry(@580,QUEST_DONE) 
AddJournalEntry(@581,QUEST_DONE)
AddJournalEntry(@582,QUEST_DONE)
StartCutSceneMode() 
StartCutScene("b!chap3m")~ EXIT 
END 

IF ~Global("B!TouristFirstClass","GLOBAL",15)~ THEN BEGIN mal81_gold_15000
SAY @593 
IF ~~ THEN DO ~TakePartyGold(15000) 
    DestroyGold(15000)
SetGlobal("B!TouristFirstClass","GLOBAL",1)  
AddJournalEntry(@374,QUEST) 
    EscapeAreaMove("AR0300",3674,2975,7)~ EXIT
END

IF ~Global("B!TouristFirstClass","GLOBAL",50)~ THEN BEGIN mal81_gold_50000
SAY @593 
IF ~~ THEN DO ~TakePartyGold(50000) 
    DestroyGold(50000)
SetGlobal("B!TouristFirstClass","GLOBAL",1)  
AddJournalEntry(@374,QUEST) 
    EscapeAreaMove("AR0300",3674,2975,7)~ EXIT
END


IF ~OR(2) Global("B!Tourist","GLOBAL",8) Global("B!Tourist","GLOBAL",9)~ THEN BEGIN mal81 
SAY @583  
+ ~Global("B!Tourist","GLOBAL",8)~ + @584 + mal82 
+ ~Global("B!Tourist","GLOBAL",9) !Dead("Aran")~ + @585 + mal83 
+ ~Global("B!Tourist","GLOBAL",9) !Dead("Aran")~ + @586 + mal84 
+ ~Global("B!Tourist","GLOBAL",9) !Global("B!Bloodless","GLOBAL",2) Dead("Aran") PartyGoldGT(15000)~ + @587 DO ~TakePartyGold(15000) 
    DestroyGold(15000)
    AddXPObject(Player1,50000)
    AddXPObject(Player2,50000)
    AddXPObject(Player3,50000)
    AddXPObject(Player4,50000)
    AddXPObject(Player5,50000)
    AddXPObject(Player6,50000)~ + mal85 
+ ~Global("B!Tourist","GLOBAL",9) !Global("B!Bloodless","GLOBAL",2) Dead("Aran") PartyGoldGT(15000)~ + @588 DO ~TakePartyGold(15000) 
    DestroyGold(15000) 
    AddXPObject(Player1,50000)
    AddXPObject(Player2,50000)
    AddXPObject(Player3,50000)
    AddXPObject(Player4,50000)
    AddXPObject(Player5,50000)
    AddXPObject(Player6,50000)~ + mal85 
+ ~Global("B!Tourist","GLOBAL",9) Global("B!Bloodless","GLOBAL",2) Dead("Aran") PartyGoldGT(50000)~ + @587 DO ~TakePartyGold(50000) 
    DestroyGold(50000)
    AddXPObject(Player1,50000)
    AddXPObject(Player2,50000)
    AddXPObject(Player3,50000)
    AddXPObject(Player4,50000)
    AddXPObject(Player5,50000)
    AddXPObject(Player6,50000)~ + mal85 
+ ~Global("B!Tourist","GLOBAL",9) Global("B!Bloodless","GLOBAL",2) Dead("Aran") PartyGoldGT(50000)~ + @588 DO ~TakePartyGold(50000) 
    DestroyGold(50000)
    AddXPObject(Player1,50000)
    AddXPObject(Player2,50000)
    AddXPObject(Player3,50000)
    AddXPObject(Player4,50000)
    AddXPObject(Player5,50000)
    AddXPObject(Player6,50000)~ + mal85 
+ ~Global("B!Tourist","GLOBAL",9) !Global("B!Bloodless","GLOBAL",2) Dead("Aran") !PartyGoldGT(15000)~ + @587 DO ~AddXPObject(Player1,50000)
    AddXPObject(Player2,50000)
    AddXPObject(Player3,50000)
    AddXPObject(Player4,50000)
    AddXPObject(Player5,50000)
    AddXPObject(Player6,50000)~ + mal87 
+ ~Global("B!Tourist","GLOBAL",9) !Global("B!Bloodless","GLOBAL",2) Dead("Aran") !PartyGoldGT(15000)~ + @588 DO ~AddXPObject(Player1,50000)
    AddXPObject(Player2,50000)
    AddXPObject(Player3,50000)
    AddXPObject(Player4,50000)
    AddXPObject(Player5,50000)
    AddXPObject(Player6,50000)~ + mal87 
+ ~Global("B!Tourist","GLOBAL",9) Global("B!Bloodless","GLOBAL",2) Dead("Aran") !PartyGoldGT(50000)~ + @587 DO ~AddXPObject(Player1,50000)
    AddXPObject(Player2,50000)
    AddXPObject(Player3,50000)
    AddXPObject(Player4,50000)
    AddXPObject(Player5,50000)
    AddXPObject(Player6,50000)~ + mal88 
+ ~Global("B!Tourist","GLOBAL",9) Global("B!Bloodless","GLOBAL",2) Dead("Aran") !PartyGoldGT(50000)~ + @588 DO ~AddXPObject(Player1,50000)
    AddXPObject(Player2,50000)
    AddXPObject(Player3,50000)
    AddXPObject(Player4,50000)
    AddXPObject(Player5,50000)
    AddXPObject(Player6,50000)~ + mal88 
++ @589 + mal86 
END 

IF ~~ mal82 
SAY @590 
IF ~~ THEN EXIT 
END 

IF ~~ mal83 
SAY @591 
IF ~~ THEN EXIT 
END 

IF ~~ mal84 
SAY @592 
IF ~~ THEN EXIT 
END 

IF ~~ mal85 
SAY @593 
IF ~~ THEN DO ~SetGlobal("B!TouristFirstClass","GLOBAL",1)  
AddJournalEntry(@374,QUEST) 
    EscapeAreaMove("AR0300",3674,2975,7)~ EXIT
END 

IF ~~ mal86 
SAY @594 
IF ~~ THEN EXIT 
END 

IF ~~ mal87 
SAY @595 
IF ~~ THEN DO ~SetGlobal("B!TouristFirstClass","GLOBAL",15)~ EXIT 
END 

IF ~~ mal88 
SAY @596 
IF ~~ THEN DO ~SetGlobal("B!TouristFirstClass","GLOBAL",50)~ EXIT 
END 
END 

/* Leyt - puzzle box person */ 

APPEND ~B!LEYT~ 

IF ~Global("B!Tourist","GLOBAL",2) !Global("B!BonkedLeyt","GLOBAL",1)~ THEN BEGIN l0 
SAY @597  
+ ~OR(2) CheckStatGT(Player1,13,CHR) CheckStatGT(Player2,13,STR)~ + @598 + l2
+ ~!CheckStatGT(Player1,13,CHR) !CheckStatGT(Player2,13,STR)~ + @598 + l3
++ @599 + l1 
++ @600 + l5
++ @601 + l4 
END 

IF ~~ l1
SAY @602 
++ @603 + l5 
++ @604 + l10 
++ @605 + l4 
END 

IF ~~ l2
SAY @606 
++ @607 + l6 
++ @608 + l7 
++ @609 + l8 
END 

IF ~~ l3
SAY @610 
++ @600 + l5 
++ @611 + l1 
++ @612 + l9 
END 

IF ~~ l4
SAY @613 
IF ~~ THEN DO ~SetGlobal("B!ThreatenedLeyt","GLOBAL",1) 
AddJournalEntry(@148,QUEST) 
EscapeArea()~ EXIT 
END 

IF ~~ l5
SAY @614 
+ ~PartyGoldGT(49)~ + @615 DO ~TakePartyGold(50)~ + l11 
+ ~PartyGoldGT(9)~ + @616 DO ~TakePartyGold(10)~ + l12 
++ @617 + l13 
END 

IF ~~ l6
SAY @618 
++ @619 + l7 
++ @355 + l14 
END 

IF ~~ l7
SAY @620 
IF ~~ THEN DO ~SetGlobal("B!BonkedLeyt","GLOBAL",1)
StartCutSceneMode()
StartCutScene("B!DOLEYT")~ EXIT
END 

IF ~Global("B!BonkedLeyt","GLOBAL",1)~ l8
SAY @621 
= @622 
++ @600 + l11 
++ @623 + l15 
END 

IF ~~ l9
SAY @624 
++ @135 + l5 
++ @2 + l16 
++ @625 + l4 
END 

IF ~~ l10
SAY @626 
++ @627 + l5 
++ @628 + l16 
++ @629 + l4 
END 

IF ~~ l11
SAY @630 
IF ~~ THEN DO ~GiveItem("b!puzlbx",Player1)
AddJournalEntry(@149,QUEST)~ + l17 
END 

IF ~~ l12
SAY @631 
IF ~~ THEN + l11 
END 

IF ~~ l13
SAY @632 
IF ~~ THEN DO ~GiveItem("b!puzlbx",Player1) 
AddJournalEntry(@149,QUEST)~ + l17 
END 

IF ~~ l14
SAY @633 
++ @634 + l5 
++ @635 + l16 
END 

IF ~~ l15
SAY @636 
++ @637 + l5 
++ @355 + l16 
END 

IF ~~ l16
SAY @638 
IF ~~ THEN DO ~SetGlobal("B!RefusedLeytDocs","GLOBAL",1)~ + l17 
END 

IF ~~ l17
SAY @639 
IF ~~ THEN DO ~EscapeArea()~ EXIT 
END 
END 

/* Puzzle box */ 

APPEND ~B!PUZLBX~ 

IF ~True()~ THEN BEGIN p0 
SAY @640 
++ @641 + p1 
++ @642 EXIT 
END 

IF ~~ open 
SAY @643 
IF ~~ THEN DO ~GiveItemCreate("b!altltr",Player1,0,0,0) TakeItemReplace("b!altbox","b!puzlbx",Player1)~ EXIT 
END 

/* Gem puzzle: quartz stones are amethyst, rose quartz, rock crystal, and citrine */ 

IF ~~ p1 
SAY @644 
++ @645 + pw1 
++ @646 + pr1 
++ @647 + pw1 
++ @648 + pw1 
++ @649 EXIT 
END 

IF ~~ pw1 
SAY @650 
IF ~~ THEN + p1 
END 

IF ~~ pr1
SAY @651 
IF ~~ THEN + p2 
END 

/* Number puzzle: Correct number sequence is 6, 11, 21, 41, 81 */

IF ~~ p2 
SAY @652
++ @653 + pw2
++ @654 + pw2 
++ @655 + pr2 
++ @656 + pw2 
++ @649 EXIT
END 

IF ~~ pw2 
SAY @650 
IF ~~ THEN + p2 
END 

IF ~~ pr2
SAY @651 
IF ~~ THEN + p3 
END 

/* Geometric puzzle: polygons are square, triangle, octogon, and pentangle */  

IF ~~ p3 
SAY @657 
++ @658 + pw3 
++ @659 + pw3 
++ @660 + pw3 
++ @661 + pw3 
++ @662 + pr3 
++ @649 EXIT 
END 

IF ~~ pw3 
SAY @650 
IF ~~ THEN + p3 
END 

IF ~~ pr3
SAY @651 
IF ~~ THEN + p4 
END 

/* FR gods puzzle: Bane, Auril, Shar, and Mask are all evil deities */

IF ~~ p4 
SAY @663 
IF ~!Class(Player1,CLERIC_ALL) !Class(Player1,PALADIN_ALL) !CheckStatGT(Player1,11,INT) !CheckStatGT(Player1,11,WIS)~ THEN + p4.2 
IF ~OR(4) Class(Player1,CLERIC_ALL) Class(Player1,PALADIN_ALL) CheckStatGT(Player1,11,INT) CheckStatGT(Player1,11,WIS)~ THEN + p4.1 
END 

IF ~~ p4.1 
SAY @664 
++ @665 + pw4.1 
++ @666 + pw4.1 
++ @667 + pr4 
++ @668 + pw4.1 
++ @669 EXIT 
END 

IF ~~ p4.2
SAY @670 
++ @671 + pw4.2 
++ @672 + pw4.2 
++ @673 + pr4 
++ @674 + pw4.2 
++ @669 EXIT 
END 

IF ~~ pw4.1  
SAY @650 
IF ~~ THEN + p4.1 
END 

IF ~~ pw4.2  
SAY @650 
IF ~~ THEN + p4.2 
END 

IF ~~ pr4
SAY @651 
IF ~~ THEN + open  
END 
END

/* Assistant Harbormaster Ballas */ 

APPEND ~B!BALLAS~ 

IF ~!InMyArea(Player1)~ THEN BEGIN ahb0 
SAY @675  
IF ~~ THEN EXIT 
END 

IF ~InMyArea(Player1)~ THEN BEGIN ahb1 
SAY @676 
++ @677 + ahb3 
++ @678 + ahb2 
+ ~Global("B!Tourist","GLOBAL",4)~ + @679 DO ~SetGlobal("B!Tourist","GLOBAL",5)~ + ahb4 
+ ~Dead("B!NADOR2")~ + @680 + ahb20 
+ ~Global("B!TouristSecret","GLOBAL",2)~ + @681 + ahb21 
END 

IF ~~ ahb2 
SAY @682 
IF ~~ THEN EXIT 
END 

IF ~~ ahb3 
SAY @683 
++ @684 + ahb3a 
++ @685 + ahb3b 
++ @686 + ahb3a 
++ @687 + ahb3a 
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @688 + ahb3c 
++ @689 + ahb3d
END 

IF ~~ ahb3a 
SAY @690 
IF ~~ THEN EXIT 
END 

IF ~~ ahb3b 
SAY @691 
IF ~~ THEN EXIT 
END 

IF ~~ ahb3c 
SAY @692 
IF ~~ THEN EXIT 
END 

IF ~~ ahb3d 
SAY @693 
IF ~~ THEN EXIT 
END 

IF ~~ ahb4 
SAY @694 
++ @695 + ahb5 
++ @696 + ahb6 
++ @697 + ahb5 
++ @698 + ahb7 
END 

IF ~~ ahb5 
SAY @699 
++ @700 + ahb6
++ @701 + ahb8 
++ @702 + ahb9 
END 

IF ~~ ahb6 
SAY @703 
++ @704 + ahb10 
++ @705 + ahb11 
++ @706 + ahb11 
++ @707 + ahb12 
++ @708 + ahb12 
++ @709 + ahb13 
END 

IF ~~ ahb7 
SAY @710 
IF ~~ THEN + ahb6 
END 

IF ~~ ahb8 
SAY @711 
IF ~~ THEN DO ~EscapeArea()~ EXIT 
END 

IF ~~ ahb9 
SAY @712 
IF ~~ THEN DO ~EscapeArea()~ EXIT 
END 

IF ~~ ahb10 
SAY @713 
= @714
++ @707 + ahb12 
++ @708 + ahb12 
++ @715 + ahb18 
++ @709 + ahb13 
END 

IF ~~ ahb11 
SAY @716 
++ @707 + ahb12 
++ @708 + ahb12 
++ @715 + ahb18 
++ @709 + ahb13 
END 

IF ~~ ahb12 
SAY @717 
= @718 
= @719 
++ @720 + ahb14 
++ @721 + ahb15 
++ @722 + ahb16 
++ @715 + ahb18 
++ @723 + ahb13 
END 

IF ~~ ahb13 
SAY @724
= @725 
++ @726 EXIT 
++ @197 EXIT 
++ @727 EXIT 
END 

IF ~~ ahb14 
SAY @728 
IF ~~ THEN + ahb17 
END 

IF ~~ ahb15 
SAY @729 
IF ~~ THEN + ahb17 
END 

IF ~~ ahb16 
SAY @730 
= @731 
IF ~~ THEN DO ~SetGlobal("B!Tourist","GLOBAL",6) 
AddJournalEntry(@151,QUEST)~ EXIT 
END 

IF ~~ ahb17 
SAY @732 
++ @135 + ahb16 
++ @2 + ahb13 
END 

IF ~~ ahb18 
SAY @733 
++ @734 + ahb19 
++ @735 + ahb13 
END 

IF ~~ ahb19 
SAY @736 
++ @737 DO ~SetGlobal("B!Bloodless","GLOBAL",1)~ + ahb19a  
++ @738 + ahb13 
END 

IF ~~ ahb19a 
SAY @739 
IF ~~ THEN DO ~AddJournalEntry(@150,QUEST)~ EXIT 
END 

IF ~~ ahb20 
SAY @740
= @741 
IF ~~ THEN EXIT 
END 

IF ~~ ahb21 
SAY @742 
= @743 
IF ~~ THEN EXIT 
END 
END 

/* Vhellon - purveyor of goods that might not be welcome in certain society */ 
APPEND ~B!VHELON~ 

IF ~True()~ THEN BEGIN vhe0 
SAY @744  
++ @745 + vhe1 
+ ~Global("B!Tourist","GLOBAL",6)~ + @746 + vhe2 
++ @747 + vhe3 
++ @748 + vhe4 
END 

IF ~~ vhe1 
SAY @749 
++ @750 + vhe3 
+ ~Global("B!Tourist","GLOBAL",6)~ + @751 + vhe2 
++ @752 + vhe5 
END 

IF ~~ vhe2 
SAY @753 
+ ~CheckStatGT(Player1,14,CHR) PartyGoldGT(19)~ + @754 DO ~TakePartyGold(20)~ + vhe6 
+ ~!CheckStatGT(Player1,14,CHR)~ + @754 + vhe7 
+ ~PartyGoldGT(49)~ + @755 DO ~TakePartyGold(50)~ + vhe6 
++ @756 + vhe8 
END 

IF ~~ vhe3 
SAY @757 
++ @758 DO ~StartStore("b!altsto",LastTalkedToBy())~ EXIT 
++ @759 EXIT 
END 

IF ~~ vhe4 
SAY @760 
IF ~~ THEN EXIT 
END 

IF ~~ vhe5 
SAY @761 
++ @762 + vhe3 
++ @763 EXIT 
++ @689 EXIT 
END 

IF ~~ vhe6 
SAY @764 
IF ~~ THEN DO ~GiveItem("b!poison",Player1)~ EXIT 
END 

IF ~~ vhe7 
SAY @765 
+ ~PartyGoldGT(49)~ + @766 DO ~TakePartyGold(50)~ + vhe6 
++ @767 + vhe8 
END 

IF ~~ vhe8 
SAY @768 
IF ~~ THEN EXIT 
END 
END 

/* Wael - assassin for hire */ 
APPEND ~B!WAEL~ 

IF ~True()~ THEN BEGIN wae0 
SAY @769  
++ @770 + wae1 
++ @771 + wae1 
++ @772 + wae2 
END 

IF ~~ wae1 
SAY @773 
++ @774 + wae3 
++ @775 + wae2 
END 

IF ~~ wae2 
SAY @776 
IF ~~ THEN EXIT 
END 

IF ~~ wae3 
SAY @777 
+ ~PartyGoldGT(99)~ + @778 DO ~TakePartyGold(100)~ + wae5 
++ @779 + wae4 
END 

IF ~~ wae4 
SAY @780 
IF ~~ THEN EXIT 
END 

IF ~~ wae5 
SAY @521 
IF ~~ THEN DO ~ClearAllActions() 
  StartCutSceneMode() 
  StartCutScene("b!wael1")~ EXIT 
END 
END 

/* Harbormaster Nador */ 
APPEND ~B!NADOR~ 

IF ~!Global("B!TouristSecret","GLOBAL",2)~ THEN BEGIN n0 
SAY @781  
++ @745 + n1 
++ @677 + n1 
+ ~GlobalGT("B!Tourist","GLOBAL",4)~ + @782 + n2 
++ @783 + n3 
END 

IF ~~ n1 
SAY @784 
++ @785 + n4 
++ @786 + n5 
+ ~GlobalGT("B!Tourist","GLOBAL",4)~ + @782 + n2 
++ @787 + n3 
++ @788 + n6 
END 

IF ~~ n2 
SAY @789 
= @790 
IF ~~ THEN DO ~EscapeArea()~ EXIT 
END 

IF ~~ n3 
SAY @791 
IF ~~ THEN EXIT 
END 

IF ~~ n4 
SAY @792 
IF ~~ THEN EXIT 
END 

IF ~~ n5 
SAY @793 
IF ~~ THEN EXIT 
END 

IF ~~ n6 
SAY @794 
IF ~~ THEN EXIT 
END 

IF ~Global("B!TouristSecret","GLOBAL",2)~ THEN BEGIN n7 
SAY @795 
++ @796 + n8 
++ @797 + n9 
++ @798 + n10 
++ @799 + n11
END 

IF ~~ n8 
SAY @800 
IF ~~ THEN DO ~GiveItem("MISC42",Player1)~ EXIT 
END 

IF ~~ n9 
SAY @801 
IF ~~ THEN + n8 
END 

IF ~~ n10 
SAY @802 
IF ~~ THEN EXIT 
END 

IF ~~ n11 
SAY @803 
IF ~~ THEN + n8 
END 
END 

APPEND ~B!NADOR2~ 

IF ~RandomNum(4,1)~ THEN BEGIN n7 
SAY @804 
IF ~~ THEN EXIT 
END 

IF ~RandomNum(4,2)~ THEN BEGIN n8 
SAY @805 
IF ~~ THEN EXIT 
END 

IF ~RandomNum(4,3)~ THEN BEGIN n9 
SAY @806 
IF ~~ THEN EXIT 
END 

IF ~RandomNum(4,4)~ THEN BEGIN n10 
SAY @807 
IF ~~ THEN EXIT 
END 
END 

/* Vulova Estate */ 

APPEND ~B!VULBTR~ 

IF ~True()~ THEN BEGIN but1 
SAY @676 
+ ~PartyHasItem("b!poison")~ + @808 + but2 
+ ~!PartyHasItem("b!poison")~ + @808 + but3 
++ @809 + but4 
END 

IF ~~ but2 
SAY @810 
IF ~~ THEN EXIT 
END 

IF ~~ but3 
SAY @811
= @812 
IF ~~ THEN EXIT 
END 

IF ~~ but4 
SAY @813 
IF ~~ THEN EXIT 
END 
END 

APPEND ~B!VULCOK~ 

IF ~True()~ THEN BEGIN cook1
SAY @814  
+ ~PartyHasItem("b!poison")~ + @815 + cook2 
+ ~!PartyHasItem("b!poison")~ + @815 + cook3 
++ @816 + cook4 
END 

IF ~~ cook2 
SAY @817 
IF ~~ THEN DO ~ClearAllActions() 
    StartCutSceneMode() 
    StartCutScene("b!vul1")~ EXIT 
END 

IF ~~ cook3 
SAY @818 
IF ~~ THEN EXIT 
END 

IF ~~ cook4 
SAY @819 
IF ~~ THEN EXIT
END 
END 
 
CHAIN 
IF ~Gender(Player1,FEMALE) 
    CheckStatGT(Player1,12,CHR) 
    Global("B!PC","AR1007",0) 
    RandomNum(2,1) 
    !StateCheck(Player1,CD_STATE_NOTVALID)~ 
THEN ~B!VULOVA~ vul0 
@820 
DO ~SetGlobal("B!PC","AR1007",1)~ 
EXIT 

CHAIN 
IF ~Global("B!Aerie","AR1007",0) 
    InParty("Aerie")
    InMyArea("Aerie") 
    !StateCheck("Aerie",CD_STATE_NOTVALID) 
    RandomNum(2,1)~ 
THEN ~B!VULOVA~ vul1 
@821 
DO ~SetGlobal("B!Aerie","AR1007",1)~ 
== AERIEJ @822 
== ~B!VULOVA~ @823 
== AERIEJ @824 
EXIT 

CHAIN 
IF ~Global("B!Nalia","AR1007",0) 
    InParty("Nalia")
    InMyArea("Nalia") 
    !StateCheck("Nalia",CD_STATE_NOTVALID) 
    RandomNum(2,1)~ 
THEN ~B!VULOVA~ vul1 
@825 
DO ~SetGlobal("B!Nalia","AR1007",1)~ 
= @826 
== NALIA @827 
EXIT 

APPEND ~B!VULOVA~ 

IF ~RandomNum(4,1)~ THEN BEGIN vul2 
SAY @828 
IF ~~ THEN EXIT 
END 

IF ~RandomNum(4,2)~ THEN BEGIN vul3 
SAY @829 
IF ~~ THEN EXIT 
END 

IF ~RandomNum(4,3)~ THEN BEGIN vul4 
SAY @830 
IF ~~ THEN EXIT 
END 

IF ~RandomNum(4,4)~ THEN BEGIN vul5 
SAY @831 
IF ~~ THEN EXIT 
END 
END 

/* Guest dialogues */ 

CHAIN 
IF ~Global("B!Valygar","AR1007",0) 
    InParty("Valygar")
    InMyArea("Valygar") 
    !StateCheck("Valygar",CD_STATE_NOTVALID) 
    RandomNum(2,1)~ 
THEN ~B!VULG_1~ vg0 
#15008 /* ~Why, hello there. My, that's quite the rugged friend you have, there. I could always use a new, um... gardener, mmmm?~ */
DO ~SetGlobal("B!Valygar","AR1007",1)~ 
== VALYGARJ #15014 /* ~Errr... ahem! I am, uh... sorry my Lady. Gardening is... not my specialty.~ */ 
== ~B!VULG_1~ #15017 /* ~Oh, somehow I'm sure that's not the case.~ */ 
EXIT 

CHAIN 
IF ~Global("B!Mazzy","AR1007",0) 
    InParty("Mazzy")
    InMyArea("Mazzy") 
    !StateCheck("Mazzy",CD_STATE_NOTVALID) 
    RandomNum(2,1)~ 
THEN ~B!VULG_1~ vg1 
#15039 /* ~Oh, how cute!  You've given one of the little people a weapon to play with!  If my children were here to see this, they would be SO delighted!~ */
DO ~SetGlobal("B!Mazzy","AR1007",1)~ 
== MAZZYJ #15040 /* ~(grrr)  I am a virtuous follower of Arvoreen. He will reward me for my patience. (sigh)~ */ 
EXIT 

CHAIN 
IF ~Global("B!Anomen","AR1007",0) 
    InParty("Anomen")
    InMyArea("Anomen") 
    !StateCheck("Anomen",CD_STATE_NOTVALID) 
    RandomNum(2,1)~ 
THEN ~B!VULG_1~ vg2 
@832  
DO ~SetGlobal("B!Anomen","AR1007",1)~ 
== ANOMENJ @833 
== ~B!VULG_1~ @834 
== ANOMENJ @835 
EXIT 

APPEND ~B!VULG_1~ 
IF ~RandomNum(4,1)~ THEN BEGIN vg3 
SAY #15024 /* ~I don't know why the garrison doesn't simply ride into the slums and clean the place out.  That's obviously where all this crime has been coming from.~ */
IF ~~ THEN EXIT
END 

IF ~RandomNum(4,2)~ THEN BEGIN vg4 
SAY #15036 /* ~My husband had a shipment of ore coming from Nashkel and it actually got robbed, of all things.  By Helm, something should be done!~ */ 
IF ~~ THEN EXIT 
END 

IF ~RandomNum(4,3)~ THEN BEGIN vg5 
SAY #15047 /* ~The weather has been so awful, lately.  My hair is so limp and my maids can do nothing with it!~ */ 
IF ~~ THEN EXIT 
END 

IF ~RandomNum(4,4)~ THEN BEGIN vg6 
SAY @836 
IF ~~ THEN EXIT 
END 
END 

APPEND ~B!VULG_2~ 

IF ~RandomNum(4,1)~ THEN BEGIN vg7 
SAY @837 
IF ~~ THEN EXIT 
END 

IF ~RandomNum(4,2)~ THEN BEGIN vg8 
SAY @838 
IF ~~ THEN EXIT 
END 

IF ~RandomNum(4,3)~ THEN BEGIN vg9 
SAY @839 
IF ~~ THEN EXIT 
END 

IF ~RandomNum(4,4)~ THEN BEGIN vg10 
SAY @840 
IF ~~ THEN EXIT 
END 
END 

/* Chief Inspector Brega - revealing the plot against Harbormaster Nador */ 
EXTEND_BOTTOM HABREGA 0 
+ ~Global("B!TouristSecret","GLOBAL",1)~ + @841 + bre1 
END

APPEND HABREGA 

IF ~~ bre1
SAY @842 
++ @843 + bre2 
++ @844 + bre3 
++ @845 + bre4 
END 

IF ~~ bre2 
SAY @846 
IF ~~ THEN DO ~SetGlobal("B!TouristSecret","GLOBAL",2) AddexperienceParty(10000)~ EXIT 
END 

IF ~~ bre3 
SAY @847 
++ @848 + bre2 
++ @849 + bre4 
++ @850 + bre5  
++ @851 + bre6 
++ @852 + bre2 
END 

IF ~~ bre4 
SAY @853 
+ ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ + @854 EXTERN KELDORJ bre7 
+ ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ + @855 EXTERN ANOMENJ bre8 
+ ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ + @856 EXTERN AERIEJ bre9 
+ ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ + @857 EXTERN HAERDAJ bre10 
+ ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ + @858 EXTERN JAHEIRAJ bre11 
+ ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ + @859 EXTERN YOSHJ bre12 
+ ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ + @860 EXTERN EDWINJ bre13 
+ ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ + @861 EXTERN CERNDJ bre14 
+ ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ + @862 EXTERN NALIAJ bre15 
+ ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ + @863 + bre16 
+ ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ + @864 EXTERN JANJ bre17 
+ ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ + @865 EXTERN MINSCJ bre18 
+ ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ + @866 + bre19 
+ ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ + @867 EXTERN MAZZYJ bre20 
+ ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ + @868 EXTERN VALYGARJ bre21 
++ @869 + bre2 
++ @870 + bre6 
++ @852 + bre2 
END 

IF ~~ bre5 
SAY @871 
= @872 
++ @849 + bre4 
++ @851 + bre6 
++ @852 + bre2 
END 

IF ~~ bre6 
SAY @873 
IF ~~ THEN + bre22 
END 
END 

APPEND KELDORJ 

IF ~~ bre7 
SAY @874 
IF ~~ THEN EXTERN HABREGA bre23 
END 
END 

APPEND ANOMENJ 

IF ~~ bre8 
SAY @875 
IF ~~ THEN EXTERN HABREGA bre25 
END 
END 

APPEND AERIEJ 

IF ~~ THEN bre9 
SAY @876 
IF ~~ THEN EXTERN HABREGA bre27 
END 
END 

APPEND HAERDAJ 

IF ~~ bre10 
SAY @877 
IF ~~ THEN EXTERN HABREGA bre27 
END 
END 

APPEND JAHEIRAJ 

IF ~~ bre11 
SAY @878 
IF ~~ THEN EXTERN HABREGA bre27 
END 
END 

APPEND YOSHJ 

IF ~~ bre12 
SAY @879 
IF ~~ THEN EXTERN HABREGA bre27 
END 
END 

APPEND EDWINJ 

IF ~~ bre13 
SAY @880 
IF ~~ THEN EXTERN HABREGA bre28 
END 
END 

APPEND CERNDJ 

IF ~~ bre14 
SAY @881 
IF ~~ THEN EXTERN HABREGA bre27 
END 
END 

APPEND NALIAJ 

IF ~~ bre15 
SAY @882 
IF ~~ THEN EXTERN HABREGA bre29 
END 
END 

APPEND HABREGA

IF ~~ bre16 
SAY @883 
IF ~~ THEN + bre4 
END 
END 
 
APPEND JANJ 

IF ~~ bre17 
SAY @884 
IF ~~ THEN EXTERN HABREGA bre27 
END 
END 

APPEND MINSCJ 

IF ~~ bre18 
SAY @885
IF ~~ THEN EXTERN HABREGA bre27 
END 
END 

APPEND HABREGA 

IF ~~ bre19 
SAY @886 
IF ~~ THEN + bre4 
END 
END 
 
APPEND MAZZYJ 

IF ~~ bre20 
SAY @887 
IF ~~ THEN EXTERN HABREGA bre30 
END 
END 

APPEND VALYGARJ 

IF ~~ bre21 
SAY @888 
IF ~~ THEN EXTERN HABREGA bre31 
END 
END 

APPEND HABREGA 

IF ~~ bre22 
SAY @889 
IF ~~ THEN DO ~SetGlobal("B!TouristSecret","GLOBAL",2) AddexperienceParty(15000)~ EXIT 
END 

IF ~~ bre23 
SAY @890 
IF ~~ THEN + bre24 
END 

IF ~~ bre24 
SAY @891 
IF ~~ THEN + bre22 
END 

IF ~~ bre25 
SAY @892
IF ~~ THEN + bre26 
END 

IF ~~ bre26 
SAY @893 
IF ~~ THEN + bre22 
END 

IF ~~ bre27 
SAY @894 
IF ~~ THEN + bre4 
END 

IF ~~ bre28 
SAY @895 
IF ~~ THEN + bre4 
END 

IF ~~ bre29 
SAY @896 
IF ~~ THEN + bre26 
END 

IF ~~ bre30 
SAY @897 
IF ~~ THEN + bre26 
END 

IF ~~ bre31 
SAY @898 
= @899 
IF ~~ THEN + bre4 
END 
END 

/* Malficus, Saemon, and Sime */ 

CHAIN
IF ~GlobalLT("B!Tourist","GLOBAL",10)~ THEN ~B!MAL2~ M0.0
@900
DO ~SetGlobal("B!Tourist","GLOBAL",10)~
== PPSAEM @280
== ~B!MAL2~ @901
== PPSAEM @282
== ~B!MAL2~ @902
== PPSAEM @284
= @285
END
IF ~~ THEN REPLY #43905 /* ~I am all ears, captain. Yours is the voice of experience and I will listen.~ */ EXTERN PPSAEM m0.2
IF ~~ THEN REPLY #43906 /* ~Speak if you must but keep it brief! We should sat sail as soon as possible!~ */ EXTERN ~B!MAL2~ m0.1
IF ~~ THEN REPLY @286 EXTERN ~B!MAL2~ m0.1


CHAIN ~B!MAL2~ m0.1 
@903 
EXTERN ~PPSAEM~ m0.2 

CHAIN PPSAEM m0.2
@288
== ~B!MAL2~ @289
== PPSAEM #43913 /* ~Protection? I was not aware of any such plans. The captain should be consulted on all such matters.~ */
== ~B!MAL2~ @290 
== ~B!MAL2~ #43915 /* ~This is Sime, and she will be staying very close to you, Saemon Havarian. For your safety, of course.~ */
== PPSAEM #43916 /* ~Of course.~ */
== PPSIME #43917 /* ~I shall make certain that, should we be surprised at sea, death will not come from a surprise source. Do I make myself clear?~ */
== PPSAEM @904 
== ~B!MAL2~ @905 
== PPSAEM @291 
= #43921 /* ~Hold fast, the journey begins.~ */
DO ~StartCutSceneMode()
StartCutScene("B!MAL41d")~ 
EXIT

APPEND PPSAEM 

IF ~Global("B!Tourist","GLOBAL",10)
Global("AsylumPlot","GLOBAL",1)~ THEN BEGIN sh0
  SAY #43922 /* ~We have arrived, and in good time, I might add. Congratulatory remarks for all the crew, and to our visitors for their delightful company.~ [PPSAEM02] */
  IF ~Global("C#IM_ImoenStays","GLOBAL",0)
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Yoshimo")
!IsValidForPartyDialog("Korgan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)
EraseJournalEntry(@42)
EraseJournalEntry(@143)
EraseJournalEntry(@144)
EraseJournalEntry(@145)
EraseJournalEntry(@146)
EraseJournalEntry(@372)
EraseJournalEntry(@147)
EraseJournalEntry(@373)
EraseJournalEntry(@374)
EraseJournalEntry(@148)
EraseJournalEntry(@149)
EraseJournalEntry(@150)
EraseJournalEntry(@151)
EraseJournalEntry(@153)~ 
JOURNAL @906 FLAGS 128 EXTERN ~PPSIME~ 1
  IF ~Global("C#IM_ImoenStays","GLOBAL",0)
IsValidForPartyDialog("Nalia")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)
  EraseJournalEntry(@42)
  EraseJournalEntry(@143)
EraseJournalEntry(@144)
EraseJournalEntry(@145)
EraseJournalEntry(@146)
EraseJournalEntry(@372)
EraseJournalEntry(@147)
EraseJournalEntry(@373)
EraseJournalEntry(@374)
EraseJournalEntry(@148)
EraseJournalEntry(@149)
EraseJournalEntry(@150)
EraseJournalEntry(@151)
EraseJournalEntry(@153)~ JOURNAL @906 FLAGS 128 EXTERN ~NALIAJ~ 272
  IF ~Global("C#IM_ImoenStays","GLOBAL",0)
!IsValidForPartyDialog("Nalia")
IsValidForPartyDialog("Jan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)
EraseJournalEntry(@42)
EraseJournalEntry(@143)
EraseJournalEntry(@144)
EraseJournalEntry(@145)
EraseJournalEntry(@146)
EraseJournalEntry(@372)
EraseJournalEntry(@147)
EraseJournalEntry(@373)
EraseJournalEntry(@374)
EraseJournalEntry(@148)
EraseJournalEntry(@149)
EraseJournalEntry(@150)
EraseJournalEntry(@151)
EraseJournalEntry(@153)~ JOURNAL @906 FLAGS 128 EXTERN ~JANJ~ 150
  IF ~Global("C#IM_ImoenStays","GLOBAL",0)
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Jan")
IsValidForPartyDialog("Yoshimo")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)
EraseJournalEntry(@42)
EraseJournalEntry(@143)
EraseJournalEntry(@144)
EraseJournalEntry(@145)
EraseJournalEntry(@146)
EraseJournalEntry(@372)
EraseJournalEntry(@147)
EraseJournalEntry(@373)
EraseJournalEntry(@374)
EraseJournalEntry(@148)
EraseJournalEntry(@149)
EraseJournalEntry(@150)
EraseJournalEntry(@151)
EraseJournalEntry(@153)~ JOURNAL @906 FLAGS 128 EXTERN ~YOSHJ~ 92
  IF ~Global("C#IM_ImoenStays","GLOBAL",0)
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Yoshimo")
IsValidForPartyDialog("Korgan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)
EraseJournalEntry(@42)
EraseJournalEntry(@143)
EraseJournalEntry(@144)
EraseJournalEntry(@145)
EraseJournalEntry(@146)
EraseJournalEntry(@372)
EraseJournalEntry(@147)
EraseJournalEntry(@373)
EraseJournalEntry(@374)
EraseJournalEntry(@148)
EraseJournalEntry(@149)
EraseJournalEntry(@150)
EraseJournalEntry(@151)
EraseJournalEntry(@153)~ JOURNAL @906 FLAGS 128 EXTERN ~KORGANJ~ 117
  IF ~!Global("C#IM_ImoenStays","GLOBAL",0)
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Yoshimo")
!IsValidForPartyDialog("Korgan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)
EraseJournalEntry(@42)
EraseJournalEntry(@143)
EraseJournalEntry(@144)
EraseJournalEntry(@145)
EraseJournalEntry(@146)
EraseJournalEntry(@372)
EraseJournalEntry(@147)
EraseJournalEntry(@373)
EraseJournalEntry(@374)
EraseJournalEntry(@148)
EraseJournalEntry(@149)
EraseJournalEntry(@150)
EraseJournalEntry(@151)
EraseJournalEntry(@153)~ JOURNAL @927 FLAGS 128 EXTERN ~PPSIME~ 1
  IF ~!Global("C#IM_ImoenStays","GLOBAL",0)
IsValidForPartyDialog("Nalia")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)
  EraseJournalEntry(@42)
  EraseJournalEntry(@143)
EraseJournalEntry(@144)
EraseJournalEntry(@145)
EraseJournalEntry(@146)
EraseJournalEntry(@372)
EraseJournalEntry(@147)
EraseJournalEntry(@373)
EraseJournalEntry(@374)
EraseJournalEntry(@148)
EraseJournalEntry(@149)
EraseJournalEntry(@150)
EraseJournalEntry(@151)
EraseJournalEntry(@153)~ JOURNAL @927 FLAGS 128 EXTERN ~NALIAJ~ 272
  IF ~!Global("C#IM_ImoenStays","GLOBAL",0)
!IsValidForPartyDialog("Nalia")
IsValidForPartyDialog("Jan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)
EraseJournalEntry(@42)
EraseJournalEntry(@143)
EraseJournalEntry(@144)
EraseJournalEntry(@145)
EraseJournalEntry(@146)
EraseJournalEntry(@372)
EraseJournalEntry(@147)
EraseJournalEntry(@373)
EraseJournalEntry(@374)
EraseJournalEntry(@148)
EraseJournalEntry(@149)
EraseJournalEntry(@150)
EraseJournalEntry(@151)
EraseJournalEntry(@153)~ JOURNAL @927 FLAGS 128 EXTERN ~JANJ~ 150
  IF ~!Global("C#IM_ImoenStays","GLOBAL",0)
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Jan")
IsValidForPartyDialog("Yoshimo")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)
EraseJournalEntry(@42)
EraseJournalEntry(@143)
EraseJournalEntry(@144)
EraseJournalEntry(@145)
EraseJournalEntry(@146)
EraseJournalEntry(@372)
EraseJournalEntry(@147)
EraseJournalEntry(@373)
EraseJournalEntry(@374)
EraseJournalEntry(@148)
EraseJournalEntry(@149)
EraseJournalEntry(@150)
EraseJournalEntry(@151)
EraseJournalEntry(@153)~ JOURNAL @927 FLAGS 128 EXTERN ~YOSHJ~ 92
  IF ~!Global("C#IM_ImoenStays","GLOBAL",0)
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Jan")
!IsValidForPartyDialog("Yoshimo")
IsValidForPartyDialog("Korgan")~ THEN DO ~SetGlobal("AsylumPlot","GLOBAL",2)
EraseJournalEntry(@42)
EraseJournalEntry(@143)
EraseJournalEntry(@144)
EraseJournalEntry(@145)
EraseJournalEntry(@146)
EraseJournalEntry(@372)
EraseJournalEntry(@147)
EraseJournalEntry(@373)
EraseJournalEntry(@374)
EraseJournalEntry(@148)
EraseJournalEntry(@149)
EraseJournalEntry(@150)
EraseJournalEntry(@151)
EraseJournalEntry(@153)~ JOURNAL @927 FLAGS 128 EXTERN ~KORGANJ~ 117
END
END 

INTERJECT PPSIME 2 b_TouristConfess 
== PPSIME IF ~Global("B!Tourist","GLOBAL",10)~ THEN @907 
= @908 
END 
++ @909 + ptc1 
++ @910 + ptc1 
++ @911 + ptc1 

APPEND PPSIME 

IF ~~ ptc1 
SAY @912 
= @913 
COPY_TRANS PPSIME 2 
END 
END 

ADD_TRANS_TRIGGER PPSIME 11 
~!Global("B!Tourist","GLOBAL",10)~ DO 3 

EXTEND_BOTTOM PPSIME 11 
IF ~Global("B!Tourist","GLOBAL",10) PartyHasItem("misc8v")~ THEN REPLY #43952 /* ~I have a ward token that will unlock the gates.~ */ GOTO sim0
END 

APPEND PPSIME 

IF ~~ sim0
SAY @293
  IF ~~ THEN DO ~EscapeArea()~ UNSOLVED_JOURNAL @914 EXIT
END 
END 
/* Vampire Ambush setup */ 
APPEND PPSAEM

IF ~Global("AsylumPlot","GLOBAL",2) OR(2) 
      Global("B!Tourist","GLOBAL",10) 
      Global("B!Alternatives","GLOBAL",10)~ THEN BEGIN vamp_ambush
  SAY #43934 /* ~I fear I cannot allow you to leave my presence just yet. While I must admit to a certain fondness for you all, I have little choice in what I must do.~ [PPSAEM14] */
  IF ~~ THEN REPLY #43935 /* ~I do not like the tone of your voice. What do you intend?~ */ DO ~SetAreaRestFlag(1)~ GOTO 58
  IF ~~ THEN REPLY #43936 /* ~Save your words! I did not trust you from the start! I am ready for your treachery!~ */ DO ~SetAreaRestFlag(1)~ GOTO 58
  IF ~~ THEN REPLY #43937 /* ~What? Why such an obvious ambush? You have my gold already.~ */ DO ~SetAreaRestFlag(1)~ GOTO 58
END
END 
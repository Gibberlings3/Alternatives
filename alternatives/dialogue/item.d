
/* First Maevars Quest: talk to Weathermistress Ada to get fake item without stealing */

EXTEND_BOTTOM TALMISS 0 
+ ~Global("MaeVarWork","GLOBAL",3) !PartyHasItem("MISC4Y") Global("C#Ajantis_HasThiefItem","GLOBAL",0)~ + @749 + ajantis_talmiss_01
END

APPEND TALMISS
IF ~~ THEN ajantis_talmiss_01
SAY @750
= @751
++ @752 + ajantis_talmiss_02
++ @753 + ajantis_talmiss_02
++ @754 + ajantis_talmiss_03
END

IF ~~ THEN ajantis_talmiss_02
SAY @756
IF ~~ DO ~GiveItemCreate("C#AJ4Y",Player1,1,0,0) SetGlobal("C#Ajantis_HasThiefItem","GLOBAL",1)~ + 1
END

IF ~~ THEN ajantis_talmiss_03
SAY @755
IF ~~ THEN + ajantis_talmiss_02
END

END //APPEND

/* First Maevars Quest: talk to Dawnmaster of Lathander to get fake item without stealing */

EXTEND_BOTTOM DAWNMAS 0 
+ ~Global("MaeVarWork","GLOBAL",1) !PartyHasItem("MISC4X") Global("C#Ajantis_HasThiefItem","GLOBAL",0)~ + @757 + ajantis_dawnmaster_01
END

APPEND DAWNMAS 
IF ~~ THEN ajantis_dawnmaster_01
SAY @758
= @759
++ @760 + ajantis_dawnmaster_02
++ @761 + ajantis_dawnmaster_02
END

IF ~~ THEN ajantis_dawnmaster_02
SAY @762
= @763 
IF ~~ DO ~GiveItemCreate("C#AJ4X",Player1,1,0,0) SetGlobal("C#Ajantis_HasThiefItem","GLOBAL",1)~ + 1
END

END //APPEND

/* Maevar recognises the fake items as real ones */

APPEND MAEVAR

IF WEIGHT #-1
~PartyHasItem("C#AJ4X") Global("MaeVarWork","GLOBAL",1)~ THEN new_maevarstate_01
SAY @764
IF ~~ THEN DO ~TakePartyItem("C#AJ4X")
DestroyItem("C#AJ4X")~ + 20
END

IF WEIGHT #-1
~PartyHasItem("C#AJ4Y") Global("MaeVarWork","GLOBAL",3)~ THEN new_maevarstate_02
SAY @764
IF ~~ THEN DO ~TakePartyItem("C#AJ4Y")
DestroyItem("C#AJ4Y")~ + 21
END

END //APPEND
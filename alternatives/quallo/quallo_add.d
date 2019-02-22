EXTEND_BOTTOM SEWERM1 12
+ ~!PartyHasItem("MISC5Q")
!PartyHasItem("C#ALTBLO")
Global("C#Alternatives_OtherBlood","GLOBAL",0)~ + @0 + blood_alternative
IF ~PartyHasItem("C#ALTBLO")~ THEN REPLY #9876 /* ~What of this blood of a true friend that the riddle speaks of?~ */ DO ~DisplayString(Myself,9893)~ EXIT
END

EXTEND_BOTTOM SEWERM1 14
+ ~!PartyHasItem("MISC5Q")
!PartyHasItem("C#ALTBLO")
Global("C#Alternatives_OtherBlood","GLOBAL",0)~ + @0 + blood_alternative
IF ~PartyHasItem("C#ALTBLO")~ THEN REPLY #9876 /* ~What of this blood of a true friend that the riddle speaks of?~ */ DO ~DisplayString(Myself,9893)~ EXIT
END

EXTEND_BOTTOM SEWERM1 16
+ ~!PartyHasItem("MISC5Q")
!PartyHasItem("C#ALTBLO")
Global("C#Alternatives_OtherBlood","GLOBAL",0)~ + @0 + blood_alternative
IF ~PartyHasItem("C#ALTBLO")~ THEN REPLY #9876 /* ~What of this blood of a true friend that the riddle speaks of?~ */ DO ~DisplayString(Myself,9893)~ EXIT
END

EXTEND_BOTTOM SEWERM1 17
+ ~!PartyHasItem("MISC5Q")
!PartyHasItem("C#ALTBLO")
Global("C#Alternatives_OtherBlood","GLOBAL",0)~ + @0 + blood_alternative
IF ~PartyHasItem("C#ALTBLO")
~ THEN REPLY #9876 /* ~What of this blood of a true friend that the riddle speaks of?~ */ DO ~DisplayString(Myself,9893)~ EXIT
END

EXTEND_BOTTOM SEWERM1 18
+ ~!PartyHasItem("MISC5Q")
!PartyHasItem("C#ALTBLO")
Global("C#Alternatives_OtherBlood","GLOBAL",0)~ + @0 + blood_alternative
IF ~PartyHasItem("C#ALTBLO")
~ THEN REPLY #9876 /* ~What of this blood of a true friend that the riddle speaks of?~ */ DO ~DisplayString(Myself,9893)~ EXIT
END

APPEND SEWERM1 
IF ~~ THEN blood_alternative
SAY @1
++ @2 + blood_alternative_01
++ @3 EXIT
END

IF ~~ THEN blood_alternative_01
SAY @4
++ @5 + blood_alternative_02
++ @3 EXIT
END

IF ~~ THEN blood_alternative_02
SAY @6
= @7
++ @8 DO ~SetGlobal("C#Alternatives_OtherBlood","GLOBAL",1) 
ApplyDamage("quallo",3,CRUSHING)
GiveItemCreate("C#ALTBLO",[PC],1,0,0)~ EXIT
++ @3 EXIT
END

END

/* if installed after visiting the area */
ADD_TRANS_ACTION SEWERM1 BEGIN 19 END BEGIN END ~ActionOverride("SEWCC",EscapeArea())~
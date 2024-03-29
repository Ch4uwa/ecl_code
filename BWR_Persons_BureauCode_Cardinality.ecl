﻿// EXPORT BWR_Persons_BureauCode_Cardinality := 'todo';
IMPORT $;
T := TABLE($.File_Persons.File_P,
          {$.File_Persons.File_P.BureauCode});
dt := DISTRIBUTE(t,HASH32(BureauCode));
sdt := SORT(dt,BureauCode,LOCAL);
dsdt := DEDUP(sdt,BureauCode,LOCAL);

COUNT(dsdt);
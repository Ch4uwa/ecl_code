IMPORT $,Std;

Layout_Persons_UID := RECORD
  UNSIGNED4 UID := 0;
  $.File_Persons.File_P;
END;

PersonsTbl := TABLE($.File_Persons.File_P,Layout_Persons_UID);

Layout_Persons_UID IDRecs(Layout_Persons_UID L,
                          Layout_Persons_UID R) := TRANSFORM
  SELF.UID := IF(L.UID=0,std.system.thorlib.node()+1,L.UID+CLUSTERSIZE);
  SELF := R;
END;

EXPORT UID_PersonsAlt := ITERATE(PersonsTbl,IDRecs(LEFT,RIGHT),LOCAL)
                        : PERSIST('~CLASS::MK::PERSIST::UID_PersonsAlt');
IMPORT $;
r := RECORD
  $.File_Persons.File_P.Gender;
  INTEGER cnt := COUNT(GROUP);
END;

EXPORT XTAB_Persons_Gender :=
//  TABLE(recordset, format, group by)
    TABLE($.File_Persons.File_P,r,Gender);
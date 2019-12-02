IMPORT $;
// "Vertical Slice" TABLE
Layout_Name_State := RECORD
  $.File_Persons.File_P.LastName;
  $.File_Persons.File_P.FirstName;
  $.File_Persons.File_P.State;

  END;
Per_Name_State := TABLE($.File_Persons.File_P,Layout_Name_State);
OUTPUT(Per_Name_State)
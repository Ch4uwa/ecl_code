// "Vertical Slice" TABLE
Layout_Name_State := RECORD
  Person.per_last_name;
  Person.per_first_name;
  Person.per_st;
  END;
Per_Name_State := TABLE(Person,Layout_Name_State);
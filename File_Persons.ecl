EXPORT File_Persons := MODULE
  EXPORT Layout := RECORD
    integer4  RecID;
    string15  FirstName;
    string25  LastName;
    string15  MiddleName;
    string2   NameSuffix;
    string8   FileDate;
    unsigned2 BureauCode;
    string1   MaritalStatus;
    string1   Gender;
    unsigned1 DependentCount;
    string8   BirthDate;
    string42  StreetAddress;
    string20  City;
    string2   State;
    string5   ZipCode;
  END;
 EXPORT File_P := DATASET('~ONLINE::MK::Intro::Persons',Layout,THOR);
END;
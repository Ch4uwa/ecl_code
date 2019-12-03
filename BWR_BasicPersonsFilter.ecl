IMPORT $; // IMPORT all

COUNT($.File_Persons.File_P(State = 'FL'));
COUNT($.File_Persons.File_P(State = 'FL', City = 'MIAMI'));
COUNT($.File_Persons.File_P(ZipCode = '33102'));
COUNT($.File_Persons.File_P(FirstName[1] = 'B'));
COUNT($.File_Persons.File_P(FileDate[1..4] > '2000'));

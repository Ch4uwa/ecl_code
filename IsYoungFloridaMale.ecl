IMPORT $;

IsFloridian := $.File_Persons.File_P.State = 'FL';
IsMale := $.File_Persons.File_P.Gender = 'M';
IsBorn80 := $.File_Persons.File_P.Birthdate <> '' AND 
                $.File_Persons.File_P.Birthdate[..4] >= '1980';

EXPORT IsYoungFloridaMale := IsFloridian AND
                             IsMale AND
                             IsBorn80;

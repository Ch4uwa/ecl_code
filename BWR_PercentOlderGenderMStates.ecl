IMPORT $;

// We want a ratio of men in "M" states born before 1980
// to men in ALL states born before 1980 
// (express in prevćentage to two decimal places)

OlderPersons := $.File_Persons.File_P.Birthdate[1..4] < '1980';

c1 := COUNT($.MeninMStatesPersons(OlderPersons));
c2 := COUNT($.File_Persons.File_P(Gender = 'M',OlderPersons));

PercOlderMalesinMStates := (DECIMAL5_2)(c1/c2 * 100);

// Females:

c3 := COUNT($.FemaleinMStatesPersons(OlderPersons));
c4 := COUNT($.File_Persons.File_P(Gender = 'F',OlderPersons));

PercOlderFemalesinMStates := (DECIMAL5_2)(c3/c4 * 100);

OUTPUT(PercOlderMalesinMStates,NAMED('Men_Percentage'));
OUTPUT(PercOlderFemalesinMStates,NAMED('Female_Percentage'));
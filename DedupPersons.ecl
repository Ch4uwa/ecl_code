IMPORT File_P FROM Learning.File_Persons AS Persons;

SortAccounts := SORT(Persons,LastName,FirstName,RecId);
EXPORT DedupPersons := DEDUP(SortAccounts,
                        LEFT.Lastname = RIGHT.LastName AND
                        LEFT.Firstname = RIGHT.FirstName)
    :PERSIST('~CLASS::MK::TEMP::DedupPersons');
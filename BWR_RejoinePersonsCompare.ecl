IMPORT $;

// DATASETS of renormed tables
RJPersons := DATASET('~ONLINE::MK::OUT::Persons_Rejoined',
                     $.File_Persons.Layout,THOR);

// SORT the APPENDed records, and then DEDUP.
AppendRecs      := $.File_Persons.File_P + RJPersons;
SortRecs        := SORT(AppendRecs,RECORD);
DedupPersons    := DEDUP(SortRecs,RECORD);

// Count of rejoined records
OUTPUT(COUNT(RJPersons),NAMED('Input_Recs_Persons'));

// Thhis result should be zero
OUTPUT(COUNT(DedupPersons)-COUNT(RJPersons),NAMED('Dup_Persons'));
IMPORT STD;
SrcIP    := '192.168.56.101';
SrcPath  := '//192.168.56.101/var/lib/HPCCSystems/mydropzone/OnlineLessonPersons';
Initials := 'MK';
// ******** Spray ECL/THOR Class File ********
// SprayFixed(sourceIP, sourcePath, recordSize, destinationGroup, destinationLogicalName,
// timeOut, espServerIpPort, maxConnections, allowOverwrite, replicate, compress, failIfNoSourceFile,
// expireDays, dfuServerQueue, noSplit)
STD.File.SprayFixed(SrcIP,SrcPath,151,'mythor', '~ONLINE::' +
                Initials + '::Intro::Persons',,,,TRUE,);
//CMFFLFEC  JOB
/* CREATE FLAT FILE FROM VSAM FILE
/* FIX LRECL TO MATCH RECORD LAYOUT
/*
//DELFL EXEC PGM=IEFBR14
//NEWDS DD DSN=KC03FEC.A1.CICS.CMFFEC.FLAT,
//             DISP=(MOD,DELETE,DELETE),
//             SPACE=(TRK,(2,1))
/*
//CRFL  EXEC PGM=IDCAMS
//INDD  DD DSN=KC03FEC.A1.CICS.CMFFEC,DISP=SHR
//OUTDD DD DSN=KC03FEC.A1.CICS.CMFFEC.FLAT,
// DISP=(NEW,CATLG,DELETE),
// SPACE=(CYL,(2,2)),LRECL=118,RECFM=FB
//SYSPRINT DD SYSOUT=*
//SYSIN DD *
  REPRO INFILE(INDD) OUTFILE(OUTDD)
/*
//CMFINFEC         JOB
/* COMPILE/LKED VSAM INIT
//COBOL            EXEC PROC=IGYWCL,REGION=50M,
//    PARM.COBOL='TEST,RENT,APOST,OBJECT,NODYNAM,LIB,SIZE(2097152)'
//COBOL.STEPLIB DD DSN=IGY420.SIGYCOMP,
//    DISP=SHR
/* DECLARE DATASET THAT CONTAINS SOURCE CODE
//COBOL.SYSIN DD DSN=KC03FEC.A1.COBOL(CMFINFEC),DISP=SHR
/*
/* DECLARE PDS MEMBER TO STORE LOAD MODULE
//LKED.SYSLMOD DD DSN=KC03FEC.COBOL.LOADLIB(CMFINFEC),
//    DISP=OLD
/*
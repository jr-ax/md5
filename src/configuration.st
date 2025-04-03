CONFIGURATION PLC_1
    TASK Main(Interval := T#100ms, Priority := 1);
    PROGRAM P1 WITH Main : md5TestProg;
    
    VAR_GLOBAL
        inStr : STRING := 'hallo';
        outStr : STRING;
    END_VAR
END_CONFIGURATION

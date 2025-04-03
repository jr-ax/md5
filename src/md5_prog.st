USING md5;

PROGRAM md5TestProg
    VAR
        md5 : MD5_Hasher;
        in1 : STRING;
        out1 : STRING;
    END_VAR
    VAR_EXTERNAL
        inStr : STRING;
        outStr : STRING;
    END_VAR
    
    md5.Hash(InpString := inStr, HashOutp => outStr);
    in1 := inStr;
    out1 := outStr;

END_PROGRAM
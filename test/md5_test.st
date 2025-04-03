USING System.Strings;

NAMESPACE hash

    {TestFixture}
    CLASS MyTestFixture
        VAR PUBLIC
            md5 : md5;
            res : STRING;
            exp : STRING := '598d4c200461b81522a3328565c25f7c';
            exp1 : STRING := 'b10a8db164e0754105b7a99be72e3fe5';
        END_VAR
        {Test}
        METHOD PUBLIC MyTestMethod
            md5.Hash('hallo', res);
            AxUnit.myAssert.cmpStrings(actual := res, expected := exp);
        END_METHOD
        {Test}
        METHOD PUBLIC MyTestMethod1
            md5.Hash('Hello World', res);
            AxUnit.myAssert.cmpStrings(actual := res, expected := exp1);
        END_METHOD
    END_CLASS

    
END_NAMESPACE
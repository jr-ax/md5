USING AxUnit.ResultFunctions;

NAMESPACE AxUnit.myAssert
    FUNCTION PUBLIC cmpStrings
        VAR_IN_OUT
            actual : STRING;
            expected : STRING;
        END_VAR

        VAR_INPUT
            {CallerFilePath}
            file : WSTRING[1024];
            {CallerLineNumber}
            line : INT;
        END_VAR

        IF actual = expected THEN
            axunit_Succeed();
        ELSE
            axunit_Fail('Strings are not equal', file, line);
        END_IF;

    END_FUNCTION
END_NAMESPACE
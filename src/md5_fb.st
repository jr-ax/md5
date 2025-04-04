NAMESPACE hash
    FUNCTION_BLOCK md5_fb
        VAR_INPUT
            InputString : STRING; // The original input string to be hashed
        END_VAR
        VAR_OUTPUT
            HashOutput : STRING; // The final MD5 hash output as a hexadecimal string
        END_VAR
        VAR
            hasher : md5;
        END_VAR
        
        hasher.Hash(InputString := InputString, HashOutput => HashOutput);
    END_FUNCTION_BLOCK
END_NAMESPACE
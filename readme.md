# MD5 Hashing Implementation in PLC

## Overview
This project implements the MD5 hashing algorithm in a PLC-compatible structured text language. The implementation follows the standard MD5 algorithm, processing input strings into 128-bit hash values.

## Features
- Implements the complete MD5 algorithm
- Supports hashing of arbitrary-length input strings
- Produces a 128-bit hash output in hexadecimal format
- Designed for use in PLC environments with limited string operations

## Methods
### `Hash(InputString: STRING) : STRING`
Hashes the input string using the MD5 algorithm and returns the computed hash as a hexadecimal string.

### `PadInputString(inpString: STRING)`
Pads the input string to fit into 512-bit blocks as required by MD5.

### `LoadBlock(StartIndex: INT)`
Loads a 512-bit block of the padded input string into the message array.

### `ProcessBlock()`
Processes a single 512-bit block using the MD5 transformation algorithm.

### `ConvertToHex(Value: DWORD) : STRING`
Converts a DWORD value into an 8-character hexadecimal string representation.

### MD5 Auxiliary Functions
- `F(X, Y, Z) : DWORD`
- `G(X, Y, Z) : DWORD`
- `H(X, Y, Z) : DWORD`
- `I(X, Y, Z) : DWORD`
These functions implement the fundamental bitwise operations required for MD5.

## Usage
1. Call `Hash(InputString)` with the string to be hashed.
2. The function returns a 32-character hexadecimal MD5 hash.

## Optimizations
- Removed redundant type conversions.
- Improved bit manipulation operations for efficiency.
- Optimized string operations by minimizing unnecessary function calls.
- Replaced nested `IF` conditions with `CASE` where applicable.

## Limitations
- Only supports standard string operations available in PLC environments.
- No built-in error handling for extremely large inputs.

## License
This implementation is open-source and available for modification as required for specific PLC applications.


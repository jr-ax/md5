# MD5 Hashing Implementation in PLC

## Overview
This project implements the MD5 hashing algorithm in a PLC-compatible structured text language. The implementation follows the standard MD5 algorithm, processing input strings into 128-bit hash values.

## Features
- Implements the complete MD5 algorithm
- Supports hashing of arbitrary-length input strings
- Produces a 128-bit hash output in hexadecimal format
- Designed for use in PLC environments with limited string operations

## Usage
1. Call `Hash(InputString)` with the string to be hashed.
2. The function returns a 32-character hexadecimal MD5 hash.

## Limitations
- Only supports standard string operations available in PLC environments.
- No built-in error handling for extremely large inputs.

## ⚠️ PLC Compatibility Disclaimer

When working with strings or passwords that contain special characters such as **`$`**, **`\`** or Unicode characters (e.g., **`é`**, **`ü`**, **non-Latin scripts**, or **emoji**), be aware that PLCs may not handle these characters correctly due to parsing or string handling limitations. In particular:

 - `$$` (double dollar signs) may be misinterpreted or cause parsing issues.
 - `\\` (double backslashes) can be collapsed, rejected, or mishandled if not escaped properly.
 - Unicode characters like `é` may result in inconsistent MD5 hashes due to incorrect or unsupported encoding (e.g., using Latin-1 instead of UTF-8).

**Recommended Workarounds:**

 - Avoid using these characters where possible.
 - Sanitize input strings before passing them into PLC logic.
 - Use UTF-8 encoding consistently when generating MD5 hashes outside the PLC.
 - If needed, consider encoding special characters (e.g., replace `$` with `%24` or use ASCII-based functions like `CharsToString([36])` for `$`).

Always test your string handling on your specific PLC setup to ensure correct behavior.

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

## License
This implementation is open-source and available for modification as required for specific PLC applications.


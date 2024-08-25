# Caesar Cipher

This is a simple Ruby implementation of the Caesar Cipher, a type of substitution cipher where each letter in the plaintext is shifted a certain number of places down or up the alphabet. This implementation can handle both uppercase and lowercase letters while preserving the case of the input text. Non-alphabetic characters remain unchanged.

## How It Works

The `caesar_cipher` function takes two parameters:

1. **`string`**: The string you want to encode.
2. **`shift_count`**: The number of positions each letter in the string should be shifted. If not provided, it defaults to `0`, meaning the string will remain unchanged.

The function handles both lowercase and uppercase letters by using their respective ASCII values and applies the shift accordingly. Characters that are not letters (e.g., spaces, punctuation) are not affected by the cipher.

### Example Output

```bash
$ ruby caesar_cipher.rb
Bmfy f xywnsl!
```

In this example, the string `"What a string!"` is shifted by `5` positions, resulting in the output `"Bmfy f xywnsl!"`.

### Examples

- **Shift of `1`**: `"abc"` becomes `"bcd"`
- **Shift of `-1`**: `"abc"` becomes `"zab"`
- **No Shift (`0`)**: `"abc"` remains `"abc"`

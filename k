    chr NUMBER
    chr     Returns the character represented by that NUMBER in the
            character set. For example, "chr(65)" is "A" in either ASCII or
            Unicode, and chr(0x263a) is a Unicode smiley face.

            Negative values give the Unicode replacement character
            (chr(0xfffd)), except under the bytes pragma, where the low
            eight bits of the value (truncated to an integer) are used.

            If NUMBER is omitted, uses $_.

            For the reverse, use "ord".

            Note that characters from 128 to 255 (inclusive) are by default
            internally not encoded as UTF-8 for backward compatibility
            reasons.

            See perlunicode for more about Unicode.


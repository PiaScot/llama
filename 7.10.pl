#!/usr/bin/env perl -w

# while(<<>>) {
#     print if (/fred/)
# }

# while(<<>>) {
#     print if (/(f|F)red/)
# }

# while(<<>>) {
#     print if (/\./)
# }

# while(<<>>) {
#     print if (/\A[A-Z][a-z]+/);
# }

# while(<<>>) {
#     print if (/(.)\g{1}/);
# }


while(<<>>) {
    print if (/(\S)\1/);
}

# while(<<>>) {
#     if (/wilma/) {
#         if (/fred/) {
#             print;
#         }
#     }
# }

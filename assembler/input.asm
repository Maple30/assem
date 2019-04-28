HO       START   2000              TEST PROGRAM FOR SIC SOFTWARE
FIRST    LDA     AA
         ADD     BB
         ADD     ONE
         STA     CC
         LDA     CC
         SUB     DD
         SUB     TWO
         STA     EE
         LDA     EE
         MUL     AA
         MUL     THREE
         STA     FF
         LDA     EE
         DIV     AA
         DIV     FOUR
         STA     GG
         LDA     GG
         MUL     THREE
         STA     HH
         LDA     ZERO
         STA     II
         LDA     FF
         COMP    HH
         JEQ     EDD
         JLT     EDD
         LDA     GG
         DIV     SIX
         STA     II
AA       WORD    2
BB       WORD    7
DD       WORD    3
ZERO     WORD    0
ONE      WORD    1
TWO      WORD    2
THREE    WORD    3
FOUR     WORD    4
SIX      WORD    6
FF       RESW    1
GG       RESW    1
HH       RESW    1
CC       RESW    1
EE       RESW    1
II       RESW    1
EDD      END     FIRST
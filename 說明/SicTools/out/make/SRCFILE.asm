HO       START   2000
FIRST    LDA     AA
         ADD     BB
         ADD     #1
         STA     CC
         LDA     CC
         SUB     DD
         SUB     #2
         STA     EE
         LDA     EE
         MUL     AA
         MUL     #3
         STA     FF
         LDA     AA
         FLOAT
         STF	 FVLU
         LDA     EE
         FLOAT
         DIVF    FVLU
         DIVF	 #4
         STF     GG
         LDF     GG
         MULF    #3
         STF     HH
         LDF     #0
         STF     II
         LDA     FF
         FLOAT
         COMPF   HH
         JEQ     EDD
         JLT     EDD
         LDF     GG
         DIVF    #6
         STF     II
AA       WORD    2
BB       WORD    7
DD       WORD    3
FF       RESW    1
GG       RESF    1
HH       RESF    1
CC       RESW    1
EE       RESW    1
II       RESF    1
FVLU     RESF    1
EDD      END     FIRST
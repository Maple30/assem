Cloop    START   1000
FIRST    LDA	 NUM1
         STA	 SUM
         STA     NUMFLOW
         AND     ONE
         COMP    ONE
         JEQ     ODD
         COMP    ZERO
         JEQ     EVEN
ODD      LDA     NUMFLOW
         ADD	 THREE
         STA     NUMFLOW
         COMP    NUM2
         JGT	 RE
         ADD     SUM
         STA     SUM
         J	 ODD
EVEN     LDA     NUMFLOW
         ADD	 TWO
         STA     NUMFLOW
         COMP    NUM2
         JGT	 RE
         ADD     SUM
         STA     SUM
         J	 EVEN
ONE      WORD    1
TWO      WORD    2
THREE    WORD    3
ZERO     WORD    0
NUM1     WORD    15
NUM2     WORD    36
SUM      RESW    5
NUMFLOW  RESW    5
RE       END     FIRST
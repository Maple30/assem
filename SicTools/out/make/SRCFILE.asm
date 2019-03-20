Test     START   1000
FIRST    LDA	 NUM1
         STA	 SUM
         STA     NUMFLOW
         AND     #1
         COMP    #1
         JEQ     ODD
         COMP    #0
         JEQ     EVEN
         USE     CDATA
ODD      LDA     NUMFLOW
         ADD	 #3
         STA     NUMFLOW
         COMP    NUM2
         JGT	 RE
         ADD     SUM
         STA     SUM
         J	 ODD
EVEN     LDA     NUMFLOW
         ADD	 #2
         STA     NUMFLOW
         COMP    NUM2
         JGT	 RE
         ADD     SUM
         STA     SUM
         J	 EVEN
NUM1     WORD    15
NUM2     WORD    36
SUM      RESW    5
NUMFLOW  RESW    5
RE       END     FIRST
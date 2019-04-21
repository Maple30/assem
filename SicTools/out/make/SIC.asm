Sta      START   0000
First    LDX	 #3
         LDA     #15
         STA     arr,X
         LDX	 #6
         LDA     #30
         STA     arr,X
         LDX	 #9
         LDA     #34
         STA     arr,X
         LDX	 #12
         LDA     #51
         STA     arr,X
         LDX	 #15
         LDA     #60
         STA     arr,X
         LDX	 #18
         LDA     #21
         STA     arr,X
         LDX	 #21
         LDA     #199
         STA     arr,X
         LDX	 #24
         LDA     #99
         STA     arr,X
         LDX	 #27
         LDA     #63
         STA     arr,X
         LDX	 #30
         LDA     #63
         STA     arr,X
. 第一組
         LDX     #3
         LDA     arr,X
         STA     M
         STA     MM
         LDX     #6
         LDA     arr,X
         STA     N
         STA     NN
         JSUB    FUNLCM
         LDX     #3
         STA     AnsArr,X
         LDX     #6
         LDA     GCD
         STA     AnsArr,X
. 第二組
         LDX     #9
         LDA     arr,X
         STA     M
         STA     MM
         LDX     #12
         LDA     arr,X
         STA     N
         STA     NN
         JSUB    FUNLCM
         LDX     #9
         STA     AnsArr,X
         LDX     #12
         LDA     GCD
         STA     AnsArr,X
. 第三組
         LDX     #15
         LDA     arr,X
         STA     M
         STA     MM
         LDX     #18
         LDA     arr,X
         STA     N
         STA     NN
         JSUB    FUNLCM
         LDX     #15
         STA     AnsArr,X
         LDX     #18
         LDA     GCD
         STA     AnsArr,X
. 第四組
         LDX     #21
         LDA     arr,X
         STA     M
         STA     MM
         LDX     #24
         LDA     arr,X
         STA     N
         STA     NN
         JSUB    FUNLCM
         LDX     #21
         STA     AnsArr,X
         LDX     #24
         LDA     GCD
         STA     AnsArr,X
. 第五組
         LDX     #27
         LDA     arr,X
         STA     M
         STA     MM
         LDX     #30
         LDA     arr,X
         STA     N
         STA     NN
         JSUB    FUNLCM
         STA     LCM5
         LDX     #27
         STA     AnsArr,X
         LDX     #30
         LDA     GCD
         STA     AnsArr,X
.
FUNLCM   STL     Location
         JSUB    FUNGCD
         LDL     Location
ZZZ      LDA     MM
         MUL     NN
         DIV     GCD
         RSUB
FUNGCD   COMP    M
         JGT     GT
         JLT     LT
         JEQ     EQ
GT       LDA     N                                                      .N比較大的情況
         DIV     M
         STA     QU
         MUL     M
         COMP    N
         JEQ     NbigFISH
         STA     SMALL
         LDA     N
         SUB     SMALL
         STA     LEAVE
         LDA     M
         STA     N
         LDA     LEAVE
         STA     M
         J       GT
LT       LDA     M                                                      .N比較小的情況
         DIV     N
         STA     QU
         MUL     N
         COMP    M
         JEQ     MbigFISH
         STA     SMALL
         LDA     M
         SUB     SMALL
         STA     LEAVE
         LDA     N
         STA     M
         LDA     LEAVE
         STA     N
         J       LT
EQ       STA     GCD
         J       ZZZ
NbigFISH LDA     M
         STA     GCD
         RSUB
MbigFISH LDA     N
         STA     GCD
         RSUB
.
.
.
AnsArr   RESW    100
LEAVE    RESW    1
SMALL    RESW    1
GCD      RESW    1
LCM      RESW    1
GCD1     RESW    1
LCM1     RESW    1
GCD2     RESW    1
LCM2     RESW    1
GCD3     RESW    1
LCM3     RESW    1
GCD4     RESW    1
LCM4     RESW    1
GCD5     RESW    1
LCM5     RESW    1
QU       RESW    1
M        RESW    1
MM       RESW    1
N        RESW    1
NN       RESW    1
R        RESW    1
arr      RESW    100
Location RESW    1
EDD      END     First
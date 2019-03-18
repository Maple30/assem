LILI     START   0120
FIRST    LDX     #32
         +LDX    #1024
         +LDA    #KKBOX
         ADDR    T, A
QQ       +JSUB   IECS
KKBOX    LDX     #QQ
IECS     STA     @QQ
RE       END     FIRST
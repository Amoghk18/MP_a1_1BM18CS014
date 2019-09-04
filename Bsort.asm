.model small
.data
 ARR DW 70H,60H,02H,10H
.code
 MOV AX,@DATA
 MOV DS,AX
 MOV DX,04
 DEC DX
OUTER:MOV CX,DX
      MOV SI,OFFSET ARR
AGAIN:MOV AX,[SI]
      CMP AX,[SI+2]
      JBE L1
      XCHG AX,[SI+2]
      XCHG AX,[SI]
L1:INC SI
   INC SI
   DEC CX
   JNZ AGAIN
   DEC DX
   JNZ OUTER
  MOV AH,4CH
  INT 21H
  END

INCLUDE Irvine32.inc

.data
MAX = 10									;max char to read
input			BYTE	MAX+1	DUP	(?)		;room for null
format1			BYTE	"Even 0",0			;format when result is even 0
format2			BYTE	"ODD 0",0			;format when result is odd 0
.code                 
main PROC
	mov		edx,	OFFSET	input			;edx point to the input buffer
	mov		ecx,	MAX						;buffer size - 1
	CALL	ReadString						;read input
	mov		ecx,	eax						;loop count = size of input string
	mov		esi,	0						;init index
L1:
	mov		al,		input[esi]				;get input
	inc		esi								;index++
	cmp		al,		48	;0					;compare input and char'0'
	je		L2								;if equal jump L2
	loop	L1								;if not ,loop in L1 again
	mov		edx,	OFFSET	format1			;move format1 string to edx
	CALL	WriteString						;write format1 
	exit									;exit
L2:
	mov		al,		input[esi]				;get input
	inc		esi								;index++
	cmp		al,		48	;0					;compare input and char'0'
	je		L1								;if equal jump L1
	loop	L2								;if not ,loop in L2 again
	mov		edx,	OFFSET	format2			;move format2 string to edx
	CALL	WriteString						;write format2
	exit									;exit
main ENDP
END main
include Irvine32.inc

.data
format			BYTE	"Fibonacci Numbers By Group",0
name_format     BYTE    "What is your name? ",0
hi_format       BYTE    "Hi, ",0
bye_format      BYTE    "Goodbye, ",0
fib_format      BYTE    "How many Fibonacci numbers should I display?",0
fibin_format    BYTE    "Enter an integer in the range [1..25]: ",0
wrong_format    BYTE    "That number was out of range, try again.",0
max =   80
stringIn        BYTE    max+1 DUP (?)
function_1      BYTE    "FIB(",0
function_2      BYTE    ") = ",0
function_3      BYTE    ") + ",0
.code
main PROC
	mov		edx,	OFFSET	format			; print description
	CALL	WriteString						
    CALL	Crlf                            ; change line
    CALL	Crlf
    mov		edx,	OFFSET  name_format		; print ask name
    CALL	WriteString
	mov     edx,    OFFSET  stringIn        ; string place
    mov     ecx,    MAX                     ; buffer size - 1
    call    ReadString                      ; read name result in stringIn 
    mov		edx,	OFFSET  hi_format		; print hi
    CALL	WriteString
    mov		edx,	OFFSET  stringIn		; print name
    CALL	WriteString
    CALL	Crlf                            ; change line
    CALL	Crlf
L1:
    mov		edx,	OFFSET  fib_format	    ; print question
    CALL	WriteString
    CALL	Crlf                            ; change line
    mov		edx,	OFFSET  fibin_format    ; print enter number
    CALL	WriteString
    CALL	ReadInt							; read input int ,result in eax
    CALL	Crlf                            ; change line
    cmp     eax,    25                      ; compare input and 25
    jg      error                           ; >25 jump error
    cmp     eax,    1                       ; compare input and 1
    jl      error                           ; <1 jump error
    jmp     fibmain                         ; correct range jump fib process
error:
    mov		edx,	OFFSET  wrong_format    ; print wrong message
    CALL	WriteString
    CALL	Crlf                            ; change line
    jmp     L1                              ; jump L1 to ask again
fibmain:                         
    push    eax                             ; push n to stack
    call    fib                             ; call fib
    call    Crlf                            ; change line
    call    Crlf
    mov		edx,	OFFSET  bye_format	    ; print bye
    CALL	WriteString
    mov		edx,	OFFSET  stringIn		; print name
    CALL	WriteString
    exit                                    ; exit program
main ENDP

fib PROC C                
    push    ebp                             ; push stack address
    mov     ebp,    esp                     ; get stack address
    sub     esp,    4                       ; space [ebp-4]
    mov     eax,    [ebp+8]                 ; eax = n
                                            ; if n <= 1 return n;
    cmp     eax,    1                       ; compare n and 1
    jbe     low2                            ; n <= 1 jump to low2

                                            ; return fib(n-1) + fib(n-2);
    mov     edx,    OFFSET  function_1      ; print fib(
    call    WriteString
    ;call    WriteDec                        ; print n
    mov     edx,    OFFSET  function_2      ; print ) =
    ;call    WriteString
    dec     eax                             ; n-1
    mov     edx,    OFFSET  function_1      ; print fib(
    call    WriteString
    call    WriteDec                        ; print n-1
    mov     edx,    OFFSET  function_3      ; print ) +
    call    WriteString
    push    eax                             ; push n-1 into stack
    dec     eax                             ; n-2
    mov     edx,    OFFSET  function_1      ; print fib(
    call    WriteString
    call    WriteDec                        ; print n-2
    mov     edx,    OFFSET  function_2      ; print ) =
    call    WriteString
    call    Crlf                            ; change line
    call    fib                             ; call fib(n-1)
    mov     [ebp-4],eax                     ; store fib(n-1)
    dec     dword   ptr [esp]               ; n-2 <- n-1
    call    fib                             ; call fib(n-2)
    add     esp,    4                       ; reset stack
    mov     ebx,    eax                     ; mov the fib(n-2) to ebx
    mov     edx,    OFFSET  function_1      ; print FIB(
    call    WriteString
    mov     eax,    [ebp+8]                 ; move n to eax
    call    WriteDec
    mov     edx,    OFFSET  function_2      ; print ) =
    call    WriteString
    mov     eax,    ebx                     ; mov fib(n-2) to eax
    add     eax,    [ebp-4]                 ; fib(n-1)+fib(n-2)
    call    WriteDec                        ; print result(eax)
    call    Crlf                            ; change line
    jmp     next                            ; jump quit

low2:
    mov     edx,    OFFSET  function_1      ; print FIB(
    call    WriteString
    call    WriteDec                        ; print n(eax)
    mov     edx,    OFFSET  function_2      ; print ) =
    call    WriteString
    call    WriteDec                        ; print n(eax)
    call    Crlf                            ; change line
next:
    mov     esp,    ebp                     ; restore esp
    pop     ebp                             ; restore ebp
    ret                                     ; return eax
fib ENDP

END main

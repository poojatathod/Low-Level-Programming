%include "pattern1.mac"
section .data
        newline db 10,0
	msg1 db "@",0
        msg2 db "pooja",0
	msg3 db "7",0
        space db " ",0
        star db "*",0


section .text
	
	global main
        extern printf

main:

	printchr msg1,4
        printchr newline,1
        printstr msg2,5
        printchr newline,1
        printint msg3
        printchr newline,3
       
      
      
square: 
      pusha
      printchr star,4
      printchr newline,1
      popa
      

      mov ecx,2
square1: 
    
      pusha
      printchr star,1 
      printchr space,2
      printchr star,1
      printchr newline,1
      popa
      loop square1
      
pqr2:
     pusha
     printchr star,4
     printchr newline,1
     popa	


     printchr newline,3
    
     mov edx,4
     mov ecx,1
triangle: 
     cmp edx,0
     jz third
     pusha
     printchr star,ecx 
     printchr newline,1
     popa
     inc ecx
     dec edx
     jmp triangle        
    


third:
      printchr newline,3
      mov edx,4
      mov ecx,1

third1: 
      pusha
      cmp edx,0
      jz stop
      mov eax,edx
      sub eax,1
      pusha
      printchr space,eax
      popa
          
     
triangle2:
      pusha
      cmp ecx,0
      jz triangle3
      pusha
      printchr star,1
      popa
      pusha
      printchr space,1
      popa
      dec ecx
     jmp triangle2

triangle3:
      popa
      pusha
      printchr newline,1
      popa
      popa
      dec edx
      inc ecx
      jmp third1


stop: 
      ret

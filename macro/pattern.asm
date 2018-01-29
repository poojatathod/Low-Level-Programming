%include "pattern1.mac"
section .data
        newline db 10,0
        msg db "%d",10,0
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
      xor eax,eax
      xor ebx,ebx
      xor ecx,ecx
      xor edx,edx
      mov edx,4
      mov ecx,1
      mov ebx,edx

tlp1:
      pusha
      cmp edx,0
      jz stop
      sub ebx,ecx 
      mov ecx,ebx
splp:  
       pusha
       mov eax,4
       mov ebx,0
       mov ecx,space
       mov edx,1
       int 80h
       loop splp

 

      popa
      pusha  
    
tlp2:
      cmp ecx,0
      jz tlp3
      push ecx
      printchr star,1
      printchr space,1
      pop ecx
      dec ecx
      jmp tlp2

tlp3:
      printchr newline,1
      popa
      mov edx,0
      inc ecx
      jmp tlp1

     
stop: 
      ret




;print 4 space
;print 1 star
;newline
;print 3 spaces
;print 2 star
;newline
;print 2 spaces
;print 3 star
;newline
;print 1 space
;print 4 star
;ret

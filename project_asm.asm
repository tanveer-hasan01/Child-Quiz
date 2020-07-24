

include 'emu8086.inc'
 .model small
 .stack 100h 

 .data  
 
 
 buff        db  20 dup(0), 10, 13
lbuff       EQU ($-buff)              ; bytes in a string
 
     
     
          
.code 

main: 

   
    
    
printn "                                         kid learning" 





print "Enter Player name (must be 9 character)    =  "
      
   
      
      
    
    
     mov ax, @data
            mov ds, ax              

           mov ah, 0Ah         ; doesn't work
            mov buff, ah        ; doesn't seem right   
             int 21h 
             


  


              
   mov ah,2  ; new line
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h              
             
            
   mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h            
             
   mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
         
            




  
  

printn "level 1"

  mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 

print "1+1 =" 

mov ah,1
int 21h

cmp al,50
je result
 
jmp else
  
  
  
  
  
  
result:   

printn "  correct answer" 

  mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
   
  printn "  Complete level 1 !!" 
   
  mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
  
  
    mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
  
    mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
  printn "Level 2" 
  
  mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
  print "3+1 = "
  mov ah,1
  int 21h
  
  cmp al, 52
  je l11 
  
  jmp f2
   
  
  
  
  
  
  
  
  
  
  
   
  l11:
  
     printn "  correct answer" 

  mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
   
  
  
  print "0+3 = "
  mov ah,1
  int 21h
  
  cmp al,51 
  
  je l22
  
  jmp f3
  
  
   
   
   
   
   
   
   
   
   
   f3:
   
   
       printn "  Wrong answer." 
                mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
   
     printn "     ## Game over ##"
   
    
   
            mov     ax, 4000h       ; display to screen
            mov     bx, 1           
            mov     cx, lbuff           
            mov     dx, OFFSET buff
            
            int     21h 
              
  mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
 
  
  
   
  printn "        Better luck for next time. " 
  
           mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
  printn "        Correct answer is 3" 
  
               mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
             mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
   printn "        Total score 10" 
   
    jmp end
   
   
   
   
   
   
   
   
   l22:
   
    printn "  correct answer" 

  mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
   
  printn "  Complete level 2 !!" 
  
  
  
    mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
 
 
  
    mov ah,2  ;next line 
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h   
     
     
 printn "Level 3" 
 
  
  
      mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h   
     
     
         mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
  
     
     
  print "1-0 =" 
     
  mov ah ,1
  int 21h 
     
     
     
  cmp al,49
  
  je l33
  
     
   
   
  jmp f33 
   
   
   
   
   
   l33:
   
    
         printn "  correct answer" 

  mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
   
     mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h

  
  print "5*0 ="
  mov ah,1
  int 21h
    
  cmp al,48
  je l44 
   
   jmp f5
   
   
   
   
   
   f5:
   
   
       printn "  Wrong answer." 
                mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
   
     printn "     ## Game over ##"
   
    
   
            mov     ax, 4000h       ; display to screen
            mov     bx, 1           
            mov     cx, lbuff           
            mov     dx, OFFSET buff
            
            int     21h 
              mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
 
  
  
   
  printn "        Better luck for next time. " 
  
           mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
  printn "        Correct answer is 0" 
  
               mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
   printn "        Total score 20" 
   
   
    jmp end
   
   
   
   l44:
   
  printn "  correct answer" 

    MOV dl, 10
MOV ah, 02h
INT 21h
MOV dl, 13
MOV ah, 02h
INT 21h 

    MOV dl, 10
MOV ah, 02h
INT 21h
MOV dl, 13
MOV ah, 02h
INT 21h 
 

  printn "  Complete leve 3 !!" 

 
       MOV dl, 10
MOV ah, 02h
INT 21h
MOV dl, 13
MOV ah, 02h
INT 21h  







  
  printn " Level 4 " 
  
           MOV dl, 10
MOV ah, 02h
INT 21h
MOV dl, 13
MOV ah, 02h
INT 21h

printn "Choose correct answer: "

              MOV dl, 10
MOV ah, 02h
INT 21h
MOV dl, 13
MOV ah, 02h
INT 21h

 
 print " 1. 3 is Even number.    2. 5 is odd number. "
 
 mov ah,1 
 int 21h
 
 cmp al,50
 je l77
 
 jmp f7
 
  
  
  
  
  
  
  l77:
  
     printn "  correct answer" 
  
                  mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
  
        print " 1. 0 is even number.    2. 0 is not a number. " 
        
        
        
       mov ah ,1
       int 21h
       
       cmp al, 49
       
       je l88
       
       
       jmp f8
       
       
      
      
      
      
      l88:
      
      
        
                  mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h  
  
                    mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
   printn "   ****Congratulations*****"
   
   
            mov     ax, 4000h       ; display to screen
            mov     bx, 1           
            mov     cx, lbuff           
            mov     dx, OFFSET buff
            
            int     21h 
              mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
  
  
  Printn "You can successfully complete all level."
   
      jmp end
      
      
      
      
      
      
      
      
       
       
       
       f8: 
       
                      mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
       
       
     printn "  Wrong answer." 
                mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
                 mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
   
     printn "     ## Game over ##"
   
    
   
            mov     ax, 4000h       ; display to screen
            mov     bx, 1           
            mov     cx, lbuff           
            mov     dx, OFFSET buff
            
            int     21h 
              mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
 
  
  
   
  printn "        Better luck for next time. " 
  
           mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
  printn "        Correct answer is 1" 
  
               mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
   printn "        Total score 30" 
  
    jmp end   
       
       
       
  
  
  
 
 
 f7:
 
 
 
                mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
 
   printn "  Wrong answer." 
                mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
                 mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
   
     printn "     ## Game over ##"
   
    
   
            mov     ax, 4000h       ; display to screen
            mov     bx, 1           
            mov     cx, lbuff           
            mov     dx, OFFSET buff
            
            int     21h 
              mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
 
  
  
   
  printn "        Better luck for next time. " 
  
           mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
  printn "        Correct answer is 2" 
  
               mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
   printn "        Total score 25" 
  
    jmp end
 




   
   
   jmp end
    
     
     
     
     
     
     
     
     
     
     
     
   
   f33:
   
      printn "  Wrong answer." 
                mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
   
     printn "     ## Game over ##"
   
    
   
            mov     ax, 4000h       ; display to screen
            mov     bx, 1           
            mov     cx, lbuff           
            mov     dx, OFFSET buff
            
            int     21h 
              mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
 
  
  
   
  printn "        Better luck for next time. " 
  
           mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
  printn "        Correct answer is 2" 
  
               mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
   printn "        Total score 15" 
  
    jmp end
   
   
   
   
   
    
    
    
  
  f2: 
  
  
     printn "  Wrong answer." 
                mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
   
     printn "     ## Game over ##"
   
    
   
            mov     ax, 4000h       ; display to screen
            mov     bx, 1           
            mov     cx, lbuff           
            mov     dx, OFFSET buff
            
            int     21h 
              mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
 
  
  
   
  printn "        Better luck for next time. " 
  
           mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
  printn "        Correct answer is 4" 
  
               mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
   printn "        Total score 5" 
  
    jmp end
   
   
   
   
   
   
   
   
  
 
 else:
 
   printn "  Wrong answer." 
                mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h
   
     printn "     ## Game over ##"
   
    
   
            mov     ax, 4000h       ; display to screen
            mov     bx, 1           
            mov     cx, lbuff           
            mov     dx, OFFSET buff
            
            int     21h 
              mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
 
  
  
   
  printn "        Better luck for next time. " 
  
           mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
  
  printn "        Correct answer is 2" 
  
               mov ah,2
  mov dl,0dh
  int 21h
  mov dl,0ah
  int 21h 
   printn "        Total score 0" 
   
  
   jmp end
  
  
  
  end:
   mov ah,4ch
   int 21h
   
   


end main
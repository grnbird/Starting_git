.model small
.stack 100h
.code

main proc
       mov ah,1
       int 21h
       mov bl,al
       sub bl,48
       
       mov cx,bx

       mov ah,2
       mov dx,0dh
       int 21h
       mov dx,0ah   
       int 21h
             
    top:
       mov bx,cx
       
     m: 
       cmp bx,0
       je n 
       
       mov ah,2
       mov dx,"*"
       int 21h 
       
       dec bx
       jmp m

    n:
       mov ah,2
       mov dx,0dh
       int 21h
       mov dx,0ah   
       int 21h
        
       loop top 
       
    exit:
       mov ah,0
       int 16h
       main endp 
end main   

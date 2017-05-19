.model small
.stack 100h
.data
     str1 db "Bangladeshixcasd",0
.code

main proc
       mov ax,@data
       mov ds,ax 
        
       lea bx,str1
       
compare: 
       cmp [bx],0 
       je done
       inc bx   
       jmp compare

done:
       add bl,30h
       mov cl,58

top:
       cmp cl,bl
       jg print
       je print2
       inc cl
       jmp top
     
print:    
       mov ah,2  
       mov dx,bx
       int 21h 
       jmp exit
       
print2:
       mov ah,2  
       mov dl,"1"
       int 21h
       sub cl,10
       mov dl,cl
       int 21h

exit: 
       mov ah,0
       int 16h 
    
       mov ah,4ch
       int 21h
       main endp
       end main    
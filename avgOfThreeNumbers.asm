.486
include \masm32\include\sasmacros.inc

.data
avg dd ?
a dd 20
b dd 13
d dd 82
.code
start:
move avg,a
iadd avg,b
iadd avg,d
idivi avg,3
put_i avg
 exit
end start
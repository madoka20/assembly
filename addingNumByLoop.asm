.486
include \masm32\include\sasmacros.inc

.data
a dd ?
b dd ?
n dd 0
.code
start:
move a,0
move b,9
count_loop:
compare a,b
bgz done_loop
iadd a,1
iadd n,a
br count_loop
done_loop:
put_i n
 exit
end start
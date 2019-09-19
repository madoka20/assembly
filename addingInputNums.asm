.486
include \masm32\include\sasmacros.inc

.data
sum dd 0
num dd ?
prompt db 'Enter a non-nagative integer or -1 to quit: ',0
message db 'The sum of your number is: ',0
newline db 0ah

.code
start:
    put_str prompt
    get_i num
sum_loop:
    compare num,-1
    bez finished
    iadd sum, num
    put_str prompt
    get_i num
    br sum_loop
finished:
    put_str message
    put_ch newline
    put_i sum

 exit
end start
.486
include \masm32\include\sasmacros.inc

.data

next_ch db ?

newline db 0ah
.code
start:
    get_ch next_ch
get_next_char:
    compareb next_ch, newline
    bez finished
    compareb next_ch, 'a'
    bnz check_e
    put_ch '@'
    br end_of_if
check_e:
    compareb next_ch, 'e'
    bnz display_char
    put_ch '3'
    br end_of_if
display_char:
    put_ch next_ch
end_of_if:
    get_ch next_ch
    br get_next_char
finished:
exit
end start
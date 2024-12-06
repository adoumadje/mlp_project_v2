SYS_EXIT equ 1
SYS_READ equ 3
SYS_WRITE equ 4
STDIN equ 0
STDOUT equ 1

section .data

    intro_msg db "Select an option:", 0xA, 0xD
    len_intro equ $ - intro_msg

    add_msg db "1-addition(+)", 0xA, 0xD
    len1 equ $ - add_msg
    add_res db "num1 + num2 = "
    len_add equ $ - add_res

    sub_msg db "2-substroction(-)", 0xA, 0xD
    len2 equ $ - sub_msg
    sub_res db "num1 - num2 = "
    len_sub equ $ - sub_res

    mul_msg db "3-multiplication(*)", 0xA, 0xD
    len3 equ $ - mul_msg
    mul_res db "num1 * num2 = "
    len_mul equ $ - mul_res

    div_msg db "4-division(/)", 0xA, 0xD
    len4 equ $ - div_msg
    div_res db "num1 / num2 = "
    len_div equ $ - div_res

    inc_msg db "5-increment(++)", 0xA, 0xD
    len5 equ $ - inc_msg
    inc_res db "++num = "
    len_inc equ $ - inc_res

    dec_msg db "6-decrement(--)", 0xA, 0xD
    len6 equ $ - dec_msg
    dec_res db "--num = "
    len_dec equ $ - dec_res

    mod_msg db "7-modulo(%)", 0xA, 0xD
    len7 equ $ - mod_msg
    mod_res db "num1 % num2 = "
    len_mod equ $ - mod_res

    exit_msg db "8-exit", 0xA, 0xD
    len8 equ $ - exit_msg



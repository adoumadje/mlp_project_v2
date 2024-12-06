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
    add_banner db "############# Addition Start ############", 0xA, 0xD
    len_add_ban equ $ - add_banner
    add_closer db "############# Addition Finish ############", 0xA, 0xD
    len_add_closer equ $ - add_closer

    sub_msg db "2-substraction(-)", 0xA, 0xD
    len2 equ $ - sub_msg
    sub_res db "num1 - num2 = "
    len_sub equ $ - sub_res
    sub_banner db "############# Substraction Start ############", 0xA, 0xD
    len_sub_ban equ $ - sub_banner
    sub_closer db "############# Substraction Finish ############", 0xA, 0xD
    len_sub_closer equ $ - sub_closer

    mul_msg db "3-multiplication(*)", 0xA, 0xD
    len3 equ $ - mul_msg
    mul_res db "num1 * num2 = "
    len_mul equ $ - mul_res
    mul_banner db "############# Multiplication Start ############", 0xA, 0xD
    len_mul_ban equ $ - mul_banner
    mul_closer db "############# Multiplication Finish ############", 0xA, 0xD
    len_mul_closer equ $ - mul_closer

    div_msg db "4-division(/)", 0xA, 0xD
    len4 equ $ - div_msg
    div_res db "num1 / num2 = "
    len_div equ $ - div_res
    div_banner db "############# Division Start ############", 0xA, 0xD
    len_div_ban equ $ - div_banner
    div_closer db "############# Division Finish ############", 0xA, 0xD
    len_div_closer equ $ - div_closer

    inc_msg db "5-increment(++)", 0xA, 0xD
    len5 equ $ - inc_msg
    inc_res db "++num = "
    len_inc equ $ - inc_res
    inc_banner db "############# Increment Start ############", 0xA, 0xD
    len_inc_ban equ $ - inc_banner
    inc_closer db "############# Increment Finish ############", 0xA, 0xD
    len_inc_closer equ $ - inc_closer

    dec_msg db "6-decrement(--)", 0xA, 0xD
    len6 equ $ - dec_msg
    dec_res db "--num = "
    len_dec equ $ - dec_res
    dec_banner db "############# Decrement Start ############", 0xA, 0xD
    len_dec_ban equ $ - dec_banner
    dec_closer db "############# Decrement Finish ############", 0xA, 0xD
    len_dec_closer equ $ - dec_closer

    mod_msg db "7-modulo(%)", 0xA, 0xD
    len7 equ $ - mod_msg
    mod_res db "num1 % num2 = "
    len_mod equ $ - mod_res
    mod_banner db "############# Modulo Start ############", 0xA, 0xD
    len_mod_ban equ $ - mod_banner
    mod_closer db "############# Modulo Finish ############", 0xA, 0xD
    len_mod_closer equ $ - mod_closer

    exit_msg db "8-exit", 0xA, 0xD
    len8 equ $ - exit_msg

    option_prompt db "your choice: "
    len_opt equ $ - option_prompt
    num_prompt db "num = "
    len_pt equ $ - num_prompt
    num1_prompt db "num1 = "
    len_pt1 equ $ - num1_prompt
    num2_prompt db "num2 = "
    len_pt2 equ $ - num2_prompt


section .bss

    option resb 2
    num resb 2
    num1 resb 2
    num2 resb 2
    res resb 1

section .text

    global _start

_start:
    
    ;Intro
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, intro_msg
    mov edx, len_intro
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, add_msg
    mov edx, len1
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, sub_msg
    mov edx, len2
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, mul_msg
    mov edx, len3
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, div_msg
    mov edx, len4
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, inc_msg
    mov edx, len5
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, dec_msg
    mov edx, len6
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, mod_msg
    mov edx, len7
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, exit_msg
    mov edx, len8
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, option_prompt
    mov edx, len_opt
    int 0x80

    mov eax, SYS_READ
    mov ebx, STDIN
    mov ecx, option
    mov edx, 2
    int 0x80

    mov al, [option]

    cmp al, '1'
    je  addition

    cmp al, '2'
    je substraction

    cmp al, '3'
    je multiplication

    cmp al, '4'
    je division

    cmp al, '5'
    je increment

    cmp al, '6'
    je decrement

    cmp al, '7'
    je modulo

    cmp al, '8'
    je _exit

addition:
    
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, add_banner
    mov edx, len_add_ban
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, add_closer
    mov edx, len_add_closer
    int 0x80

    jmp _start


substraction:

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, sub_banner
    mov edx, len_sub_ban
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, sub_closer
    mov edx, len_sub_closer
    int 0x80

    jmp _start


multiplication:

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, mul_banner
    mov edx, len_mul_ban
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, mul_closer
    mov edx, len_mul_closer
    int 0x80

    jmp _start

division:

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, div_banner
    mov edx, len_div_ban
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, div_closer
    mov edx, len_div_closer
    int 0x80

    jmp _start

increment:

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, inc_banner
    mov edx, len_inc_ban
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, inc_closer
    mov edx, len_inc_closer
    int 0x80

    jmp _start

decrement:

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, dec_banner
    mov edx, len_dec_ban
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, dec_closer
    mov edx, len_dec_closer
    int 0x80

    jmp _start

modulo:

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, mod_banner
    mov edx, len_mod_ban
    int 0x80

    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, mod_closer
    mov edx, len_mod_closer
    int 0x80

    jmp _start

_exit:

    mov eax, SYS_EXIT
    int 0x80
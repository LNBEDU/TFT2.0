; Interface tables: 0/0 (NaN%)
; Virtual methods: 0 / 0
; generated code sizes (bytes): 7336 (incl. 6542 user, 720 helpers, 14 vtables, 60 lits); src size 0
; assembly: 5047 lines; density: 39.89 bytes/stmt; (164 stmts)
; total bytes: 223400 (92.1% of 237.0k flash with 19288 free)
; peep hole pass: 90 instructions removed and 106 updated
; peep hole pass: 24 instructions removed and 1 updated
; peep hole pass: 0 instructions removed and 0 updated


; start
    .startaddr 0x34c00
    .hex 708E3B92C615A841C49866C975EE5197 ; magic number
    .hex F5F144C58E51A6D1 ; hex template hash
    .hex 873266330af9dbdb ; replaced in binary by program hash
    .short 12   ; num. globals
    .short 0 ; patched with number of 64 bit words resulting from assembly
    .word _pxt_config_data
    .short 0 ; patched with comm section size
    .short 1 ; number of globals that are not pointers (they come first)
    .word _pxt_iface_member_names
    .word _pxt_lambda_trampoline@fn
    .word _pxt_perf_counters
    .word _pxt_restore_exception_state@fn
    .word _str1 ; name
    ;
; Function test.ts(1,1): <main>
    ;
    .object _main___P2999 "test.ts(1,1): <main>"
_main___P2999_pre:
    .section code
    .balign 4
_main___P2999_Lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word _main___P2999_args@fn
_main___P2999_args:
    .section code
_main___P2999:
_main___P2999_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
_main___P2999_locals:
    movs r0, #0
    ldr r7, [r6, #0]
    str r0, [r7, #4]
    @stackempty locals
    movs r0, #0
    ldr r7, [r6, #0]
    str r0, [r7, #8]
    @stackempty locals
    movs r0, #2
    lsls r0, r0, #8
    adds r0, #129
    ldr r7, [r6, #0]
    str r0, [r7, #40]
    @stackempty locals
    movs r0, #1
    lsls r0, r0, #8
    adds r0, #225
    ldr r7, [r6, #0]
    str r0, [r7, #44]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    pop {r0} ; tmpref @1
    ldr r7, [r6, #0]
    str r0, [r7, #12]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_2 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #5
    lsls r1, r1, #8
    adds r1, #193
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_3 ; 196801      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_4 ; 23025621      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_5 ; 22916565      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_6 ; 53617255      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_7 ; 34254165      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #193
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    pop {r0} ; tmpref @1
    ldr r7, [r6, #0]
    str r0, [r7, #16]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    movs r1, #139
    lsls r1, r1, #8
    adds r1, #129
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #116
    lsls r1, r1, #8
    adds r1, #65
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_8 ; 664193      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_9 ; 291073      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #68
    lsls r1, r1, #8
    adds r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_10 ; 270593      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #2
    lsls r1, r1, #8
    adds r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    b _jmpwords_11      
.object PUSH
.balign 4
_ldlit_2:
 .word 4565061
_ldlit_3:
 .word 196801
_ldlit_4:
 .word 23025621
_ldlit_5:
 .word 22916565
_ldlit_6:
 .word 53617255
_ldlit_7:
 .word 34254165
_ldlit_8:
 .word 664193
_ldlit_9:
 .word 291073
_ldlit_10:
 .word 270593
_jmpwords_11:
.object POP
    ldr r1, _ldlit_12 ; 2236961      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_13 ; 953437      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_14 ; 1113217      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_15 ; 1224051      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_16 ; 765011      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_17 ; 18827929      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_18 ; 20295023      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_19 ; 18199825      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_20 ; 2304611      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_21 ; 22392149      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_22 ; 4549957      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #2
    lsls r1, r1, #8
    adds r1, #129
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #84
    lsls r1, r1, #8
    adds r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    pop {r0} ; tmpref @1
    ldr r7, [r6, #0]
    str r0, [r7, #20]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    ldr r1, _ldlit_23 ; 1134849      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_24 ; 676481      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_25 ; 283713      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_26 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_27 ; 29994077      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_28 ; 1976701      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_29 ; 699775      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_30 ; 1150045      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_31 ; 953471      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_32 ; 1158527      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_33 ; 76159      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_34 ; 26578013      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_35 ; 2040127      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #143
    lsls r1, r1, #8
    adds r1, #227
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_36 ; 3116115      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_37 ; 1134911      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_38 ; 1082431      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_39 ; 65151167      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_40 ; 65544383      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_13 ; 953437      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    pop {r0} ; tmpref @1
    ldr r7, [r6, #0]
    str r0, [r7, #24]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    ldr r1, _ldlit_41 ; 141695      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_42 ; 1493581      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_43 ; 34220415      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_44 ; 634213      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_45 ; 2226243      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_46 ; 1016863      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_47 ; 15237647      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_48 ; 65544767      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_49 ; 1777975      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_50 ; 2285699      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    b _jmpwords_51      
.object PUSH
.balign 4
_ldlit_12:
 .word 2236961
_ldlit_13:
 .word 953437
_ldlit_14:
 .word 1113217
_ldlit_15:
 .word 1224051
_ldlit_16:
 .word 765011
_ldlit_17:
 .word 18827929
_ldlit_18:
 .word 20295023
_ldlit_19:
 .word 18199825
_ldlit_20:
 .word 2304611
_ldlit_21:
 .word 22392149
_ldlit_22:
 .word 4549957
_ldlit_23:
 .word 1134849
_ldlit_24:
 .word 676481
_ldlit_25:
 .word 283713
_ldlit_26:
 .word 4565061
_ldlit_27:
 .word 29994077
_ldlit_28:
 .word 1976701
_ldlit_29:
 .word 699775
_ldlit_30:
 .word 1150045
_ldlit_31:
 .word 953471
_ldlit_32:
 .word 1158527
_ldlit_33:
 .word 76159
_ldlit_34:
 .word 26578013
_ldlit_35:
 .word 2040127
_ldlit_36:
 .word 3116115
_ldlit_37:
 .word 1134911
_ldlit_38:
 .word 1082431
_ldlit_39:
 .word 65151167
_ldlit_40:
 .word 65544383
_ldlit_41:
 .word 141695
_ldlit_42:
 .word 1493581
_ldlit_43:
 .word 34220415
_ldlit_44:
 .word 634213
_ldlit_45:
 .word 2226243
_ldlit_46:
 .word 1016863
_ldlit_47:
 .word 15237647
_ldlit_48:
 .word 65544767
_ldlit_49:
 .word 1777975
_ldlit_50:
 .word 2285699
_jmpwords_51:
.object POP
    ldr r1, _ldlit_52 ; 1154419      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_53 ; 1150913      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_54 ; 34087043      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_55 ; 2067521      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_56 ; 133249      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_57 ; 34636833      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #16
    lsls r1, r1, #8
    adds r1, #65
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_58 ; 35558553      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_59 ; 566591      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_60 ; 1217689      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    pop {r0} ; tmpref @1
    ldr r7, [r6, #0]
    str r0, [r7, #28]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    ldr r1, _ldlit_61 ; 2073873      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_62 ; 1224029      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_63 ; 77705      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_64 ; 1027397      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_65 ; 1581375      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #7
    lsls r1, r1, #8
    adds r1, #65
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_66 ; 885761      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_67 ; 1069375      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_68 ; 1082305      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_69 ; 63054013      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_70 ; 1839293      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_71 ; 824473      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_72 ; 283325      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_73 ; 1987209      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_74 ; 135353      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_75 ; 152865      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_76 ; 34907073      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_77 ; 35554333      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_78 ; 13140493      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_79 ; 63980605      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    pop {r0} ; tmpref @1
    ldr r7, [r6, #0]
    str r0, [r7, #32]
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    ldr r1, _ldlit_80 ; 1205029      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_81 ; 4474149      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_82 ; 1226405      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_83 ; 1177857      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #7
    lsls r1, r1, #8
    adds r1, #193
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #39
    lsls r1, r1, #8
    adds r1, #227
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_84 ; 17309953      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    ldr r1, _ldlit_85 ; 4565061      
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    pop {r0} ; tmpref @1
    ldr r7, [r6, #0]
    str r0, [r7, #36]
    @stackempty locals
    bl RBTFT20_init__P2990
_proccall2:
    @stackempty locals
    bl RBTFT20_clearScreen__P2996
_proccall3:
    @stackempty locals
    ldr r0, _ldlit_86 ; 126977      
    push {r0} ; proc-arg
    movs r0, #21
    push {r0} ; proc-arg
    movs r0, #21
    push {r0} ; proc-arg
    bl RBTFT20_drawPixel__P2991
_proccall4:
    add sp, #4*3 ; pop locals 3
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    movs r0, #63
    push {r0} ; proc-arg
    movs r0, #201
    push {r0} ; proc-arg
    movs r0, #201
    push {r0} ; proc-arg
    movs r0, #1
    push {r0} ; proc-arg
    movs r0, #1
    push {r0} ; proc-arg
    bl RBTFT20_drawLine__P2992
_proccall5:
    add sp, #4*5 ; pop locals 5
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    ldr r0, _ldlit_87 ; 131009      
    push {r0} ; proc-arg
    movs r0, #241
    push {r0} ; proc-arg
    movs r0, #201
    push {r0} ; proc-arg
    movs r0, #1
    push {r0} ; proc-arg
    movs r0, #1
    push {r0} ; proc-arg
    bl RBTFT20_drawRectangle__P2993
_proccall6:
    add sp, #4*5 ; pop locals 5
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    movs r0, #15
    lsls r0, r0, #8
    adds r0, #193
    push {r0} ; proc-arg
    movs r0, #101
    push {r0} ; proc-arg
    movs r0, #101
    push {r0} ; proc-arg
    movs r0, #101
    push {r0} ; proc-arg
    bl RBTFT20_drawCircle__P2994
_proccall7:
    add sp, #4*4 ; pop locals 4
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    bl RBTFT20_clearScreen__P2996
_proccall8:
    @stackempty locals
    movs r0, #1
    push {r0} ; proc-arg
    ldr r0, _ldlit_88 ; 131071      
    push {r0} ; proc-arg
    movs r0, #3
    push {r0} ; proc-arg
    movs r0, #21
    push {r0} ; proc-arg
    movs r0, #21
    push {r0} ; proc-arg
    ldr r0, _ldlit_89 ; _str0      
    push {r0} ; proc-arg
    bl RBTFT20_showString__P2995
_proccall9:
    add sp, #4*6 ; pop locals 6
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    bl RBTFT20_turnOff__P2997
_proccall10:
    @stackempty locals
    movs r0, #125
    lsls r0, r0, #3
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    bl RBTFT20_turnOn__P2998
_proccall11:
    @stackempty locals
.ret.2999:
    @stackempty locals
    movs r0, #0
.final_0_1:
_main___P2999_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function RB-TFT20.ts(371,6): RBTFT20.turnOn
    ;
    .object RBTFT20_turnOn__P2998 "RB-TFT20.ts(371,6): RBTFT20.turnOn"
RBTFT20_turnOn__P2998_pre:
    .section code
    .balign 4
    .section code
RBTFT20_turnOn__P2998:
RBTFT20_turnOn__P2998_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
RBTFT20_turnOn__P2998_locals:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0} ; the one arg
    movs r0, #83
    push {r0} ; proc-arg
    bl RBTFT20_send__P3329
_proccall12:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.2998:
    @stackempty locals
    movs r0, #0
.final_0_2:
RBTFT20_turnOn__P2998_end:
    pop {pc}
.object PUSH
.balign 4
_ldlit_52:
 .word 1154419
_ldlit_53:
 .word 1150913
_ldlit_54:
 .word 34087043
_ldlit_55:
 .word 2067521
_ldlit_56:
 .word 133249
_ldlit_57:
 .word 34636833
_ldlit_58:
 .word 35558553
_ldlit_59:
 .word 566591
_ldlit_60:
 .word 1217689
_ldlit_61:
 .word 2073873
_ldlit_62:
 .word 1224029
_ldlit_63:
 .word 77705
_ldlit_64:
 .word 1027397
_ldlit_65:
 .word 1581375
_ldlit_66:
 .word 885761
_ldlit_67:
 .word 1069375
_ldlit_68:
 .word 1082305
_ldlit_69:
 .word 63054013
_ldlit_70:
 .word 1839293
_ldlit_71:
 .word 824473
_ldlit_72:
 .word 283325
_ldlit_73:
 .word 1987209
_ldlit_74:
 .word 135353
_ldlit_75:
 .word 152865
_ldlit_76:
 .word 34907073
_ldlit_77:
 .word 35554333
_ldlit_78:
 .word 13140493
_ldlit_79:
 .word 63980605
_ldlit_80:
 .word 1205029
_ldlit_81:
 .word 4474149
_ldlit_82:
 .word 1226405
_ldlit_83:
 .word 1177857
_ldlit_84:
 .word 17309953
_ldlit_85:
 .word 4565061
_ldlit_86:
 .word 126977
_ldlit_87:
 .word 131009
_ldlit_88:
 .word 131071
_ldlit_89:
 .word _str0
.object POP
    @stackempty func
    @stackempty args
; endfun
    ;
; Function RB-TFT20.ts(115,5): RBTFT20.send
    ;
    .object RBTFT20_send__P3329 "RB-TFT20.ts(115,5): RBTFT20.send"
RBTFT20_send__P3329_pre:
    .section code
    .balign 4
    .section code
RBTFT20_send__P3329:
RBTFT20_send__P3329_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
RBTFT20_send__P3329_locals:
    movs r0, #114
    movs r1, #0
    mov r7, sp
    str r7, [r6, #4]
    bl pins::digitalWritePin
    @stackempty locals
    movs r0, #116
    movs r1, #0
    mov r7, sp
    str r7, [r6, #4]
    bl pins::digitalWritePin
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_0
    mov r7, sp
    str r7, [r6, #4]
    bl pins::spiWrite
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    @stackempty locals
    movs r0, #114
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl pins::digitalWritePin
    @stackempty locals
    movs r0, #0
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, args@1]
    str r0, [sp, locals@1]
    movs r0, #1
    str r0, [sp, locals@2]
    @stackempty locals
.fortop.3381:
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::length
    bl _numops_fromInt
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::lt_bool
    add sp, #4*2 ; pop locals 2
    cmp r0, #0
    beq .brk.3381      
.jmpz13:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@2]
    bl _numops_toInt
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::getAt
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@0]
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_0
    mov r7, sp
    str r7, [r6, #4]
    bl pins::spiWrite
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    @stackempty locals
.cont.3381:
    ldr r0, [sp, locals@2]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@2]
    b .fortop.3381      
.brk.3381:
    movs r0, #0
    str r0, [sp, locals@1]
.ret.3329:
    @stackempty locals
    movs r0, #0
.final_0_3:
    add sp, #4*3 ; pop locals 3
RBTFT20_send__P3329_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function RB-TFT20.ts(365,6): RBTFT20.turnOff
    ;
    .object RBTFT20_turnOff__P2997 "RB-TFT20.ts(365,6): RBTFT20.turnOff"
RBTFT20_turnOff__P2997_pre:
    .section code
    .balign 4
    .section code
RBTFT20_turnOff__P2997:
RBTFT20_turnOff__P2997_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
RBTFT20_turnOff__P2997_locals:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0} ; the one arg
    movs r0, #81
    push {r0} ; proc-arg
    bl RBTFT20_send__P3329
_proccall14:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.2997:
    @stackempty locals
    movs r0, #0
.final_0_4:
RBTFT20_turnOff__P2997_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function RB-TFT20.ts(293,7): RBTFT20.showString
    ;
    .object RBTFT20_showString__P2995 "RB-TFT20.ts(293,7): RBTFT20.showString"
RBTFT20_showString__P2995_pre:
    .section code
    .balign 4
    .section code
RBTFT20_showString__P2995:
RBTFT20_showString__P2995_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
RBTFT20_showString__P2995_locals:
    ldr r0, [sp, args@4]
    push {r0} ; proc-arg
    movs r1, #17
    bl _numops_asrs
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    movs r1, #2
    lsls r1, r1, #8
    adds r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::mod
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, args@4]
    push {r0} ; proc-arg
    movs r1, #2
    lsls r1, r1, #8
    adds r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::mod
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@1]
    @stackempty locals
    ldr r0, [sp, args@5]
    push {r0} ; proc-arg
    movs r1, #17
    bl _numops_asrs
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    movs r1, #2
    lsls r1, r1, #8
    adds r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::mod
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@2]
    @stackempty locals
    ldr r0, [sp, args@5]
    push {r0} ; proc-arg
    movs r1, #2
    lsls r1, r1, #8
    adds r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::mod
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@3]
    @stackempty locals
    ldr r0, [sp, args@3]
    str r0, [sp, locals@4]
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@5]
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@6]
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@7]
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@8]
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@9]
    @stackempty locals
.fortop.3421:
    ldr r0, [sp, locals@9]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    bl _conv_1
    mov r7, sp
    str r7, [r6, #4]
    bl String_::length
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _cmp_lt
    add sp, #4*2 ; pop locals 2
    bne .jmpz15
    b .brk.3421      
.jmpz15:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@9]
    push {r0} ; proc-arg
    bl _conv_2
    mov r7, sp
    str r7, [r6, #4]
    bl String_::charCodeAt
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@8]
    @stackempty locals
    ldr r0, [sp, locals@8]
    movs r1, #41
    bl _cmp_lt
    beq .else_0_5      
.jmpz16:
    ldr r7, [r6, #0]
    ldr r0, [r7, #12]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@8]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _pxt_array_get
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@7]
    @stackempty locals
    b .afterif_1_5      
.else_0_5:
    ldr r0, [sp, locals@8]
    movs r1, #81
    bl _cmp_lt
    beq .else_2_5      
.jmpz17:
    ldr r7, [r6, #0]
    ldr r0, [r7, #16]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@8]
    movs r1, #41
    bl _numops_subs
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _pxt_array_get
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@7]
    @stackempty locals
    b .afterif_3_5      
.else_2_5:
    ldr r0, [sp, locals@8]
    movs r1, #121
    bl _cmp_lt
    beq .else_4_5      
.jmpz18:
    ldr r7, [r6, #0]
    ldr r0, [r7, #20]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@8]
    movs r1, #81
    bl _numops_subs
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _pxt_array_get
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@7]
    @stackempty locals
    b .afterif_5_5      
.else_4_5:
    ldr r0, [sp, locals@8]
    movs r1, #161
    bl _cmp_lt
    beq .else_6_5      
.jmpz19:
    ldr r7, [r6, #0]
    ldr r0, [r7, #24]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@8]
    movs r1, #121
    bl _numops_subs
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _pxt_array_get
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@7]
    @stackempty locals
    b .afterif_7_5      
.else_6_5:
    ldr r0, [sp, locals@8]
    movs r1, #201
    bl _cmp_lt
    beq .else_8_5      
.jmpz20:
    ldr r7, [r6, #0]
    ldr r0, [r7, #28]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@8]
    movs r1, #161
    bl _numops_subs
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _pxt_array_get
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@7]
    @stackempty locals
    b .afterif_9_5      
.else_8_5:
    ldr r0, [sp, locals@8]
    movs r1, #241
    bl _cmp_lt
    beq .else_10_5      
.jmpz21:
    ldr r7, [r6, #0]
    ldr r0, [r7, #32]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@8]
    movs r1, #201
    bl _numops_subs
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _pxt_array_get
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@7]
    @stackempty locals
    b .afterif_11_5      
.else_10_5:
    ldr r0, [sp, locals@8]
    movs r1, #1
    lsls r1, r1, #8
    adds r1, #25
    bl _cmp_lt
    beq .else_12_5      
.jmpz22:
    ldr r7, [r6, #0]
    ldr r0, [r7, #36]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@8]
    movs r1, #241
    bl _numops_subs
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _pxt_array_get
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@7]
    @stackempty locals
.else_12_5:
.afterif_13_5:
.afterif_11_5:
.afterif_9_5:
.afterif_7_5:
.afterif_5_5:
.afterif_3_5:
.afterif_1_5:
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@9]
    push {r0} ; proc-arg
    movs r1, #11
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@4]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _numops_adds
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@9]
    push {r0} ; proc-arg
    movs r1, #11
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@4]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _numops_adds
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r0, [sp, locals@4]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    movs r0, #11
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _numops_adds
    add sp, #4*2 ; pop locals 2
    movs r1, #3
    bl _numops_subs
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@4]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    movs r0, #11
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _numops_adds
    add sp, #4*2 ; pop locals 2
    movs r1, #3
    bl _numops_subs
    push {r0} ; proc-arg
    pop {r1, r2, r3, r4}
    push {r1}
    push {r2}
    push {r3}
    push {r4}
    bl RBTFT20_setWindow__P3330
_proccall23:
    add sp, #4*4 ; pop locals 4
    @stackempty locals
    bl RBTFT20_enterDataMode__P3331
_proccall24:
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@10]
    @stackempty locals
.fortop.3491:
    ldr r0, [sp, locals@10]
    movs r1, #11
    bl _cmp_lt
    bne .jmpz25
    b .brk.3491      
.jmpz25:
    movs r0, #1
    str r0, [sp, locals@11]
    @stackempty locals
.fortop.3494:
    ldr r0, [sp, locals@11]
    ldr r1, [sp, locals@4]
    bl _cmp_lt
    beq .brk.3494      
.jmpz26:
    movs r0, #1
    str r0, [sp, locals@12]
    @stackempty locals
.fortop.3498:
    ldr r0, [sp, locals@12]
    movs r1, #11
    bl _cmp_lt
    beq .brk.3498      
.jmpz27:
    ldr r0, [sp, locals@10]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@12]
    push {r0} ; proc-arg
    movs r1, #11
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _numops_adds
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@5]
    @stackempty locals
    ldr r0, [sp, locals@7]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@5]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    movs r0, #3
    bl _numops_lsls
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _numops_ands
    add sp, #4*2 ; pop locals 2
    str r0, [sp, locals@6]
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@13]
    @stackempty locals
.fortop.3512:
    ldr r0, [sp, locals@13]
    ldr r1, [sp, locals@4]
    bl _cmp_lt
    beq .brk.3512      
.jmpz28:
    ldr r0, [sp, locals@6]
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toBoolDecr
    cmp r0, #0
    beq .else_14_5      
.jmpz29:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_0
    mov r7, sp
    str r7, [r6, #4]
    bl pins::spiWrite
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    @stackempty locals
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    bl _conv_0
    mov r7, sp
    str r7, [r6, #4]
    bl pins::spiWrite
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    @stackempty locals
    b .afterif_15_5      
.else_14_5:
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
    bl _conv_0
    mov r7, sp
    str r7, [r6, #4]
    bl pins::spiWrite
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    @stackempty locals
    ldr r0, [sp, locals@3]
    push {r0} ; proc-arg
    bl _conv_0
    mov r7, sp
    str r7, [r6, #4]
    bl pins::spiWrite
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    @stackempty locals
.afterif_15_5:
.cont.3512:
    ldr r0, [sp, locals@13]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@13]
    @stackempty locals
    b .fortop.3512      
.brk.3512:
.cont.3498:
    ldr r0, [sp, locals@12]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@12]
    @stackempty locals
    b .fortop.3498      
.brk.3498:
.cont.3494:
    ldr r0, [sp, locals@11]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@11]
    @stackempty locals
    b .fortop.3494      
.brk.3494:
.cont.3491:
    ldr r0, [sp, locals@10]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@10]
    @stackempty locals
    b .fortop.3491      
.brk.3491:
    bl RBTFT20_exitDataMode__P3332
_proccall30:
    @stackempty locals
.cont.3421:
    ldr r0, [sp, locals@9]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@9]
    @stackempty locals
    b .fortop.3421      
.brk.3421:
.ret.2995:
    @stackempty locals
    movs r0, #0
.final_16_5:
    add sp, #4*14 ; pop locals 14
RBTFT20_showString__P2995_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function RB-TFT20.ts(152,6): RBTFT20.exitDataMode
    ;
    .object RBTFT20_exitDataMode__P3332 "RB-TFT20.ts(152,6): RBTFT20.exitDataMode"
RBTFT20_exitDataMode__P3332_pre:
    .section code
    .balign 4
    .section code
RBTFT20_exitDataMode__P3332:
RBTFT20_exitDataMode__P3332_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
RBTFT20_exitDataMode__P3332_locals:
    movs r0, #114
    movs r1, #0
    mov r7, sp
    str r7, [r6, #4]
    bl pins::digitalWritePin
    @stackempty locals
.ret.3332:
    @stackempty locals
    movs r0, #0
.final_0_6:
RBTFT20_exitDataMode__P3332_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function RB-TFT20.ts(139,6): RBTFT20.enterDataMode
    ;
    .object RBTFT20_enterDataMode__P3331 "RB-TFT20.ts(139,6): RBTFT20.enterDataMode"
RBTFT20_enterDataMode__P3331_pre:
    .section code
    .balign 4
    .section code
RBTFT20_enterDataMode__P3331:
RBTFT20_enterDataMode__P3331_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
RBTFT20_enterDataMode__P3331_locals:
    movs r0, #114
    movs r1, #0
    mov r7, sp
    str r7, [r6, #4]
    bl pins::digitalWritePin
    @stackempty locals
    movs r0, #44
    mov r7, sp
    str r7, [r6, #4]
    bl pins::spiWrite
    bl _numops_fromInt
    @stackempty locals
    movs r0, #114
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl pins::digitalWritePin
    @stackempty locals
.ret.3331:
    @stackempty locals
    movs r0, #0
.final_0_7:
RBTFT20_enterDataMode__P3331_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function RB-TFT20.ts(131,6): RBTFT20.setWindow
    ;
    .object RBTFT20_setWindow__P3330 "RB-TFT20.ts(131,6): RBTFT20.setWindow"
RBTFT20_setWindow__P3330_pre:
    .section code
    .balign 4
    .section code
RBTFT20_setWindow__P3330:
RBTFT20_setWindow__P3330_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
RBTFT20_setWindow__P3330_locals:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #0]      
    movs r0, #85
    push {r0} ; proc-arg
    bl RBTFT20_send__P3329
_proccall31:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #4*0] ; tmpref @1
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, args@3]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #0]      
    movs r0, #87
    push {r0} ; proc-arg
    bl RBTFT20_send__P3329
_proccall32:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.3330:
    @stackempty locals
    movs r0, #0
.final_0_8:
RBTFT20_setWindow__P3330_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function RB-TFT20.ts(272,6): RBTFT20.drawCircle
    ;
    .object RBTFT20_drawCircle__P2994 "RB-TFT20.ts(272,6): RBTFT20.drawCircle"
RBTFT20_drawCircle__P2994_pre:
    .section code
    .balign 4
    .section code
RBTFT20_drawCircle__P2994:
RBTFT20_drawCircle__P2994_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
RBTFT20_drawCircle__P2994_locals:
    movs r0, #1
    ldr r1, [sp, args@2]
    bl _numops_subs
    str r0, [sp, locals@0]
    @stackempty locals
.fortop.3582:
    ldr r0, [sp, locals@0]
    movs r1, #1
    bl _cmp_le
    bne .jmpz33
    b .brk.3582      
.jmpz33:
    movs r0, #1
    ldr r1, [sp, args@2]
    bl _numops_subs
    str r0, [sp, locals@1]
    @stackempty locals
.fortop.3587:
    ldr r0, [sp, locals@1]
    movs r1, #1
    bl _cmp_le
    bne .jmpz34
    b .brk.3587      
.jmpz34:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _numops_adds
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::muls
    add sp, #4*2 ; pop locals 2
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _cmp_le
    add sp, #4*2 ; pop locals 2
    beq .else_0_9      
.jmpz35:
    ldr r0, [sp, args@0]
    ldr r1, [sp, locals@1]
    bl _numops_adds
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    ldr r1, [sp, locals@0]
    bl _numops_adds
    push {r0} ; proc-arg
    pop {r1, r2}
    ldr r0, [sp, args@3]
    push {r0} ; proc-arg
    push {r1}
    push {r2}
    bl RBTFT20_drawPixel__P2991
_proccall36:
    add sp, #4*3 ; pop locals 3
    @stackempty locals
    ldr r0, [sp, args@0]
    ldr r1, [sp, locals@1]
    bl _numops_adds
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    ldr r1, [sp, locals@0]
    bl _numops_subs
    push {r0} ; proc-arg
    pop {r1, r2}
    ldr r0, [sp, args@3]
    push {r0} ; proc-arg
    push {r1}
    push {r2}
    bl RBTFT20_drawPixel__P2991
_proccall37:
    add sp, #4*3 ; pop locals 3
    @stackempty locals
    ldr r0, [sp, args@0]
    ldr r1, [sp, locals@1]
    bl _numops_subs
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    ldr r1, [sp, locals@0]
    bl _numops_adds
    push {r0} ; proc-arg
    pop {r1, r2}
    ldr r0, [sp, args@3]
    push {r0} ; proc-arg
    push {r1}
    push {r2}
    bl RBTFT20_drawPixel__P2991
_proccall38:
    add sp, #4*3 ; pop locals 3
    @stackempty locals
    ldr r0, [sp, args@0]
    ldr r1, [sp, locals@1]
    bl _numops_subs
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    ldr r1, [sp, locals@0]
    bl _numops_subs
    push {r0} ; proc-arg
    pop {r1, r2}
    ldr r0, [sp, args@3]
    push {r0} ; proc-arg
    push {r1}
    push {r2}
    bl RBTFT20_drawPixel__P2991
_proccall39:
    add sp, #4*3 ; pop locals 3
    @stackempty locals
.else_0_9:
.afterif_1_9:
.cont.3587:
    ldr r0, [sp, locals@1]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@1]
    @stackempty locals
    b .fortop.3587      
.brk.3587:
.cont.3582:
    ldr r0, [sp, locals@0]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@0]
    @stackempty locals
    b .fortop.3582      
.brk.3582:
.ret.2994:
    @stackempty locals
    movs r0, #0
.final_2_9:
    add sp, #4*2 ; pop locals 2
RBTFT20_drawCircle__P2994_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function RB-TFT20.ts(245,6): RBTFT20.drawRectangle
    ;
    .object RBTFT20_drawRectangle__P2993 "RB-TFT20.ts(245,6): RBTFT20.drawRectangle"
RBTFT20_drawRectangle__P2993_pre:
    .section code
    .balign 4
    .section code
RBTFT20_drawRectangle__P2993:
RBTFT20_drawRectangle__P2993_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
RBTFT20_drawRectangle__P2993_locals:
    ldr r0, [sp, args@4]
    push {r0} ; proc-arg
    movs r1, #17
    bl _numops_asrs
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    movs r1, #2
    lsls r1, r1, #8
    adds r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::mod
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, args@4]
    push {r0} ; proc-arg
    movs r1, #2
    lsls r1, r1, #8
    adds r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl numops::mod
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@1]
    @stackempty locals
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    ldr r1, [sp, args@2]
    bl _numops_adds
    movs r1, #3
    bl _numops_subs
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    ldr r1, [sp, args@3]
    bl _numops_adds
    movs r1, #3
    bl _numops_subs
    push {r0} ; proc-arg
    pop {r1, r2, r3, r4}
    push {r1}
    push {r2}
    push {r3}
    push {r4}
    bl RBTFT20_setWindow__P3330
_proccall40:
    add sp, #4*4 ; pop locals 4
    @stackempty locals
    bl RBTFT20_enterDataMode__P3331
_proccall41:
    @stackempty locals
    ldr r0, [sp, args@3]
    str r0, [sp, locals@2]
    @stackempty locals
.fortop.3662:
    ldr r0, [sp, locals@2]
    movs r1, #1
    bl _cmp_gt
    beq .brk.3662      
.jmpz42:
    ldr r0, [sp, args@2]
    str r0, [sp, locals@3]
    @stackempty locals
.fortop.3666:
    ldr r0, [sp, locals@3]
    movs r1, #1
    bl _cmp_gt
    beq .brk.3666      
.jmpz43:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl _conv_0
    mov r7, sp
    str r7, [r6, #4]
    bl pins::spiWrite
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    @stackempty locals
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    bl _conv_0
    mov r7, sp
    str r7, [r6, #4]
    bl pins::spiWrite
    add sp, #4*1 ; pop locals 1
    bl _numops_fromInt
    @stackempty locals
.cont.3666:
    ldr r0, [sp, locals@3]
    movs r1, #3
    bl _numops_subs
    str r0, [sp, locals@3]
    @stackempty locals
    b .fortop.3666      
.brk.3666:
.cont.3662:
    ldr r0, [sp, locals@2]
    movs r1, #3
    bl _numops_subs
    str r0, [sp, locals@2]
    @stackempty locals
    b .fortop.3662      
.brk.3662:
    bl RBTFT20_exitDataMode__P3332
_proccall44:
    @stackempty locals
.ret.2993:
    @stackempty locals
    movs r0, #0
.final_0_10:
    add sp, #4*4 ; pop locals 4
RBTFT20_drawRectangle__P2993_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function RB-TFT20.ts(208,6): RBTFT20.drawLine
    ;
    .object RBTFT20_drawLine__P2992 "RB-TFT20.ts(208,6): RBTFT20.drawLine"
RBTFT20_drawLine__P2992_pre:
    .section code
    .balign 4
    .section code
RBTFT20_drawLine__P2992:
RBTFT20_drawLine__P2992_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    movs r0, #0
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    push {r0} ;loc
    @stackmark locals
RBTFT20_drawLine__P2992_locals:
    ldr r0, [sp, args@2]
    ldr r1, [sp, args@0]
    bl _numops_subs
    str r0, [sp, locals@0]
    @stackempty locals
    ldr r0, [sp, args@3]
    ldr r1, [sp, args@1]
    bl _numops_subs
    str r0, [sp, locals@1]
    @stackempty locals
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    bl Math_abs__P2157
_proccall46:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl Math_abs__P2157
_proccall47:
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    bl _cmp_gt
    add sp, #4*2 ; pop locals 2
    beq .else_0_11      
.jmpz45:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    bl Math_abs__P2157
_proccall48:
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@2]
    @stackempty locals
    ldr r0, [sp, locals@0]
    movs r1, #1
    bl _cmp_eq
    beq .condexprz_1_11      
.jmpz49:
    movs r0, #1
    b .condexprfin_2_11      
.condexprz_1_11:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@2]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::div
    add sp, #4*2 ; pop locals 2
.condexprfin_2_11:
; jmp value (already in r0)
    str r0, [sp, locals@3]
    @stackempty locals
    ldr r0, [sp, locals@1]
    movs r1, #1
    bl _cmp_gt
    beq .condexprz_3_11      
.jmpz50:
    movs r0, #3
    b .condexprfin_4_11      
.condexprz_3_11:
    movs r0, #1
    negs r0, r0
.condexprfin_4_11:
; jmp value (already in r0)
    str r0, [sp, locals@4]
    @stackempty locals
    ldr r0, [sp, args@0]
    str r0, [sp, locals@5]
    @stackempty locals
    ldr r0, [sp, args@1]
    str r0, [sp, locals@6]
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@7]
    @stackempty locals
.fortop.3713:
    ldr r0, [sp, locals@7]
    ldr r1, [sp, locals@2]
    bl _cmp_le
    beq .brk.3713      
.jmpz51:
    ldr r0, [sp, args@4]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@6]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@5]
    push {r0} ; proc-arg
    bl RBTFT20_drawPixel__P2991
_proccall52:
    add sp, #4*3 ; pop locals 3
    @stackempty locals
.cont.3713:
    ldr r0, [sp, locals@7]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@7]
    @stackempty locals
    b .fortop.3713      
.brk.3713:
    b .afterif_5_11      
.else_0_11:
    ldr r0, [sp, locals@0]
    push {r0} ; proc-arg
    bl Math_abs__P2157
_proccall53:
    add sp, #4*1 ; pop locals 1
    str r0, [sp, locals@8]
    @stackempty locals
    ldr r0, [sp, locals@1]
    movs r1, #1
    bl _cmp_eq
    beq .condexprz_6_11      
.jmpz54:
    movs r0, #1
    b .condexprfin_7_11      
.condexprz_6_11:
    ldr r0, [sp, locals@1]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@8]
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl numops::div
    add sp, #4*2 ; pop locals 2
.condexprfin_7_11:
; jmp value (already in r0)
    str r0, [sp, locals@9]
    @stackempty locals
    ldr r0, [sp, locals@0]
    movs r1, #1
    bl _cmp_gt
    beq .condexprz_8_11      
.jmpz55:
    movs r0, #3
    b .condexprfin_9_11      
.condexprz_8_11:
    movs r0, #1
    negs r0, r0
.condexprfin_9_11:
; jmp value (already in r0)
    str r0, [sp, locals@10]
    @stackempty locals
    ldr r0, [sp, args@1]
    str r0, [sp, locals@11]
    @stackempty locals
    ldr r0, [sp, args@0]
    str r0, [sp, locals@12]
    @stackempty locals
    movs r0, #1
    str r0, [sp, locals@13]
    @stackempty locals
.fortop.3739:
    ldr r0, [sp, locals@13]
    ldr r1, [sp, locals@8]
    bl _cmp_le
    beq .brk.3739      
.jmpz56:
    ldr r0, [sp, args@4]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@11]
    push {r0} ; proc-arg
    ldr r0, [sp, locals@12]
    push {r0} ; proc-arg
    bl RBTFT20_drawPixel__P2991
_proccall57:
    add sp, #4*3 ; pop locals 3
    @stackempty locals
    ldr r0, [sp, locals@11]
    ldr r1, [sp, locals@9]
    bl _numops_adds
    str r0, [sp, locals@11]
    @stackempty locals
    ldr r0, [sp, locals@12]
    ldr r1, [sp, locals@10]
    bl _numops_adds
    str r0, [sp, locals@12]
    @stackempty locals
.cont.3739:
    ldr r0, [sp, locals@13]
    movs r1, #3
    bl _numops_adds
    str r0, [sp, locals@13]
    @stackempty locals
    b .fortop.3739      
.brk.3739:
.afterif_5_11:
.ret.2992:
    @stackempty locals
    movs r0, #0
.final_10_11:
    add sp, #4*14 ; pop locals 14
RBTFT20_drawLine__P2992_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function core/pxt-helpers.ts(540,5): Math.abs
    ;
    .object Math_abs__P2157 "core/pxt-helpers.ts(540,5): Math.abs"
Math_abs__P2157_pre:
    .section code
    .balign 4
    .section code
Math_abs__P2157:
Math_abs__P2157_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
Math_abs__P2157_locals:
    ldr r0, [sp, args@0]
    movs r1, #1
    bl _cmp_lt
    beq .condexprz_0_12      
.jmpz58:
    movs r0, #1
    ldr r1, [sp, args@0]
    bl _numops_subs
    b .condexprfin_1_12      
.condexprz_0_12:
    ldr r0, [sp, args@0]
.condexprfin_1_12:
; jmp value (already in r0)
.ret.2157:
    @stackempty locals
.final_2_12:
Math_abs__P2157_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function RB-TFT20.ts(194,6): RBTFT20.drawPixel
    ;
    .object RBTFT20_drawPixel__P2991 "RB-TFT20.ts(194,6): RBTFT20.drawPixel"
RBTFT20_drawPixel__P2991_pre:
    .section code
    .balign 4
    .section code
RBTFT20_drawPixel__P2991:
RBTFT20_drawPixel__P2991_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
RBTFT20_drawPixel__P2991_locals:
    ldr r0, [sp, args@0]
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    push {r0} ; proc-arg
    ldr r0, [sp, args@0]
    movs r1, #3
    bl _numops_adds
    push {r0} ; proc-arg
    ldr r0, [sp, args@1]
    movs r1, #3
    bl _numops_adds
    push {r0} ; proc-arg
    pop {r1, r2, r3, r4}
    push {r1}
    push {r2}
    push {r3}
    push {r4}
    bl RBTFT20_setWindow__P3330
_proccall59:
    add sp, #4*4 ; pop locals 4
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    push {r0} ; proc-arg
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    movs r1, #17
    bl _numops_asrs
    add sp, #4*1 ; pop locals 1
    push {r0} ; proc-arg
    ldr r0, [sp, #4*1] ; estack
    ldr r1, [sp, #4*0] ; estack
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*2 ; pop locals 2
    ldr r0, [sp, args@2]
    push {r0} ; proc-arg
    ldr r1, [sp, #4*0] ; estack
    ldr r0, [sp, #4*1] ; tmpref @1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #0]      
    movs r0, #89
    push {r0} ; proc-arg
    bl RBTFT20_send__P3329
_proccall60:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.2991:
    @stackempty locals
    movs r0, #0
.final_0_13:
RBTFT20_drawPixel__P2991_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function RB-TFT20.ts(359,6): RBTFT20.clearScreen
    ;
    .object RBTFT20_clearScreen__P2996 "RB-TFT20.ts(359,6): RBTFT20.clearScreen"
RBTFT20_clearScreen__P2996_pre:
    .section code
    .balign 4
    .section code
RBTFT20_clearScreen__P2996:
RBTFT20_clearScreen__P2996_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
RBTFT20_clearScreen__P2996_locals:
    movs r0, #1
    push {r0} ; proc-arg
    ldr r7, [r6, #0]
    ldr r0, [r7, #44]
    push {r0} ; proc-arg
    ldr r7, [r6, #0]
    ldr r0, [r7, #40]
    push {r0} ; proc-arg
    movs r0, #1
    push {r0} ; proc-arg
    movs r0, #1
    push {r0} ; proc-arg
    bl RBTFT20_drawRectangle__P2993
_proccall61:
    add sp, #4*5 ; pop locals 5
    @stackempty locals
.ret.2996:
    @stackempty locals
    movs r0, #0
.final_0_14:
RBTFT20_clearScreen__P2996_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    ;
; Function RB-TFT20.ts(162,6): RBTFT20.init
    ;
    .object RBTFT20_init__P2990 "RB-TFT20.ts(162,6): RBTFT20.init"
RBTFT20_init__P2990_pre:
    .section code
    .balign 4
    .section code
RBTFT20_init__P2990:
RBTFT20_init__P2990_nochk:
    @stackmark func
    @stackmark args
    push {lr}
.locals:
    @stackmark locals
RBTFT20_init__P2990_locals:
    movs r0, #115
    movs r1, #105
    movs r2, #113
    mov r7, sp
    str r7, [r6, #4]
    bl pins::spiPins
    @stackempty locals
    ldr r0, _ldlit_91 ; 1000000      
    mov r7, sp
    str r7, [r6, #4]
    bl pins::spiFrequency
    @stackempty locals
    movs r0, #114
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl pins::digitalWritePin
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0} ; the one arg
    movs r0, #3
    push {r0} ; proc-arg
    bl RBTFT20_send__P3329
_proccall62:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #150
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0} ; the one arg
    movs r0, #35
    push {r0} ; proc-arg
    bl RBTFT20_send__P3329
_proccall63:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    movs r0, #150
    mov r7, sp
    str r7, [r6, #4]
    bl basic::pause
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    movs r1, #11
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #0]      
    movs r0, #117
    push {r0} ; proc-arg
    bl RBTFT20_send__P3329
_proccall64:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0}; tmpstore @1
    movs r1, #1
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::push
    ldr r0, [sp, #4*0] ; tmpref @1
    push {r0} ; proc-arg
    add sp, #4*1 ; pop locals 1
    ldr r0, [sp, #0]      
    movs r0, #109
    push {r0} ; proc-arg
    bl RBTFT20_send__P3329
_proccall65:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::mk
    push {r0} ; the one arg
    movs r0, #83
    push {r0} ; proc-arg
    bl RBTFT20_send__P3329
_proccall66:
    add sp, #4*2 ; pop locals 2
    @stackempty locals
.ret.2990:
    @stackempty locals
    movs r0, #0
.final_0_15:
RBTFT20_init__P2990_end:
    pop {pc}
    @stackempty func
    @stackempty args
; endfun
    .object _pxt_helper_trampoline "helper: trampoline"
    .section code
_pxt_lambda_trampoline:
    push { r4, r5, r6, r7, lr}
    mov r4, r8
    mov r5, r9
    mov r6, r10
    mov r7, r11
    push {r4, r5, r6, r7} ; save high registers
    mov r4, r1
    mov r5, r2
    mov r6, r3
    mov r7, r0
    bl _inst_builtin4_validate_3
    mov r0, sp
    push {r4, r5, r6, r7} ; push args and the lambda
    mov r1, sp
    bl pxt::pushThreadContext
    mov r6, r0          ; save ctx or globals
    mov r5, r7          ; save lambda for closure
    mov r0, r5          ; also save lambda pointer in r0 - needed by pxt::bindMethod
    ldr r1, [r5, #8]    ; ld fnptr
    movs r4, #3         ; 3 args
    blx r1              ; execute the actual lambda
    mov r7, r0          ; save result
    @dummystack 4
    add sp, #4*4        ; remove arguments and lambda
    mov r0, r6   ; or pop the thread context
    bl pxt::popThreadContext
    mov r0, r7 ; restore result
    pop {r4, r5, r6, r7} ; restore high registers
    mov r8, r4
    mov r9, r5
    mov r10, r6
    mov r11, r7
    pop { r4, r5, r6, r7, pc}
    .object _pxt_helper_exn "helper: exn"
    .section code
; r0 - try frame
; r1 - handler PC
_pxt_save_exception_state:
    push {r0, lr}
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::beginTry
    pop {r1, r4}
    str r1, [r0, #1*4] ; PC
    mov r1, sp
    str r1, [r0, #2*4] ; SP
    str r5, [r0, #3*4] ; lambda ptr
    bx r4
    .section code
; r0 - try frame
; r1 - thread context
_pxt_restore_exception_state:
    mov r6, r1
    ldr r1, [r0, #2*4] ; SP
    mov sp, r1
    ldr r5, [r0, #3*4] ; lambda ptr
    ldr r1, [r0, #1*4] ; PC
    movs r0, #1
    orrs r1, r0
    bx r1
    .object _pxt_helper_stringconv "helper: stringconv"
    .section code
_pxt_stringConv:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #1
    bne .notstring
    bx lr
.notstring:
    ldr r7, [r3, #4*8]
    cmp r7, #0
    beq .fail
    push {r0, lr}
    movs r4, #1
    blx r7
    str r0, [sp, #0]
    b .numops
.fail:
    push {r0, lr}
.numops:
    mov r7, sp
    str r7, [r6, #4]
    bl numops::toString
    pop {r1, pc}      
    .object _pxt_helper_get_buffer "helper: get buffer"
    .section code
_pxt_buffer_get:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #3
    bne .fail
    asrs r1, r1, #1
    bcc .notint
    ldr r4, [r0, #4]
    cmp r1, r4
    bhs .oob
    adds r4, r0, r1
    ldrb r0, [r4, #8]
    lsls r0, r0, #1
    adds r0, #1
    bx lr
.notint:
    lsls r1, r1, #1
    push {lr, r0, r2}      
    mov r0, r1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::toInt
    mov r1, r0
    pop {r0, r2}
.doop:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::getAt
    lsls r0, r0, #1
    adds r0, #1
    pop {pc}
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.oob:
    movs r0, #1 ; 0 or undefined
    bx lr
    .object _pxt_helper_get_array "helper: get array"
    .section code
_pxt_array_get:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #6
    bne .fail
    asrs r1, r1, #1
    bcc .notint
    ldrh r4, [r0, #8]
    cmp r1, r4
    bhs .oob
    lsls r1, r1, #2
    ldr r4, [r0, #4]
    ldr r0, [r4, r1]
    bx lr
.notint:
    lsls r1, r1, #1
    push {lr, r0, r2}      
    mov r0, r1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::toInt
    mov r1, r0
    pop {r0, r2}
.doop:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::getAt
    pop {pc}
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.oob:
    movs r0, #0 ; 0 or undefined
    bx lr
    .object _pxt_helper_set_buffer "helper: set buffer"
    .section code
_pxt_buffer_set:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #3
    bne .fail
    asrs r1, r1, #1
    bcc .notint
    ldr r4, [r0, #4]
    cmp r1, r4
    bhs .oob
    adds r4, r0, r1
    strb r2, [r4, #8]
    bx lr
.notint:
    lsls r1, r1, #1
    push {lr, r0, r2}      
    mov r0, r1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::toInt
    mov r1, r0
    pop {r0, r2}
.doop:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::setAt
    pop {pc}
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.oob:
    push {lr}
    b .doop
    .object _pxt_helper_set_array "helper: set array"
    .section code
_pxt_array_set:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #6
    bne .fail
    asrs r1, r1, #1
    bcc .notint
    ldrh r4, [r0, #8]
    cmp r1, r4
    bhs .oob
    lsls r1, r1, #2
    ldr r4, [r0, #4]
    str r2, [r4, r1]
    bx lr
.notint:
    lsls r1, r1, #1
    push {lr, r0, r2}      
    mov r0, r1
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::toInt
    mov r1, r0
    pop {r0, r2}
.doop:
    mov r7, sp
    str r7, [r6, #4]
    bl Array_::setAt
    pop {pc}
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.oob:
    push {lr}
    b .doop
    .object _pxt_helper_get "helper: get"
    .section code
_pxt_map_get:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #8
    bne .notmap
    push {lr}
    mov r7, sp
    str r7, [r6, #4]
    bl pxtrt::mapGetByString
    pop {pc}
.notmap:
    mov r4, r3 ; save VT
    push {r0, lr}
    mov r0, r1
    bl pxtrt::lookupMapKey
    mov r1, r0 ; put key index in r1
    ldr r0, [sp, #0] ; restore obj pointer
    mov r3, r4 ; restore vt
    bl .dowork
    add sp, #4*1 ; pop locals 1
    pop {pc}
.dowork:
    ldr r2, [r3, #12] ; load mult
    movs r7, r2
    beq .objlit ; built-in types have mult=0
    muls r7, r1
    lsrs r7, r2
    lsls r7, r7, #1 ; r7 - hash offset
    ldr r3, [r3, #4] ; iface table
    adds r3, r3, r7
; r0-this, r1-method idx, r2-free, r3-hash entry, r4-num args, r7-free
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    movs r0, #0 ; undefined
    bx lr
.hit:
    adds r3, r3, r2 ; r3-descriptor
    ldr r2, [r3, #4]
    lsls r7, r2, #31
    beq .field
; check if it's getter
    ldrh r7, [r3, #2]
    cmp r7, #1
    bne .bind
    movs r4, #1
    bx r2
.bind:
    mov r4, lr
    bl _pxt_bind_helper
.field:
    ldr r0, [r0, r2] ; load field
    bx lr
.objlit:
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.fail2:
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::missingProperty
    .object _pxt_helper_set "helper: set"
    .section code
_pxt_map_set:
    lsls r4, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r4, [r3, #8]
    cmp r4, #8
    bne .notmap
    push {lr}
    mov r7, sp
    str r7, [r6, #4]
    bl pxtrt::mapSetByString
    pop {pc}
.notmap:
    mov r4, r3 ; save VT
    push {r0, r2, lr}
    mov r0, r1
    bl pxtrt::lookupMapKey
    mov r1, r0 ; put key index in r1
    ldr r0, [sp, #0] ; restore obj pointer
    mov r3, r4 ; restore vt
    bl .dowork
    add sp, #4*2 ; pop locals 2
    pop {pc}
.object PUSH
.balign 4
_ldlit_91:
 .word 1000000
.object POP
.dowork:
    ldr r2, [r3, #12] ; load mult
    movs r7, r2
    beq .objlit ; built-in types have mult=0
    muls r7, r1
    lsrs r7, r2
    lsls r7, r7, #1 ; r7 - hash offset
    ldr r3, [r3, #4] ; iface table
    adds r3, r3, r7
; r0-this, r1-method idx, r2-free, r3-hash entry, r4-num args, r7-free
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    beq .hit
    adds r3, #2
    ldrh r2, [r3, #0] ; r2-offset of descriptor
    ldrh r7, [r2, r3] ; r7-method idx
    cmp r7, r1
    bne .fail2      
.hit:
    adds r3, r3, r2 ; r3-descriptor
    ldr r2, [r3, #4]
    lsls r7, r2, #31
    beq .field
; check for next descriptor
    ldrh r7, [r3, #8]
    cmp r7, r1
    bne .fail2 ; no setter!
    ldr r2, [r3, #12]
    movs r4, #2
    bx r2
.field:
    ldr r3, [sp, #4] ; ld-val
    str r3, [r0, r2] ; store field
    bx lr
.objlit:
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
.fail2:
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::missingProperty
    .object _pxt_helper_bind "helper: bind"
    .section code
_pxt_bind_helper:
    push {r0, r2}
    movs r0, #2
    ldr r1, _ldlit_93 ; _pxt_bind_lit      
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::mkAction
    pop {r1, r2}
    str r1, [r0, #12]
    str r2, [r0, #16]
    bx r4 ; return
_pxt_bind_lit:
    .word pxt::RefAction_vtable
    .short 0, 0 ; no captured vars
    .word .bindCode@fn
.bindCode:
; r0-bind object, r4-#args
    cmp r4, #12
    bge .fail
    lsls r3, r4, #2
    ldr r2, _ldlit_94 ; _pxt_copy_list      
    ldr r1, [r2, r3]
    ldr r3, [r0, #12]
    ldr r2, [r0, #16]
    adds r4, r4, #1
    bx r1
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
_pxt_copy_list:
    .word _pxt_bind_0@fn
    .word _pxt_bind_1@fn
    .word _pxt_bind_2@fn
    .word _pxt_bind_3@fn
    .word _pxt_bind_4@fn
    .word _pxt_bind_5@fn
    .word _pxt_bind_6@fn
    .word _pxt_bind_7@fn
    .word _pxt_bind_8@fn
    .word _pxt_bind_9@fn
    .word _pxt_bind_10@fn
    .word _pxt_bind_11@fn
_pxt_bind_0:
    sub sp, #4
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*1] ; store LR
    blx r2
    ldr r1, [sp, #4*1]
    add sp, #8
    bx r1
_pxt_bind_1:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*2] ; store LR
    blx r2
    ldr r1, [sp, #4*2]
    add sp, #8
    bx r1
_pxt_bind_2:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*3] ; store LR
    blx r2
    ldr r1, [sp, #4*3]
    add sp, #8
    bx r1
_pxt_bind_3:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*4] ; store LR
    blx r2
    ldr r1, [sp, #4*4]
    add sp, #8
    bx r1
_pxt_bind_4:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*5] ; store LR
    blx r2
    ldr r1, [sp, #4*5]
    add sp, #8
    bx r1
_pxt_bind_5:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*6] ; store LR
    blx r2
    ldr r1, [sp, #4*6]
    add sp, #8
    bx r1
_pxt_bind_6:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*7] ; store LR
    blx r2
    ldr r1, [sp, #4*7]
    add sp, #8
    bx r1
_pxt_bind_7:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*8] ; store LR
    blx r2
    ldr r1, [sp, #4*8]
    add sp, #8
    bx r1
_pxt_bind_8:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    ldr r1, [sp, #4*8]
    str r1, [sp, #4*7]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*9] ; store LR
    blx r2
    ldr r1, [sp, #4*9]
    add sp, #8
    bx r1
_pxt_bind_9:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    ldr r1, [sp, #4*8]
    str r1, [sp, #4*7]
    ldr r1, [sp, #4*9]
    str r1, [sp, #4*8]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*10] ; store LR
    blx r2
    ldr r1, [sp, #4*10]
    add sp, #8
    bx r1
_pxt_bind_10:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    ldr r1, [sp, #4*8]
    str r1, [sp, #4*7]
    ldr r1, [sp, #4*9]
    str r1, [sp, #4*8]
    ldr r1, [sp, #4*10]
    str r1, [sp, #4*9]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*11] ; store LR
    blx r2
    ldr r1, [sp, #4*11]
    add sp, #8
    bx r1
_pxt_bind_11:
    sub sp, #4
    ldr r1, [sp, #4*1]
    str r1, [sp, #4*0]
    ldr r1, [sp, #4*2]
    str r1, [sp, #4*1]
    ldr r1, [sp, #4*3]
    str r1, [sp, #4*2]
    ldr r1, [sp, #4*4]
    str r1, [sp, #4*3]
    ldr r1, [sp, #4*5]
    str r1, [sp, #4*4]
    ldr r1, [sp, #4*6]
    str r1, [sp, #4*5]
    ldr r1, [sp, #4*7]
    str r1, [sp, #4*6]
    ldr r1, [sp, #4*8]
    str r1, [sp, #4*7]
    ldr r1, [sp, #4*9]
    str r1, [sp, #4*8]
    ldr r1, [sp, #4*10]
    str r1, [sp, #4*9]
    ldr r1, [sp, #4*11]
    str r1, [sp, #4*10]
    push {r3} ; this-ptr
    mov r1, lr
    str r1, [sp, #4*12] ; store LR
    blx r2
    ldr r1, [sp, #4*12]
    add sp, #8
    bx r1
_code_end:
    .section code
    .object _code_helper__conv_0
_conv_0:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    asrs r0, r0, #1
    bcs .isint1
    lsls r0, r0, #1
    bl _numops_toInt
.isint1:
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_1
_conv_1:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*1] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*1] ; estack
    pop {pc}
    @stackempty args
    .section code
    .object _code_helper__conv_2
_conv_2:
    @stackmark args
    push {lr}
    ldr r0, [sp, #4*2] ; estack
    bl _pxt_stringConv
    str r0, [sp, #4*2] ; estack
    push {r0}
    ldr r0, [sp, #4*2] ; estack
    asrs r0, r0, #1
    bcs .isint2
    lsls r0, r0, #1
    bl _numops_toInt
.isint2:
    mov r1, r0      
    pop {r0, pc}      
    @stackempty args
    .section code
    .object _code_helper__inst_builtin4_validate_3
_inst_builtin4_validate_3:
    lsls r2, r0, #30
    bne .fail
    cmp r0, #0
    beq .fail
    ldr r3, [r0, #0]
; vtable in R3
    ldrh r2, [r3, #8]
    cmp r2, #4
    bne .fail
    bx lr
.fail:
    mov r1, lr
    mov r7, sp
    str r7, [r6, #4]
    bl pxt::failedCast
_numops_adds:
    @scope _numops_adds
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r2, r1, #1
    adds r2, r0, r2
    bvs .boxed
    movs r0, r2
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::adds
                    add sp, #8
                    pop {pc}
_numops_subs:
    @scope _numops_subs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r2, r1, #1
    subs r2, r0, r2
    bvs .boxed
    movs r0, r2
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::subs
                    add sp, #8
                    pop {pc}
_numops_ands:
    @scope _numops_ands
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ands r0, r1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::ands
                    add sp, #8
                    pop {pc}
_numops_orrs:
    @scope _numops_orrs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    orrs r0, r1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::orrs
                    add sp, #8
                    pop {pc}
_numops_eors:
    @scope _numops_eors
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    eors r0, r1
    adds r0, r0, #1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::eors
                    add sp, #8
                    pop {pc}
_numops_lsls:
    @scope _numops_lsls
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ; r3 := (r1 >> 1) & 0x1f
    lsls r3, r1, #26
    lsrs r3, r3, #27
    asrs r2, r0, #1
    lsls r2, r3
    lsrs r3, r2, #30
    beq .ok
    cmp r3, #3
    bne .boxed
.ok:
    lsls r0, r2, #1
    adds r0, r0, #1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::lsls
                    add sp, #8
                    pop {pc}
_numops_lsrs:
    @scope _numops_lsrs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ; r3 := (r1 >> 1) & 0x1f
    lsls r3, r1, #26
    lsrs r3, r3, #27
    asrs r2, r0, #1
    lsrs r2, r3
    lsrs r3, r2, #30
    bne .boxed
    lsls r0, r2, #1
    adds r0, r0, #1
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::lsrs
                    add sp, #8
                    pop {pc}
.object PUSH
.balign 4
_ldlit_93:
 .word _pxt_bind_lit
_ldlit_94:
 .word _pxt_copy_list
.object POP
_numops_asrs:
    @scope _numops_asrs
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    ; r3 := (r1 >> 1) & 0x1f
    lsls r3, r1, #26
    lsrs r3, r3, #27
    asrs r0, r3
    movs r2, #1
    orrs r0, r2
    blx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                    bl numops::asrs
                    add sp, #8
                    pop {pc}
@scope _numops_toInt
_numops_toInt:
    asrs r0, r0, #1
    bcc .over
    blx lr
.over:
    lsls r0, r0, #1
    push {lr}
mov r7, sp
    str r7, [r6, #4]
bl pxt::toInt
pop {pc}
_numops_fromInt:
    lsls r2, r0, #1
    asrs r1, r2, #1
    cmp r0, r1
    bne .over2
    adds r0, r2, #1
    blx lr
.over2:
    push {lr}
mov r7, sp
    str r7, [r6, #4]
bl pxt::fromInt
pop {pc}
.section code
.object _pxt_helper_cmp_lt
_cmp_lt:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    blt .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::lt
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_gt
_cmp_gt:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bgt .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::gt
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_le
_cmp_le:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    ble .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::le
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_ge
_cmp_ge:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bge .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::ge
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_eq
_cmp_eq:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    beq .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::eq
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_eqq
_cmp_eqq:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    beq .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::eqq
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_neq
_cmp_neq:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bne .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::neq
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
.section code
.object _pxt_helper_cmp_neqq
_cmp_neqq:
    lsls r2, r0, #31
    beq .boxed
    lsls r2, r1, #31
    beq .boxed
    subs r0, r1
    bne .true
.false:
    movs r0, #0
    bx lr
.true:
    movs r0, #1
    bx lr
.boxed:
    push {lr, r0, r1}      
                    mov r7, sp
    str r7, [r6, #4]
                        bl numops::neqq
                        bl numops::toBoolDecr
                        cmp r0, #0
                    add sp, #8
                    pop {pc}
_helpers_end:
.balign 4
.object _pxt_iface_member_names
_pxt_iface_member_names:
    .word 1
    .word _str67  ; 0 .
    .word 0
_vtables_end:
.balign 4
.object _pxt_config_data
_pxt_config_data:
    .word 0
            .balign 4
            .object _str67
_str67:
 .word pxt::string_inline_ascii_vt
    .short 0
    .string ""
            .balign 4
            .object _str0
_str0:
 .word pxt::string_inline_ascii_vt
    .short 20
    .string "I am your RB-TFT2.0!"
            .balign 4
            .object _str1
_str1:
 .word pxt::string_inline_ascii_vt
    .short 9
    .string "RB-TFT2.0"
.balign 4
.section code
.object _perf_counters
_pxt_perf_counters:
    .word 0
_literals_end:

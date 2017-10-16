	.section .text
.LNDBG_TX:
# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 17.0.1.132 Build 20161005";
# mark_description "-S -qopt-report=5 -xMIC-AVX512 -g";
	.file "knl-ex1.c"
	.text
..TXTST0:
.L_2__routine_start_main_0:
# -- Begin  main
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl main
# --- main(int, char **)
main:
# parameter 1(argc): %edi
# parameter 2(argv): %rsi
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_main.2:
..L3:
                                                          #72.34
..LN0:
	.file   1 "knl-ex1.c"
	.loc    1  72  is_stmt 1
        pushq     %rbp                                          #72.34
	.cfi_def_cfa_offset 16
..LN1:
        movq      %rsp, %rbp                                    #72.34
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN2:
        andq      $-128, %rsp                                   #72.34
..LN3:
        subq      $256, %rsp                                    #72.34 c1
..LN4:
        movq      %rbx, 24(%rsp)                                #72.34[spill] c3
..LN5:
        movq      $0x7389d9ffe, %rsi                            #72.34 c3
..LN6:
        movq      %r15, 32(%rsp)                                #72.34[spill] c3
..LN7:
        movl      $3, %edi                                      #72.34 c3
..LN8:
        movq      %r14, 40(%rsp)                                #72.34[spill] c5
..LN9:
        movq      %r13, 48(%rsp)                                #72.34[spill] c5
..LN10:
        movq      %r12, 56(%rsp)                                #72.34[spill] c7
..LN11:
        call      __intel_new_feature_proc_init                 #72.34 c7
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x18, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x38, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x30, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x28, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x20, 0xff, 0xff, 0xff, 0x22
..LN12:
                                # LOE
..B1.157:                       # Preds ..B1.1
                                # Execution count [1.00e+00]
..LN13:
        vstmxcsr  (%rsp)                                        #72.34 c1
..LN14:
	.loc    1  78  prologue_end  is_stmt 1
        lea       16(%rsp), %rdi                                #78.3 c1
..LN15:
	.loc    1  72  is_stmt 1
        orl       $32832, (%rsp)                                #72.34 c3
..LN16:
        vldmxcsr  (%rsp)                                        #72.34 c5
..LN17:
	.loc    1  78  is_stmt 1
#       time(time_t *)
        call      time                                          #78.3 c5
..LN18:
                                # LOE
..B1.2:                         # Preds ..B1.157
                                # Execution count [1.00e+00]
..LN19:
	.loc    1  79  is_stmt 1
        lea       16(%rsp), %rdi                                #79.19 c1
..LN20:
#       localtime(const time_t *)
        call      localtime                                     #79.19 c3
..LN21:
                                # LOE rax
..B1.159:                       # Preds ..B1.2
                                # Execution count [1.00e+00]
..LN22:
	.loc    1  80  is_stmt 1
        movq      %rax, %rdi                                    #80.43 c1
..___tag_value_main.13:
..LN23:
#       asctime(const struct tm *)
        call      asctime                                       #80.43
..___tag_value_main.14:
..LN24:
                                # LOE rax
..B1.3:                         # Preds ..B1.159
                                # Execution count [1.00e+00]
..LN25:
        movl      $.L_2__STRING.0, %edi                         #80.3 c1
..LN26:
        movq      %rax, %rsi                                    #80.3 c1
..LN27:
        xorl      %eax, %eax                                    #80.3 c3
..___tag_value_main.15:
..LN28:
#       printf(const char *__restrict__, ...)
        call      printf                                        #80.3
..___tag_value_main.16:
..LN29:
                                # LOE
..B1.4:                         # Preds ..B1.3
                                # Execution count [1.00e+00]
..LN30:
	.loc    1  21  is_stmt 1
        xorl      %edi, %edi                                    #21.9 c1
..LN31:
#       time(time_t *)
        call      time                                          #21.9 c3
..LN32:
                                # LOE rax
..B1.5:                         # Preds ..B1.4
                                # Execution count [1.00e+00]
..LN33:
        movl      %eax, %edi                                    #21.3 c1
..LN34:
#       srand(unsigned int)
        call      srand                                         #21.3 c3
..LN35:
                                # LOE
..B1.6:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
..LN36:
	.loc    1  23  is_stmt 1
        movslq    SIZE(%rip), %r13                              #23.23 c1
..LN37:
        lea       (,%r13,4), %r14                               #23.30 c5 stall 1
..LN38:
        movq      %r14, %rdi                                    #23.16 c7
..LN39:
#       malloc(unsigned long long)
        call      malloc                                        #23.16 c9
..LN40:
                                # LOE rax r13 r14
..B1.161:                       # Preds ..B1.6
                                # Execution count [1.00e+00]
..LN41:
        movq      %rax, %rbx                                    #23.16 c1
..LN42:
                                # LOE rbx r13 r14
..B1.7:                         # Preds ..B1.161
                                # Execution count [1.00e+00]
..LN43:
	.loc    1  24  is_stmt 1
        movq      %r14, %rdi                                    #24.16 c1
..LN44:
	.loc    1  23  is_stmt 1
        movq      %rbx, a(%rip)                                 #23.3 c1
..LN45:
	.loc    1  24  is_stmt 1
#       malloc(unsigned long long)
        call      malloc                                        #24.16 c3
..LN46:
                                # LOE rax rbx r13 r14
..B1.162:                       # Preds ..B1.7
                                # Execution count [1.00e+00]
..LN47:
        movq      %rax, %r12                                    #24.16 c1
..LN48:
                                # LOE rbx r12 r13 r14
..B1.8:                         # Preds ..B1.162
                                # Execution count [1.00e+00]
..LN49:
	.loc    1  25  is_stmt 1
        movq      %r14, %rdi                                    #25.16 c1
..LN50:
	.loc    1  24  is_stmt 1
        movq      %r12, b(%rip)                                 #24.3 c1
..LN51:
	.loc    1  25  is_stmt 1
#       malloc(unsigned long long)
        call      malloc                                        #25.16 c3
..LN52:
                                # LOE rax rbx r12 r13
..B1.163:                       # Preds ..B1.8
                                # Execution count [1.00e+00]
..LN53:
        movq      %rax, %r15                                    #25.16 c1
..LN54:
                                # LOE rbx r12 r13 r15
..B1.9:                         # Preds ..B1.163
                                # Execution count [1.00e+00]
..LN55:
        movq      %r15, o(%rip)                                 #25.3 c1
..LN56:
	.loc    1  27  is_stmt 1
#       rand(void)
        call      rand                                          #27.10 c1
..LN57:
                                # LOE rbx r12 r13 r15
..B1.10:                        # Preds ..B1.9
                                # Execution count [1.00e+00]
..LN58:
	.loc    1  29  is_stmt 1
        xorl      %edi, %edi                                    #29.3 c1
..LN59:
	.loc    1  30  is_stmt 1
        xorl      %ecx, %ecx                                    #30.12 c1
..LN60:
	.loc    1  29  is_stmt 1
        testq     %r13, %r13                                    #29.29 c3
..LN61:
        jle       ..B1.51       # Prob 9%                       #29.29 c5
..LN62:
                                # LOE rbx r12 r13 r15 ecx edi
..B1.11:                        # Preds ..B1.10
                                # Execution count [9.00e-01]
..LN63:
	.loc    1  33  is_stmt 1
        movl      SIZE2(%rip), %r14d                            #33.46 c1
..LN64:
        movq      %r15, 88(%rsp)                                #33.5[spill] c1
..LN65:
	.loc    1  23  is_stmt 1
        addq      $999, %r13                                    #23.23 c1
..LN66:
	.loc    1  33  is_stmt 1
        movq      %rbx, 96(%rsp)                                #33.5[spill] c3
..LN67:
	.loc    1  23  is_stmt 1
        movq      $0x20c49ba5e353f7cf, %rax                     #23.23 c3
..LN68:
	.loc    1  33  is_stmt 1
        movl      %ecx, %ebx                                    #33.5 c3
..LN69:
	.loc    1  23  is_stmt 1
        imulq     %r13                                          #23.23 c5
..LN70:
	.loc    1  33  is_stmt 1
        movl      %r14d, %r9d                                   #33.46 c5
..LN71:
	.loc    1  30  is_stmt 1
        movl      maxrange(%rip), %esi                          #30.19 c5
..LN72:
	.loc    1  33  is_stmt 1
        movl      %esi, 152(%rsp)                               #33.5[spill] c9 stall 1
..LN73:
        shrl      $31, %r9d                                     #33.46 c9
..LN74:
        movl      %r14d, %eax                                   #33.5 c9
..LN75:
        vmovups   .L_2il0floatpacket.0(%rip), %zmm2             #33.5 c9
..LN76:
        addl      %r14d, %r9d                                   #33.46 c11
..LN77:
        movslq    %r14d, %r8                                    #33.5 c11
..LN78:
        movq      %r8, 80(%rsp)                                 #33.5[spill] c13
..LN79:
	.loc    1  23  is_stmt 1
        shrq      $7, %rdx                                      #23.23 c13
..LN80:
        sarq      $63, %r13                                     #23.23 c13
..LN81:
	.loc    1  33  is_stmt 1
        sarl      $1, %r9d                                      #33.46 c15
..LN82:
        movl      %r9d, 160(%rsp)                               #33.5[spill] c17
..LN83:
        andl      $-32, %eax                                    #33.5 c17
..LN84:
        movl      %eax, (%rsp)                                  #33.5[spill] c19
..LN85:
	.loc    1  23  is_stmt 1
        subq      %r13, %rdx                                    #23.23 c19
..LN86:
	.loc    1  33  is_stmt 1
        movl      %edx, 144(%rsp)                               #33.5[spill] c19
..LN87:
        movl      %edi, %r13d                                   #33.5 c19
..LN88:
        vmovdqu32 .L_2il0floatpacket.2(%rip), %zmm1             #33.5 c21
..LN89:
	.loc    1  35  is_stmt 1
        vmovups   .L_2il0floatpacket.1(%rip), %zmm0             #35.18 c21
..LN90:
                                # LOE r12 ebx r13d r14d
..B1.12:                        # Preds ..B1.49 ..B1.11
                                # Execution count [5.00e+00]
..L17:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN91:
	.loc    1  29  is_stmt 1
..LN92:
	.loc    1  30  is_stmt 1
#       rand(void)
        call      rand                                          #30.12 c1
..LN93:
                                # LOE r12 eax ebx r13d r14d
..B1.13:                        # Preds ..B1.12
                                # Execution count [5.00e+00]
..LN94:
        cltd                                                    #30.19 c1
..LN95:
        idivl     152(%rsp)                                     #30.19[spill] c3
..LN96:
        movl      %edx, %r9d                                    #30.19 c7 stall 1
..LN97:
	.loc    1  33  is_stmt 1
        testl     %r14d, %r14d                                  #33.46 c7
..LN98:
        jle       ..B1.49       # Prob 50%                      #33.46 c9
..LN99:
                                # LOE r12 ebx r9d r13d r14d
..B1.14:                        # Preds ..B1.13
                                # Execution count [0.00e+00]
..LN100:
	.loc    1  34  is_stmt 1
        imull     $1000, %r13d, %r8d                            #34.7 c1
..LN101:
        movq      96(%rsp), %rax                                #34.7[spill] c1
..LN102:
        movslq    %r8d, %r10                                    #34.7 c5 stall 1
..LN103:
        lea       (%rax,%r10,4), %rsi                           #34.7 c7
..LN104:
        movq      %rsi, 128(%rsp)                               #34.7[spill] c9
..LN105:
	.loc    1  35  is_stmt 1
        lea       (%r12,%r10,4), %rdx                           #35.7 c9
..LN106:
        movq      %rdx, 120(%rsp)                               #35.7[spill] c11
..LN107:
	.loc    1  34  is_stmt 1
        cmpq      %rsi, %rdx                                    #34.7 c11
..LN108:
        jbe       ..B1.16       # Prob 50%                      #34.7 c13
..LN109:
                                # LOE rdx rsi r10 r12 ebx r8d r9d r13d r14d
..B1.15:                        # Preds ..B1.14
                                # Execution count [0.00e+00]
..LN110:
        movq      80(%rsp), %rax                                #34.7[spill] c1
..LN111:
        subq      128(%rsp), %rdx                               #34.7[spill] c1
..LN112:
        shlq      $2, %rax                                      #34.7 c5 stall 1
..LN113:
        cmpq      %rax, %rdx                                    #34.7 c7
..LN114:
        jge       ..B1.18       # Prob 50%                      #34.7 c9
..LN115:
        jmp       ..B1.43       # Prob 100%                     #34.7 c9
..LN116:
                                # LOE rax r10 r12 ebx r8d r9d r13d r14d
..B1.16:                        # Preds ..B1.14
                                # Execution count [0.00e+00]
..LN117:
        movq      %rsi, %rax                                    #34.7 c1
..LN118:
        cmpq      120(%rsp), %rax                               #34.7[spill] c3
..LN119:
        jbe       ..B1.43       # Prob 50%                      #34.7 c5
..LN120:
                                # LOE rsi r10 r12 ebx r8d r9d r13d r14d
..B1.17:                        # Preds ..B1.16
                                # Execution count [0.00e+00]
..LN121:
        movq      80(%rsp), %rax                                #34.7[spill] c1
..LN122:
        movq      %rsi, %rdx                                    #34.7 c1
..LN123:
        subq      120(%rsp), %rdx                               #34.7[spill] c3
..LN124:
        shlq      $2, %rax                                      #34.7 c5
..LN125:
        cmpq      %rax, %rdx                                    #34.7 c7
..LN126:
        jl        ..B1.43       # Prob 50%                      #34.7 c9
..LN127:
                                # LOE rax r10 r12 ebx r8d r9d r13d r14d
..B1.18:                        # Preds ..B1.17 ..B1.15
                                # Execution count [0.00e+00]
..LN128:
	.loc    1  36  is_stmt 1
        movq      88(%rsp), %rdx                                #36.7[spill] c1
..LN129:
        lea       (%rdx,%r10,4), %rsi                           #36.7 c5 stall 1
..LN130:
        movq      %rsi, 136(%rsp)                               #36.7[spill] c7
..LN131:
	.loc    1  34  is_stmt 1
        cmpq      128(%rsp), %rsi                               #34.7[spill] c7
..LN132:
        jbe       ..B1.20       # Prob 50%                      #34.7 c9
..LN133:
                                # LOE rax rsi r10 r12 ebx r8d r9d r13d r14d
..B1.19:                        # Preds ..B1.18
                                # Execution count [0.00e+00]
..LN134:
        movq      %rsi, %rdx                                    #34.7 c1
..LN135:
        subq      128(%rsp), %rdx                               #34.7[spill] c3
..LN136:
        cmpq      %rax, %rdx                                    #34.7 c5
..LN137:
        jge       ..B1.22       # Prob 50%                      #34.7 c7
..LN138:
        jmp       ..B1.43       # Prob 100%                     #34.7 c7
..LN139:
                                # LOE rax rsi r10 r12 ebx r8d r9d r13d r14d
..B1.20:                        # Preds ..B1.18
                                # Execution count [0.00e+00]
..LN140:
        movq      %rsi, %rdx                                    #34.7 c1
..LN141:
        cmpq      128(%rsp), %rdx                               #34.7[spill] c3
..LN142:
        jae       ..B1.43       # Prob 50%                      #34.7 c5
..LN143:
                                # LOE rax rsi r10 r12 ebx r8d r9d r13d r14d
..B1.21:                        # Preds ..B1.20
                                # Execution count [0.00e+00]
..LN144:
        movq      128(%rsp), %rdx                               #34.7[spill] c1
..LN145:
        subq      136(%rsp), %rdx                               #34.7[spill] c5 stall 1
..LN146:
        cmpq      %rax, %rdx                                    #34.7 c7
..LN147:
        jl        ..B1.43       # Prob 50%                      #34.7 c9
..LN148:
                                # LOE rax rsi r10 r12 ebx r8d r9d r13d r14d
..B1.22:                        # Preds ..B1.19 ..B1.21
                                # Execution count [0.00e+00]
..LN149:
	.loc    1  35  is_stmt 1
        movq      %rsi, %rdx                                    #35.7 c1
..LN150:
        cmpq      120(%rsp), %rdx                               #35.7[spill] c3
..LN151:
        jbe       ..B1.24       # Prob 50%                      #35.7 c5
..LN152:
                                # LOE rax rdx rsi r10 r12 ebx r8d r9d r13d r14d
..B1.23:                        # Preds ..B1.22
                                # Execution count [0.00e+00]
..LN153:
        subq      120(%rsp), %rdx                               #35.7[spill] c1
..LN154:
        cmpq      %rax, %rdx                                    #35.7 c3
..LN155:
        jge       ..B1.26       # Prob 50%                      #35.7 c5
..LN156:
        jmp       ..B1.43       # Prob 100%                     #35.7 c5
..LN157:
                                # LOE rsi r10 r12 ebx r8d r9d r13d r14d
..B1.24:                        # Preds ..B1.22
                                # Execution count [0.00e+00]
..LN158:
        cmpq      120(%rsp), %rdx                               #35.7[spill] c1
..LN159:
        jae       ..B1.43       # Prob 50%                      #35.7 c3
..LN160:
                                # LOE rax rsi r10 r12 ebx r8d r9d r13d r14d
..B1.25:                        # Preds ..B1.24
                                # Execution count [0.00e+00]
..LN161:
        movq      120(%rsp), %rdx                               #35.7[spill] c1
..LN162:
        subq      136(%rsp), %rdx                               #35.7[spill] c5 stall 1
..LN163:
        cmpq      %rax, %rdx                                    #35.7 c7
..LN164:
        jl        ..B1.43       # Prob 50%                      #35.7 c9
..LN165:
                                # LOE rsi r10 r12 ebx r8d r9d r13d r14d
..B1.26:                        # Preds ..B1.23 ..B1.25
                                # Execution count [2.25e+00]
..LN166:
	.loc    1  33  is_stmt 1
        cmpl      $537, %r14d                                   #33.5 c1
..LN167:
        jl        ..B1.143      # Prob 10%                      #33.5 c3
..LN168:
                                # LOE rsi r12 ebx r8d r9d r13d r14d
..B1.27:                        # Preds ..B1.26
                                # Execution count [2.25e+00]
..LN169:
        movq      %rsi, %rdi                                    #33.5 c1
..LN170:
        andq      $63, %rdi                                     #33.5 c3
..LN171:
        testl     %edi, %edi                                    #33.5 c3
..LN172:
        je        ..B1.30       # Prob 50%                      #33.5 c5
..LN173:
                                # LOE r12 ebx edi r8d r9d r13d r14d
..B1.28:                        # Preds ..B1.27
                                # Execution count [2.25e+00]
..LN174:
        testl     $3, %edi                                      #33.5 c1
..LN175:
        jne       ..B1.142      # Prob 10%                      #33.5 c3
..LN176:
                                # LOE r12 ebx edi r8d r9d r13d r14d
..B1.29:                        # Preds ..B1.28
                                # Execution count [0.00e+00]
..LN177:
        negl      %edi                                          #33.5 c1
..LN178:
        addl      $64, %edi                                     #33.5 c3
..LN179:
        shrl      $2, %edi                                      #33.5 c5
..LN180:
        cmpl      %edi, %r14d                                   #33.5 c7
..LN181:
        cmovl     %r14d, %edi                                   #33.5 c9
..LN182:
                                # LOE r12 ebx edi r8d r9d r13d r14d
..B1.30:                        # Preds ..B1.29 ..B1.27
                                # Execution count [2.50e+00]
..LN183:
        movl      %r14d, %eax                                   #33.5 c1
..LN184:
	.loc    1  36  is_stmt 1
        movl      %r9d, %r10d                                   #36.25 c1
..LN185:
	.loc    1  34  is_stmt 1
        lea       (%r9,%r8), %esi                               #34.25 c1
..LN186:
	.loc    1  35  is_stmt 1
        lea       (%r9,%rbx), %ecx                              #35.18 c1
..LN187:
	.loc    1  33  is_stmt 1
        subl      %edi, %eax                                    #33.5 c3
..LN188:
	.loc    1  36  is_stmt 1
        movl      %r8d, %edx                                    #36.25 c3
..LN189:
	.loc    1  33  is_stmt 1
        andl      $31, %eax                                     #33.5 c5
..LN190:
	.loc    1  36  is_stmt 1
        shll      $4, %r10d                                     #36.25 c5
..LN191:
	.loc    1  33  is_stmt 1
        negl      %eax                                          #33.5 c7
..LN192:
	.loc    1  36  is_stmt 1
        imull     %r9d, %edx                                    #36.25 c7
..LN193:
	.loc    1  33  is_stmt 1
        addl      %r14d, %eax                                   #33.5 c9
..LN194:
        cmpl      $1, %edi                                      #33.5 c11
..LN195:
        jae       ..B1.32       # Prob 50%                      #33.5 c13
..LN196:
                                # LOE r12 eax edx ecx ebx esi edi r8d r9d r10d r13d r14d
..B1.31:                        # Preds ..B1.30
                                # Execution count [1.25e+00]
..LN197:
	.loc    1  36  is_stmt 1
        vpbroadcastd %r9d, %zmm1                                #36.25 c1
..LN198:
        vpbroadcastd %r10d, %zmm0                               #36.25 c1
..LN199:
        vpmulld   .L_2il0floatpacket.2(%rip), %zmm1, %zmm6      #36.25 c7 stall 2
..LN200:
        jmp       ..B1.35       # Prob 100%                     #36.25 c7 stall 2
..LN201:
                                # LOE r12 eax edx ecx ebx esi edi r8d r9d r13d r14d zmm0 zmm6
..B1.32:                        # Preds ..B1.30
                                # Execution count [2.25e+00]
..LN202:
        vpbroadcastd %r9d, %zmm6                                #36.25 c1
..LN203:
	.loc    1  33  is_stmt 1
        movl      %ebx, 8(%rsp)                                 #33.5[spill] c1
..LN204:
        movslq    %edi, %r15                                    #33.5 c1
..LN205:
        movl      %r13d, 64(%rsp)                               #33.5[spill] c3
..LN206:
        xorl      %r11d, %r11d                                  #33.5 c3
..LN207:
        movq      %r12, 72(%rsp)                                #33.5[spill] c5
..LN208:
	.loc    1  34  is_stmt 1
        vpbroadcastd %esi, %zmm4                                #34.25 c7
..LN209:
	.loc    1  35  is_stmt 1
        vpbroadcastd %ecx, %zmm0                                #35.18 c7
..LN210:
	.loc    1  36  is_stmt 1
        vpbroadcastd %edx, %zmm1                                #36.25 c13 stall 2
..LN211:
        vpmulld   .L_2il0floatpacket.2(%rip), %zmm6, %zmm6      #36.25 c13
..LN212:
	.loc    1  33  is_stmt 1
        vmovdqu32 .L_2il0floatpacket.2(%rip), %zmm5             #33.5 c15
..LN213:
	.loc    1  34  is_stmt 1
        vpaddd    .L_2il0floatpacket.2(%rip), %zmm4, %zmm4      #34.25 c19 stall 1
..LN214:
	.loc    1  36  is_stmt 1
        vpaddd    %zmm1, %zmm6, %zmm2                           #36.25 c19
..LN215:
	.loc    1  35  is_stmt 1
        vpaddd    .L_2il0floatpacket.3(%rip), %zmm0, %zmm3      #35.18 c21
..LN216:
	.loc    1  36  is_stmt 1
        vpbroadcastd %r10d, %zmm0                               #36.25 c21
..LN217:
	.loc    1  33  is_stmt 1
        xorl      %r10d, %r10d                                  #33.5 c21
..LN218:
        vpbroadcastd %edi, %zmm1                                #33.5 c23
..LN219:
        vmovups   .L_2il0floatpacket.1(%rip), %zmm10            #33.5 c27 stall 1
..LN220:
        vmovups   .L_2il0floatpacket.0(%rip), %zmm11            #33.5 c29
..LN221:
        movq      136(%rsp), %rbx                               #33.5[spill] c33 stall 1
..LN222:
        movq      120(%rsp), %r12                               #33.5[spill] c35
..LN223:
        movq      128(%rsp), %r13                               #33.5[spill] c37
        .align    16,0x90
..LN224:
                                # LOE rbx r10 r11 r12 r13 r15 eax edx ecx esi edi r8d r9d r14d zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm10 zmm11
..B1.33:                        # Preds ..B1.33 ..B1.32
                                # Execution count [1.25e+01]
..L18:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS VECTORIZED
                # PEELED LOOP FOR VECTORIZATION
                # MASKED VECTORIZATION
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 5.039062
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 16
                # NORMALIZED VECTORIZATION OVERHEAD 0.875000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN225:
        vpcmpgtd  %zmm5, %zmm1, %k1                             #33.5 c1
..LN226:
	.loc    1  34  is_stmt 1
        vcvtdq2ps %zmm4, %zmm7                                  #34.25 c1
..LN227:
        vmovups   %zmm7, (%r11,%r13){%k1}                       #34.7 c3
..LN228:
	.loc    1  35  is_stmt 1
        vcvtdq2ps %zmm3, %zmm8                                  #35.25 c3
..LN229:
        vmovups   %zmm8, (%r11,%r12){%k1}                       #35.7 c5
..LN230:
	.loc    1  36  is_stmt 1
        vcvtdq2ps %zmm2, %zmm9                                  #36.25 c5
..LN231:
        vmovups   %zmm9, (%r11,%rbx){%k1}                       #36.7 c9 stall 1
..LN232:
	.loc    1  33  is_stmt 1
        addq      $16, %r10                                     #33.5 c9
..LN233:
        addq      $64, %r11                                     #33.5 c9
..LN234:
        vpaddd    %zmm11, %zmm5, %zmm5                          #33.5 c9
..LN235:
	.loc    1  34  is_stmt 1
        vpaddd    %zmm11, %zmm4, %zmm4                          #34.25 c9
..LN236:
	.loc    1  35  is_stmt 1
        vpaddd    %zmm10, %zmm3, %zmm3                          #35.18 c11
..LN237:
	.loc    1  36  is_stmt 1
        vpaddd    %zmm0, %zmm2, %zmm2                           #36.25 c11
..LN238:
	.loc    1  33  is_stmt 1
        cmpq      %r15, %r10                                    #33.5 c11
..LN239:
        jb        ..B1.33       # Prob 82%                      #33.5 c13
..LN240:
                                # LOE rbx r10 r11 r12 r13 r15 eax edx ecx esi edi r8d r9d r14d zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm10 zmm11
..B1.34:                        # Preds ..B1.33
                                # Execution count [2.25e+00]
..LN241:
        movl      8(%rsp), %ebx                                 #[spill] c1
..LN242:
        movl      64(%rsp), %r13d                               #[spill] c1
..LN243:
        movq      72(%rsp), %r12                                #[spill] c5 stall 1
..LN244:
        cmpl      %edi, %r14d                                   #33.5 c5
..LN245:
        je        ..B1.49       # Prob 10%                      #33.5 c7
..LN246:
                                # LOE r12 eax edx ecx ebx esi edi r8d r9d r13d r14d zmm0 zmm6
..B1.35:                        # Preds ..B1.34 ..B1.31 ..B1.143
                                # Execution count [0.00e+00]
..LN247:
	.loc    1  36  is_stmt 1
        movl      %edi, %r10d                                   #36.25 c1
..LN248:
	.loc    1  34  is_stmt 1
        addl      %edi, %esi                                    #34.25 c1
..LN249:
	.loc    1  36  is_stmt 1
        imull     %r9d, %r10d                                   #36.25 c3
..LN250:
	.loc    1  34  is_stmt 1
        vpbroadcastd %esi, %zmm3                                #34.25 c3
..LN251:
	.loc    1  35  is_stmt 1
        movl      %edi, %esi                                    #35.18 c3
..LN252:
        negl      %esi                                          #35.18 c5
..LN253:
        addl      %esi, %ecx                                    #35.18 c7
..LN254:
	.loc    1  36  is_stmt 1
        addl      %r10d, %edx                                   #36.25 c7
..LN255:
	.loc    1  35  is_stmt 1
        vpbroadcastd %ecx, %zmm2                                #35.18 c9
..LN256:
	.loc    1  36  is_stmt 1
        vpbroadcastd %edx, %zmm1                                #36.25 c9
..LN257:
	.loc    1  33  is_stmt 1
        lea       32(%rdi), %edx                                #33.5 c15 stall 2
..LN258:
	.loc    1  34  is_stmt 1
        vpaddd    .L_2il0floatpacket.2(%rip), %zmm3, %zmm3      #34.25 c15
..LN259:
	.loc    1  36  is_stmt 1
        vpaddd    %zmm1, %zmm6, %zmm1                           #36.25 c15
..LN260:
	.loc    1  35  is_stmt 1
        vpaddd    .L_2il0floatpacket.3(%rip), %zmm2, %zmm2      #35.18 c17
..LN261:
	.loc    1  33  is_stmt 1
        cmpl      %edx, %eax                                    #33.5 c17
..LN262:
        jl        ..B1.39       # Prob 50%                      #33.5 c19
..LN263:
                                # LOE r12 eax ebx edi r8d r9d r13d r14d zmm0 zmm1 zmm2 zmm3
..B1.36:                        # Preds ..B1.35
                                # Execution count [2.25e+00]
..LN264:
        movslq    %edi, %rdi                                    #33.5 c1
..LN265:
        movslq    %eax, %rdx                                    #33.5 c1
..LN266:
        vmovups   .L_2il0floatpacket.1(%rip), %zmm10            #33.5 c1
..LN267:
        vmovups   .L_2il0floatpacket.0(%rip), %zmm11            #33.5 c1
..LN268:
        movq      136(%rsp), %rsi                               #33.5[spill] c7 stall 2
..LN269:
        movq      120(%rsp), %r10                               #33.5[spill] c7
..LN270:
        movq      128(%rsp), %r11                               #33.5[spill] c11 stall 1
        .align    16,0x90
..LN271:
                                # LOE rdx rsi rdi r10 r11 r12 eax ebx r8d r9d r13d r14d zmm0 zmm1 zmm2 zmm3 zmm10 zmm11
..B1.37:                        # Preds ..B1.37 ..B1.36
                                # Execution count [1.25e+01]
..L19:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS UNROLLED BY 2
                # LOOP WAS VECTORIZED
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 13.710938
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 16
                # NORMALIZED VECTORIZATION OVERHEAD 0.625000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN272:
	.loc    1  34  is_stmt 1
        vpaddd    %zmm11, %zmm3, %zmm7                          #34.25 c1
..LN273:
	.loc    1  35  is_stmt 1
        vpaddd    %zmm10, %zmm2, %zmm8                          #35.18 c1
..LN274:
	.loc    1  36  is_stmt 1
        vpaddd    %zmm0, %zmm1, %zmm9                           #36.25 c3
..LN275:
	.loc    1  34  is_stmt 1
        vcvtdq2ps %zmm3, %zmm4                                  #34.25 c3
..LN276:
        vmovups   %zmm4, (%r11,%rdi,4)                          #34.7 c5
..LN277:
	.loc    1  35  is_stmt 1
        vcvtdq2ps %zmm2, %zmm5                                  #35.25 c5
..LN278:
        vmovups   %zmm5, (%r10,%rdi,4)                          #35.7 c7
..LN279:
	.loc    1  36  is_stmt 1
        vcvtdq2ps %zmm1, %zmm6                                  #36.25 c7
..LN280:
        vmovups   %zmm6, (%rsi,%rdi,4)                          #36.7 c11 stall 1
..LN281:
	.loc    1  34  is_stmt 1
        vcvtdq2ps %zmm7, %zmm3                                  #34.25 c11
..LN282:
        vmovups   %zmm3, 64(%r11,%rdi,4)                        #34.7 c13
..LN283:
	.loc    1  35  is_stmt 1
        vcvtdq2ps %zmm8, %zmm2                                  #35.25 c13
..LN284:
        vmovups   %zmm2, 64(%r10,%rdi,4)                        #35.7 c17 stall 1
..LN285:
	.loc    1  36  is_stmt 1
        vcvtdq2ps %zmm9, %zmm1                                  #36.25 c17
..LN286:
        vmovups   %zmm1, 64(%rsi,%rdi,4)                        #36.7 c19
..LN287:
	.loc    1  33  is_stmt 1
        addq      $32, %rdi                                     #33.5 c19
..LN288:
	.loc    1  34  is_stmt 1
        vpaddd    %zmm11, %zmm7, %zmm3                          #34.25 c19
..LN289:
	.loc    1  35  is_stmt 1
        vpaddd    %zmm10, %zmm8, %zmm2                          #35.18 c19
..LN290:
	.loc    1  36  is_stmt 1
        vpaddd    %zmm0, %zmm9, %zmm1                           #36.25 c21
..LN291:
	.loc    1  33  is_stmt 1
        cmpq      %rdx, %rdi                                    #33.5 c21
..LN292:
        jb        ..B1.37       # Prob 82%                      #33.5 c23
..LN293:
                                # LOE rdx rsi rdi r10 r11 r12 eax ebx r8d r9d r13d r14d zmm0 zmm1 zmm2 zmm3 zmm10 zmm11
..B1.39:                        # Preds ..B1.37 ..B1.35 ..B1.142
                                # Execution count [2.50e+00]
..LN294:
        lea       1(%rax), %edx                                 #33.5 c1
..LN295:
        cmpl      %r14d, %edx                                   #33.5 c3
..LN296:
        ja        ..B1.49       # Prob 50%                      #33.5 c5
..LN297:
                                # LOE r12 eax ebx r8d r9d r13d r14d
..B1.40:                        # Preds ..B1.39
                                # Execution count [2.25e+00]
..LN298:
	.loc    1  34  is_stmt 1
        lea       (%r9,%r8), %edx                               #34.25 c1
..LN299:
	.loc    1  35  is_stmt 1
        imull     $-1000, %r13d, %esi                           #35.18 c1
..LN300:
	.loc    1  36  is_stmt 1
        addl      %eax, %r8d                                    #36.25 c1
..LN301:
        vpbroadcastd %r9d, %zmm0                                #36.25 c1
..LN302:
	.loc    1  35  is_stmt 1
        movl      %r9d, %r10d                                   #35.18 c3
..LN303:
        movq      120(%rsp), %r15                               #35.7[spill] c3
..LN304:
	.loc    1  36  is_stmt 1
        imull     %r9d, %r8d                                    #36.25 c5
..LN305:
	.loc    1  35  is_stmt 1
        subl      %eax, %r10d                                   #35.18 c5
..LN306:
        addl      %r10d, %esi                                   #35.18 c7
..LN307:
	.loc    1  36  is_stmt 1
        vpmulld   .L_2il0floatpacket.2(%rip), %zmm0, %zmm1      #36.25 c7
..LN308:
	.loc    1  33  is_stmt 1
        vmovdqu32 .L_2il0floatpacket.2(%rip), %zmm5             #33.5 c7
..LN309:
	.loc    1  34  is_stmt 1
        addl      %eax, %edx                                    #34.25 c9
..LN310:
	.loc    1  35  is_stmt 1
        vpbroadcastd %esi, %zmm2                                #35.18 c9
..LN311:
	.loc    1  36  is_stmt 1
        movl      %r9d, %r11d                                   #36.25 c9
..LN312:
	.loc    1  33  is_stmt 1
        movl      %r14d, %r9d                                   #33.5 c11
..LN313:
	.loc    1  36  is_stmt 1
        shll      $4, %r11d                                     #36.25 c11
..LN314:
        vpbroadcastd %r8d, %zmm6                                #36.25 c13
..LN315:
	.loc    1  33  is_stmt 1
        subl      %eax, %r9d                                    #33.5 c13
..LN316:
	.loc    1  34  is_stmt 1
        movslq    %eax, %rax                                    #34.7 c13
..LN317:
	.loc    1  36  is_stmt 1
        movq      136(%rsp), %r8                                #36.7[spill] c15
..LN318:
	.loc    1  34  is_stmt 1
        movq      128(%rsp), %rsi                               #34.7[spill] c19 stall 1
..LN319:
        vpbroadcastd %edx, %zmm4                                #34.25 c19
..LN320:
	.loc    1  36  is_stmt 1
        vpaddd    %zmm6, %zmm1, %zmm1                           #36.25 c19
..LN321:
	.loc    1  33  is_stmt 1
        xorl      %edx, %edx                                    #33.5 c19
..LN322:
        vpbroadcastd %r9d, %zmm0                                #33.5 c23 stall 1
..LN323:
	.loc    1  36  is_stmt 1
        lea       (%r8,%rax,4), %r10                            #36.7 c25
..LN324:
	.loc    1  35  is_stmt 1
        lea       (%r15,%rax,4), %r9                            #35.7 c27
..LN325:
	.loc    1  34  is_stmt 1
        lea       (%rsi,%rax,4), %r8                            #34.7 c29
..LN326:
	.loc    1  33  is_stmt 1
        negq      %rax                                          #33.5 c29
..LN327:
	.loc    1  34  is_stmt 1
        vpaddd    .L_2il0floatpacket.2(%rip), %zmm4, %zmm4      #34.25 c29
..LN328:
	.loc    1  33  is_stmt 1
        xorl      %esi, %esi                                    #33.5 c29
..LN329:
	.loc    1  35  is_stmt 1
        vpaddd    .L_2il0floatpacket.3(%rip), %zmm2, %zmm3      #35.18 c31
..LN330:
	.loc    1  36  is_stmt 1
        vpbroadcastd %r11d, %zmm2                               #36.25 c31
..LN331:
	.loc    1  33  is_stmt 1
        addq      80(%rsp), %rax                                #33.5[spill] c33
..LN332:
        vmovups   .L_2il0floatpacket.1(%rip), %zmm9             #33.5 c35
..LN333:
        vmovups   .L_2il0floatpacket.0(%rip), %zmm10            #33.5 c37
        .align    16,0x90
..LN334:
                                # LOE rax rdx rsi r8 r9 r10 r12 ebx r13d r14d zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm9 zmm10
..B1.41:                        # Preds ..B1.41 ..B1.40
                                # Execution count [1.25e+01]
..L20:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS VECTORIZED
                # REMAINDER LOOP FOR VECTORIZATION
                # MASKED VECTORIZATION
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 8.859375
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 16
                # NORMALIZED VECTORIZATION OVERHEAD 0.875000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN335:
        vpcmpgtd  %zmm5, %zmm0, %k1                             #33.5 c1
..LN336:
	.loc    1  34  is_stmt 1
        vcvtdq2ps %zmm4, %zmm6                                  #34.25 c1
..LN337:
        vmovups   %zmm6, (%rsi,%r8){%k1}                        #34.7 c3
..LN338:
	.loc    1  35  is_stmt 1
        vcvtdq2ps %zmm3, %zmm7                                  #35.25 c3
..LN339:
        vmovups   %zmm7, (%rsi,%r9){%k1}                        #35.7 c5
..LN340:
	.loc    1  36  is_stmt 1
        vcvtdq2ps %zmm1, %zmm8                                  #36.25 c5
..LN341:
        vmovups   %zmm8, (%rsi,%r10){%k1}                       #36.7 c9 stall 1
..LN342:
	.loc    1  33  is_stmt 1
        addq      $16, %rdx                                     #33.5 c9
..LN343:
        addq      $64, %rsi                                     #33.5 c9
..LN344:
        vpaddd    %zmm10, %zmm5, %zmm5                          #33.5 c9
..LN345:
	.loc    1  34  is_stmt 1
        vpaddd    %zmm10, %zmm4, %zmm4                          #34.25 c9
..LN346:
	.loc    1  35  is_stmt 1
        vpaddd    %zmm9, %zmm3, %zmm3                           #35.18 c11
..LN347:
	.loc    1  36  is_stmt 1
        vpaddd    %zmm2, %zmm1, %zmm1                           #36.25 c11
..LN348:
	.loc    1  33  is_stmt 1
        cmpq      %rax, %rdx                                    #33.5 c11
..LN349:
        jb        ..B1.41       # Prob 82%                      #33.5 c13
..LN350:
        jmp       ..B1.49       # Prob 100%                     #33.5 c13
..LN351:
                                # LOE rax rdx rsi r8 r9 r10 r12 ebx r13d r14d zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm9 zmm10
..B1.43:                        # Preds ..B1.15 ..B1.16 ..B1.17 ..B1.19 ..B1.20
                                #       ..B1.21 ..B1.23 ..B1.24 ..B1.25
                                # Execution count [2.50e+00]
..LN352:
        movl      $1, %esi                                      #33.5 c1
..LN353:
        xorl      %edx, %edx                                    #33.5 c1
..LN354:
        cmpl      $0, 160(%rsp)                                 #33.5[spill] c1
..LN355:
        jbe       ..B1.47       # Prob 10%                      #33.5 c3
..LN356:
                                # LOE r10 r12 edx ebx esi r8d r9d r13d r14d
..B1.44:                        # Preds ..B1.43
                                # Execution count [2.25e+00]
..LN357:
	.loc    1  34  is_stmt 1
        movl      %r9d, %esi                                    #34.7 c1
..LN358:
        movq      %r10, 112(%rsp)                               #34.7[spill] c1
..LN359:
	.loc    1  35  is_stmt 1
        movl      %r9d, %r11d                                   #35.18 c1
..LN360:
	.loc    1  34  is_stmt 1
        movl      %r14d, 104(%rsp)                              #34.7[spill] c1
..LN361:
        imull     %r8d, %esi                                    #34.7 c3
..LN362:
        movl      %ebx, 8(%rsp)                                 #34.7[spill] c3
..LN363:
	.loc    1  35  is_stmt 1
        subl      %r8d, %r11d                                   #35.18 c3
..LN364:
	.loc    1  34  is_stmt 1
        movl      %r13d, 64(%rsp)                               #34.7[spill] c3
..LN365:
        lea       (%r9,%r8), %ecx                               #34.25 c5
..LN366:
        movl      %r11d, 168(%rsp)                              #34.7[spill] c5
..LN367:
        xorl      %eax, %eax                                    #34.7 c5
..LN368:
	.loc    1  36  is_stmt 1
        lea       (%r9,%rsi), %edi                              #36.25 c7
..LN369:
	.loc    1  34  is_stmt 1
        movq      88(%rsp), %r10                                #34.7[spill] c7
..LN370:
        movq      96(%rsp), %r11                                #34.7[spill] c9
..LN371:
                                # LOE r10 r11 r12 eax edx ecx esi edi r8d r9d
..B1.45:                        # Preds ..B1.45 ..B1.44
                                # Execution count [6.25e+00]
..L21:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 2
                # LOOP WAS UNROLLED BY 2
                # %s was not vectorized: non-vectorizable loop instance from multiversioning
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
..LN372:
	.loc    1  33  is_stmt 1
..LN373:
	.loc    1  34  is_stmt 1
        lea       (%rdx,%rdx), %r13d                            #34.7 c1
..LN374:
	.loc    1  35  is_stmt 1
        vxorps    %xmm1, %xmm1, %xmm1                           #35.25 c1
..LN375:
	.loc    1  34  is_stmt 1
        lea       (%rcx,%rdx,2), %r15d                          #34.7 c1
..LN376:
        vxorps    %xmm0, %xmm0, %xmm0                           #34.25 c1
..LN377:
	.loc    1  35  is_stmt 1
        negl      %r13d                                         #35.18 c3
..LN378:
        vxorps    %xmm4, %xmm4, %xmm4                           #35.25 c3
..LN379:
	.loc    1  34  is_stmt 1
        lea       (%r8,%rdx,2), %ebx                            #34.7 c3
..LN380:
        vcvtsi2ss %r15d, %xmm0, %xmm0                           #34.25 c3
..LN381:
	.loc    1  36  is_stmt 1
        lea       (%rsi,%rax), %r14d                            #36.25 c3
..LN382:
	.loc    1  34  is_stmt 1
        addl      $1, %r15d                                     #34.7 c3
..LN383:
	.loc    1  35  is_stmt 1
        addl      168(%rsp), %r13d                              #35.18[spill] c5
..LN384:
	.loc    1  36  is_stmt 1
        vxorps    %xmm2, %xmm2, %xmm2                           #36.25 c5
..LN385:
	.loc    1  34  is_stmt 1
        vxorps    %xmm3, %xmm3, %xmm3                           #34.25 c5
..LN386:
	.loc    1  33  is_stmt 1
        addl      $1, %edx                                      #33.5 c5
..LN387:
	.loc    1  34  is_stmt 1
        movslq    %ebx, %rbx                                    #34.7 c5
..LN388:
        vmovss    %xmm0, (%r11,%rbx,4)                          #34.7 c7
..LN389:
	.loc    1  35  is_stmt 1
        vcvtsi2ss %r13d, %xmm1, %xmm1                           #35.25 c7
..LN390:
        vmovss    %xmm1, (%r12,%rbx,4)                          #35.7 c9
..LN391:
        addl      $-1, %r13d                                    #35.18 c9
..LN392:
	.loc    1  36  is_stmt 1
        vxorps    %xmm5, %xmm5, %xmm5                           #36.25 c9
..LN393:
        vcvtsi2ss %r14d, %xmm2, %xmm2                           #36.25 c9
..LN394:
        vmovss    %xmm2, (%r10,%rbx,4)                          #36.7 c13 stall 1
..LN395:
	.loc    1  35  is_stmt 1
        vcvtsi2ss %r13d, %xmm4, %xmm4                           #35.25 c13
..LN396:
        vmovss    %xmm4, 4(%r12,%rbx,4)                         #35.7 c15
..LN397:
	.loc    1  34  is_stmt 1
        vcvtsi2ss %r15d, %xmm3, %xmm3                           #34.25 c15
..LN398:
        vmovss    %xmm3, 4(%r11,%rbx,4)                         #34.7 c19 stall 1
..LN399:
	.loc    1  36  is_stmt 1
        lea       (%rdi,%rax), %r13d                            #36.25 c21
..LN400:
        vcvtsi2ss %r13d, %xmm5, %xmm5                           #36.25 c23
..LN401:
        vmovss    %xmm5, 4(%r10,%rbx,4)                         #36.7 c25
..LN402:
	.loc    1  33  is_stmt 1
        lea       (%rax,%r9,2), %eax                            #33.5 c25
..LN403:
        cmpl      160(%rsp), %edx                               #33.5[spill] c27
..LN404:
        jb        ..B1.45       # Prob 64%                      #33.5 c29
..LN405:
                                # LOE r10 r11 r12 eax edx ecx esi edi r8d r9d
..B1.46:                        # Preds ..B1.45
                                # Execution count [2.25e+00]
..LN406:
        movq      112(%rsp), %r10                               #[spill] c1
..LN407:
        movl      104(%rsp), %r14d                              #[spill] c1
..LN408:
        movl      64(%rsp), %r13d                               #[spill] c5 stall 1
..LN409:
        movl      8(%rsp), %ebx                                 #[spill] c5
..LN410:
	.loc    1  34  is_stmt 1
        lea       1(%rdx,%rdx), %esi                            #34.7 c9 stall 1
..LN411:
                                # LOE r10 r12 ebx esi r8d r9d r13d r14d
..B1.47:                        # Preds ..B1.46 ..B1.43
                                # Execution count [2.50e+00]
..LN412:
	.loc    1  33  is_stmt 1
        lea       -1(%rsi), %eax                                #33.5 c1
..LN413:
        cmpl      %r14d, %eax                                   #33.5 c3
..LN414:
        jae       ..B1.49       # Prob 10%                      #33.5 c5
..LN415:
                                # LOE r10 r12 ebx esi r8d r9d r13d r14d
..B1.48:                        # Preds ..B1.47
                                # Execution count [2.25e+00]
..L22:
                # optimization report
                # REMAINDER LOOP
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 2
                # %s was not vectorized: non-vectorizable loop instance from multiversioning
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
..LN416:
	.loc    1  34  is_stmt 1
        movslq    %esi, %rsi                                    #34.7 c1
..LN417:
	.loc    1  35  is_stmt 1
        movl      %r9d, %r15d                                   #35.18 c1
..LN418:
	.loc    1  34  is_stmt 1
        lea       (%r9,%r8), %eax                               #34.25 c1
..LN419:
	.loc    1  36  is_stmt 1
        vxorps    %xmm2, %xmm2, %xmm2                           #36.25 c1
..LN420:
	.loc    1  34  is_stmt 1
        movq      96(%rsp), %r11                                #34.7[spill] c1
..LN421:
        vxorps    %xmm0, %xmm0, %xmm0                           #34.25 c1
..LN422:
	.loc    1  35  is_stmt 1
        subl      %r8d, %r15d                                   #35.18 c3
..LN423:
	.loc    1  33  is_stmt 1
        lea       -1(%rsi,%r8), %r8d                            #33.5 c3
..LN424:
	.loc    1  35  is_stmt 1
        vxorps    %xmm1, %xmm1, %xmm1                           #35.25 c3
..LN425:
	.loc    1  34  is_stmt 1
        addq      %rsi, %r10                                    #34.7 c3
..LN426:
	.loc    1  36  is_stmt 1
        imull     %r8d, %r9d                                    #36.25 c5
..LN427:
	.loc    1  35  is_stmt 1
        subl      %esi, %r15d                                   #35.18 c5
..LN428:
	.loc    1  33  is_stmt 1
        lea       -1(%rax,%rsi), %edx                           #33.5 c5
..LN429:
	.loc    1  35  is_stmt 1
        addl      $1, %r15d                                     #35.18 c7
..LN430:
	.loc    1  34  is_stmt 1
        vcvtsi2ss %edx, %xmm0, %xmm0                            #34.25 c7
..LN431:
        vmovss    %xmm0, -4(%r11,%r10,4)                        #34.7 c9
..LN432:
	.loc    1  36  is_stmt 1
        vcvtsi2ss %r9d, %xmm2, %xmm2                            #36.25 c9
..LN433:
        movq      88(%rsp), %r9                                 #36.7[spill] c9
..LN434:
        vmovss    %xmm2, -4(%r9,%r10,4)                         #36.7 c13 stall 1
..LN435:
	.loc    1  35  is_stmt 1
        vcvtsi2ss %r15d, %xmm1, %xmm1                           #35.25 c13
..LN436:
        vmovss    %xmm1, -4(%r12,%r10,4)                        #35.7 c15
..LN437:
                                # LOE r12 ebx r13d r14d
..B1.49:                        # Preds ..B1.41 ..B1.13 ..B1.34 ..B1.39 ..B1.47
                                #       ..B1.48
                                # Execution count [5.00e+00]
..LN438:
	.loc    1  29  is_stmt 1
        addl      $1, %r13d                                     #29.3 c1
..LN439:
        addl      $-1000, %ebx                                  #29.3 c1
..LN440:
        cmpl      144(%rsp), %r13d                              #29.3[spill] c3
..LN441:
        jb        ..B1.12       # Prob 82%                      #29.3 c5
..LN442:
                                # LOE r12 ebx r13d r14d
..B1.51:                        # Preds ..B1.49 ..B1.10
                                # Execution count [1.00e+00]
..LN443:
	.loc    1  84  is_stmt 1
        lea       16(%rsp), %rdi                                #84.3 c1
..LN444:
#       time(time_t *)
        call      time                                          #84.3 c3
..LN445:
                                # LOE
..B1.52:                        # Preds ..B1.51
                                # Execution count [1.00e+00]
..LN446:
	.loc    1  85  is_stmt 1
        lea       16(%rsp), %rdi                                #85.17 c1
..LN447:
#       localtime(const time_t *)
        call      localtime                                     #85.17 c3
..LN448:
                                # LOE rax
..B1.166:                       # Preds ..B1.52
                                # Execution count [1.00e+00]
..LN449:
	.loc    1  86  is_stmt 1
        movq      %rax, %rdi                                    #86.44 c1
..___tag_value_main.23:
..LN450:
#       asctime(const struct tm *)
        call      asctime                                       #86.44
..___tag_value_main.24:
..LN451:
                                # LOE rax
..B1.53:                        # Preds ..B1.166
                                # Execution count [1.00e+00]
..LN452:
        movl      $.L_2__STRING.1, %edi                         #86.3 c1
..LN453:
        movq      %rax, %rsi                                    #86.3 c1
..LN454:
        xorl      %eax, %eax                                    #86.3 c3
..___tag_value_main.25:
..LN455:
#       printf(const char *__restrict__, ...)
        call      printf                                        #86.3
..___tag_value_main.26:
..LN456:
                                # LOE
..B1.54:                        # Preds ..B1.53
                                # Execution count [1.00e+00]
..LN457:
	.loc    1  88  is_stmt 1
        lea       16(%rsp), %rdi                                #88.3 c1
..LN458:
#       time(time_t *)
        call      time                                          #88.3 c3
..LN459:
                                # LOE
..B1.55:                        # Preds ..B1.54
                                # Execution count [1.00e+00]
..LN460:
	.loc    1  89  is_stmt 1
        lea       16(%rsp), %rdi                                #89.19 c1
..LN461:
#       localtime(const time_t *)
        call      localtime                                     #89.19 c3
..LN462:
                                # LOE rax
..B1.168:                       # Preds ..B1.55
                                # Execution count [1.00e+00]
..LN463:
	.loc    1  90  is_stmt 1
        movq      %rax, %rdi                                    #90.44 c1
..___tag_value_main.27:
..LN464:
#       asctime(const struct tm *)
        call      asctime                                       #90.44
..___tag_value_main.28:
..LN465:
                                # LOE rax
..B1.56:                        # Preds ..B1.168
                                # Execution count [1.00e+00]
..LN466:
        movl      $.L_2__STRING.2, %edi                         #90.3 c1
..LN467:
        movq      %rax, %rsi                                    #90.3 c1
..LN468:
        xorl      %eax, %eax                                    #90.3 c3
..___tag_value_main.29:
..LN469:
#       printf(const char *__restrict__, ...)
        call      printf                                        #90.3
..___tag_value_main.30:
..LN470:
                                # LOE
..B1.57:                        # Preds ..B1.56
                                # Execution count [1.00e+00]
..LN471:
	.loc    1  92  is_stmt 1
        movl      steps(%rip), %r13d                            #92.12 c1
..LN472:
        movl      %r13d, k(%rip)                                #92.8 c5 stall 1
..LN473:
        movl      stepstotal(%rip), %ecx                        #92.27 c5
..LN474:
        xorl      %edx, %edx                                    #92.3 c5
..LN475:
        lea       1(%r13), %eax                                 #92.19 c7
..LN476:
        cmpl      %ecx, %r13d                                   #92.27 c9
..LN477:
        jge       ..B1.138      # Prob 9%                       #92.27 c11
..LN478:
                                # LOE eax edx ecx r13d
..B1.58:                        # Preds ..B1.57
                                # Execution count [9.00e-01]
..LN479:
	.loc    1  45  is_stmt 1
        movl      SIZE(%rip), %r8d                              #45.27 c1
..LN480:
	.loc    1  55  is_stmt 1
        movl      %r13d, 8(%rsp)                                #55.3[spill] c1
..LN481:
	.loc    1  92  is_stmt 1
        subl      %r13d, %ecx                                   #92.27 c1
..LN482:
	.loc    1  46  is_stmt 1
        movq      a(%rip), %rsi                                 #46.18 c3
..LN483:
        movq      o(%rip), %r9                                  #46.7 c5
..LN484:
	.loc    1  29  is_stmt 1
        movl      %r8d, %ebx                                    #29.29 c5
..LN485:
        shrl      $31, %ebx                                     #29.29 c7
..LN486:
	.loc    1  55  is_stmt 1
        movq      %rsi, %r14                                    #55.3 c7
..LN487:
	.loc    1  46  is_stmt 1
        movq      b(%rip), %rdi                                 #46.31 c7
..LN488:
	.loc    1  29  is_stmt 1
        addl      %r8d, %ebx                                    #29.29 c9
..LN489:
	.loc    1  45  is_stmt 1
        movslq    %r8d, %r8                                     #45.3 c9
..LN490:
        movq      %r8, 112(%rsp)                                #45.3[spill] c11
..LN491:
        movq      %r9, %r11                                     #45.3 c11
..LN492:
	.loc    1  55  is_stmt 1
        andq      $63, %r14                                     #55.3 c11
..LN493:
        movl      %r14d, 72(%rsp)                               #55.3[spill] c11
..LN494:
	.loc    1  45  is_stmt 1
        andq      $63, %r11                                     #45.3 c13
..LN495:
	.loc    1  55  is_stmt 1
        movl      %r11d, 80(%rsp)                               #55.3[spill] c13
..LN496:
	.loc    1  45  is_stmt 1
        movl      %r11d, %r10d                                  #45.3 c13
..LN497:
	.loc    1  55  is_stmt 1
        vmovups   .L_2il0floatpacket.0(%rip), %zmm1             #55.3 c13
..LN498:
        movl      %r8d, %r12d                                   #55.3 c15
..LN499:
        movl      %r14d, %r15d                                  #55.3 c15
..LN500:
        vmovdqu32 .L_2il0floatpacket.2(%rip), %zmm0             #55.3 c15
..LN501:
	.loc    1  45  is_stmt 1
        andl      $3, %r10d                                     #45.3 c17
..LN502:
	.loc    1  55  is_stmt 1
        movl      %r10d, 120(%rsp)                              #55.3[spill] c19
..LN503:
        andl      $-32, %r12d                                   #55.3 c19
..LN504:
        movl      %r12d, (%rsp)                                 #55.3[spill] c21
..LN505:
        andl      $3, %r15d                                     #55.3 c21
..LN506:
        movl      %r15d, 64(%rsp)                               #55.3[spill] c23
..LN507:
	.loc    1  29  is_stmt 1
        sarl      $1, %ebx                                      #29.29 c23
..LN508:
                                # LOE rsi rdi r9 eax edx ecx ebx r8d zmm0 zmm1
..B1.59:                        # Preds ..B1.136 ..B1.58
                                # Execution count [4.82e+00]
..L31:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN509:
	.loc    1  92  is_stmt 1
..LN510:
	.loc    1  55  is_stmt 1
        testl     %r8d, %r8d                                    #55.27 c1
..LN511:
        jle       ..B1.136      # Prob 50%                      #55.27 c3
..LN512:
                                # LOE rsi rdi r9 eax edx ecx ebx r8d zmm0 zmm1
..B1.60:                        # Preds ..B1.59
                                # Execution count [0.00e+00]
..LN513:
	.loc    1  45  is_stmt 1
        cmpl      $6, %r8d                                      #45.3 c1
..LN514:
        jg        ..B1.63       # Prob 50%                      #45.3 c3
..LN515:
                                # LOE rsi rdi r9 eax edx ecx ebx r8d zmm0 zmm1
..B1.61:                        # Preds ..B1.60
                                # Execution count [0.00e+00]
..LN516:
        testl     %ebx, %ebx                                    #45.3 c1
..LN517:
        jbe       ..B1.144      # Prob 10%                      #45.3 c3
..LN518:
                                # LOE rsi rdi r9 eax edx ecx ebx r8d zmm0 zmm1
..B1.62:                        # Preds ..B1.61
                                # Execution count [0.00e+00]
..LN519:
        movl      %ecx, 88(%rsp)                                #[spill] c1
..LN520:
        movl      64(%rsp), %ecx                                #[spill] c1
..LN521:
        movl      %edx, 96(%rsp)                                #[spill] c3
..LN522:
        movl      72(%rsp), %r11d                               #[spill] c5
..LN523:
        movl      %eax, 104(%rsp)                               #[spill] c5
..LN524:
        movl      80(%rsp), %r12d                               #[spill] c7
..LN525:
        movq      112(%rsp), %rax                               #[spill] c9
..LN526:
        jmp       ..B1.90       # Prob 100%                     # c9
..LN527:
                                # LOE rax rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.63:                        # Preds ..B1.60
                                # Execution count [0.00e+00]
..LN528:
        movl      %ecx, 88(%rsp)                                #[spill] c1
..LN529:
        movl      64(%rsp), %ecx                                #[spill] c1
..LN530:
        movl      %edx, 96(%rsp)                                #[spill] c3
..LN531:
        movl      72(%rsp), %r11d                               #[spill] c5
..LN532:
        movl      %eax, 104(%rsp)                               #[spill] c5
..LN533:
        movl      80(%rsp), %r12d                               #[spill] c7
..LN534:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.64:                        # Preds ..B1.148 ..B1.63
                                # Execution count [0.00e+00]
..LN535:
	.loc    1  46  is_stmt 1
        cmpq      %rdi, %r9                                     #46.31 c1
..LN536:
        jbe       ..B1.66       # Prob 50%                      #46.31 c3
..LN537:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.65:                        # Preds ..B1.64
                                # Execution count [0.00e+00]
..LN538:
        movq      112(%rsp), %rax                               #46.31[spill] c1
..LN539:
        movq      %r9, %rdx                                     #46.31 c1
..LN540:
        subq      %rdi, %rdx                                    #46.31 c3
..LN541:
        lea       (,%rax,4), %r10                               #46.31 c5
..LN542:
        cmpq      %r10, %rdx                                    #46.31 c7
..LN543:
        jge       ..B1.68       # Prob 50%                      #46.31 c9
..LN544:
        jmp       ..B1.88       # Prob 100%                     #46.31 c9
..LN545:
                                # LOE rsi rdi r9 r10 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.66:                        # Preds ..B1.64
                                # Execution count [0.00e+00]
..LN546:
        cmpq      %r9, %rdi                                     #46.31 c1
..LN547:
        jbe       ..B1.88       # Prob 50%                      #46.31 c3
..LN548:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.67:                        # Preds ..B1.66
                                # Execution count [0.00e+00]
..LN549:
        movq      112(%rsp), %rax                               #46.31[spill] c1
..LN550:
        movq      %rdi, %rdx                                    #46.31 c1
..LN551:
        subq      %r9, %rdx                                     #46.31 c3
..LN552:
        lea       (,%rax,4), %r10                               #46.31 c5
..LN553:
        cmpq      %r10, %rdx                                    #46.31 c7
..LN554:
        jl        ..B1.88       # Prob 50%                      #46.31 c9
..LN555:
                                # LOE rsi rdi r9 r10 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.68:                        # Preds ..B1.67 ..B1.65
                                # Execution count [0.00e+00]
..LN556:
        cmpq      %rsi, %r9                                     #46.18 c1
..LN557:
        jbe       ..B1.70       # Prob 50%                      #46.18 c3
..LN558:
                                # LOE rsi rdi r9 r10 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.69:                        # Preds ..B1.68
                                # Execution count [0.00e+00]
..LN559:
        movq      %r9, %rax                                     #46.18 c1
..LN560:
        subq      %rsi, %rax                                    #46.18 c3
..LN561:
        cmpq      %r10, %rax                                    #46.18 c5
..LN562:
        jge       ..B1.72       # Prob 50%                      #46.18 c7
..LN563:
        jmp       ..B1.88       # Prob 100%                     #46.18 c7
..LN564:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.70:                        # Preds ..B1.68
                                # Execution count [0.00e+00]
..LN565:
        cmpq      %r9, %rsi                                     #46.18 c1
..LN566:
        jbe       ..B1.88       # Prob 50%                      #46.18 c3
..LN567:
                                # LOE rsi rdi r9 r10 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.71:                        # Preds ..B1.70
                                # Execution count [0.00e+00]
..LN568:
        movq      %rsi, %rax                                    #46.18 c1
..LN569:
        subq      %r9, %rax                                     #46.18 c3
..LN570:
        cmpq      %r10, %rax                                    #46.18 c5
..LN571:
        jl        ..B1.88       # Prob 50%                      #46.18 c7
..LN572:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.72:                        # Preds ..B1.69 ..B1.71
                                # Execution count [2.25e+00]
..LN573:
	.loc    1  45  is_stmt 1
        cmpl      $433, %r8d                                    #45.3 c1
..LN574:
        jl        ..B1.147      # Prob 10%                      #45.3 c3
..LN575:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.73:                        # Preds ..B1.72
                                # Execution count [2.25e+00]
..LN576:
        movl      %r12d, %r14d                                  #45.3 c1
..LN577:
        testl     %r12d, %r12d                                  #45.3 c1
..LN578:
        je        ..B1.76       # Prob 50%                      #45.3 c3
..LN579:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d r14d zmm0 zmm1
..B1.74:                        # Preds ..B1.73
                                # Execution count [2.25e+00]
..LN580:
        cmpl      $0, 120(%rsp)                                 #45.3[spill] c1
..LN581:
        jne       ..B1.146      # Prob 10%                      #45.3 c3
..LN582:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.75:                        # Preds ..B1.74
                                # Execution count [0.00e+00]
..LN583:
        movl      %r12d, %r14d                                  #45.3 c1
..LN584:
        negl      %r14d                                         #45.3 c3
..LN585:
        addl      $64, %r14d                                    #45.3 c5
..LN586:
        shrl      $2, %r14d                                     #45.3 c7
..LN587:
        cmpl      %r14d, %r8d                                   #45.3 c9
..LN588:
        cmovl     %r8d, %r14d                                   #45.3 c11
..LN589:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d r14d zmm0 zmm1
..B1.76:                        # Preds ..B1.75 ..B1.73
                                # Execution count [2.50e+00]
..LN590:
        movl      %r8d, %edx                                    #45.3 c1
..LN591:
        subl      %r14d, %edx                                   #45.3 c3
..LN592:
        andl      $31, %edx                                     #45.3 c5
..LN593:
        negl      %edx                                          #45.3 c7
..LN594:
        addl      %r8d, %edx                                    #45.3 c9
..LN595:
        cmpl      $1, %r14d                                     #45.3 c9
..LN596:
        jb        ..B1.80       # Prob 50%                      #45.3 c11
..LN597:
                                # LOE rsi rdi r9 edx ecx ebx r8d r11d r12d r14d zmm0 zmm1
..B1.77:                        # Preds ..B1.76
                                # Execution count [2.25e+00]
..LN598:
        vmovaps   %zmm0, %zmm3                                  #45.3 c1
..LN599:
        xorl      %r13d, %r13d                                  #45.3 c1
..LN600:
        vpbroadcastd %r14d, %zmm2                               #45.3 c1
..LN601:
        movslq    %r14d, %r10                                   #45.3 c1
..LN602:
        xorl      %eax, %eax                                    #45.3 c3
..LN603:
                                # LOE rax rsi rdi r9 r10 r13 edx ecx ebx r8d r11d r12d r14d zmm0 zmm1 zmm2 zmm3
..B1.78:                        # Preds ..B1.78 ..B1.77
                                # Execution count [1.25e+01]
..L32:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS VECTORIZED
                # PEELED LOOP FOR VECTORIZATION
                # MASKED VECTORIZATION
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 3.283203
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 16
                # NORMALIZED VECTORIZATION OVERHEAD 1.125000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN604:
        vpcmpgtd  %zmm3, %zmm2, %k1                             #45.3 c1
..LN605:
        addq      $16, %r13                                     #45.3 c1
..LN606:
        vpaddd    %zmm1, %zmm3, %zmm3                           #45.3 c1
..LN607:
	.loc    1  46  is_stmt 1
        vmovups   (%rax,%rsi), %zmm4{%k1}{z}                    #46.18 c3
..LN608:
        vmovups   (%rax,%rdi), %zmm5{%k1}{z}                    #46.31 c3
..LN609:
        vaddps    %zmm5, %zmm4, %zmm6                           #46.31 c9 stall 2
..LN610:
        vmovups   %zmm6, (%rax,%r9){%k1}                        #46.7 c15 stall 2
..LN611:
	.loc    1  45  is_stmt 1
        addq      $64, %rax                                     #45.3 c15
..LN612:
        cmpq      %r10, %r13                                    #45.3 c15
..LN613:
        jb        ..B1.78       # Prob 82%                      #45.3 c17
..LN614:
                                # LOE rax rsi rdi r9 r10 r13 edx ecx ebx r8d r11d r12d r14d zmm0 zmm1 zmm2 zmm3
..B1.79:                        # Preds ..B1.78
                                # Execution count [2.25e+00]
..LN615:
        cmpl      %r14d, %r8d                                   #45.3 c1
..LN616:
        je        ..B1.98       # Prob 10%                      #45.3 c3
..LN617:
                                # LOE rsi rdi r9 edx ecx ebx r8d r11d r12d r14d zmm0 zmm1
..B1.80:                        # Preds ..B1.79 ..B1.76 ..B1.147
                                # Execution count [0.00e+00]
..LN618:
        lea       32(%r14), %eax                                #45.3 c1
..LN619:
        cmpl      %eax, %edx                                    #45.3 c3
..LN620:
        jl        ..B1.84       # Prob 50%                      #45.3 c5
..LN621:
                                # LOE rsi rdi r9 edx ecx ebx r8d r11d r12d r14d zmm0 zmm1
..B1.81:                        # Preds ..B1.80
                                # Execution count [2.25e+00]
..LN622:
        movslq    %r14d, %r14                                   #45.3 c1
..LN623:
        movslq    %edx, %rax                                    #45.3 c1
..LN624:
                                # LOE rax rsi rdi r9 r14 edx ecx ebx r8d r11d r12d zmm0 zmm1
..B1.82:                        # Preds ..B1.82 ..B1.81
                                # Execution count [1.25e+01]
..L33:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS VECTORIZED
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 15.000000
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 32
                # NORMALIZED VECTORIZATION OVERHEAD 1.375000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN625:
	.loc    1  46  is_stmt 1
        vmovups   (%rsi,%r14,4), %zmm2                          #46.18 c1
..LN626:
        vmovups   64(%rsi,%r14,4), %zmm3                        #46.18 c1
..LN627:
        vaddps    (%rdi,%r14,4), %zmm2, %zmm4                   #46.31 c7 stall 2
..LN628:
        vaddps    64(%rdi,%r14,4), %zmm3, %zmm5                 #46.31 c7
..LN629:
        vmovups   %zmm4, (%r9,%r14,4)                           #46.7 c13 stall 2
..LN630:
        vmovups   %zmm5, 64(%r9,%r14,4)                         #46.7 c13
..LN631:
	.loc    1  45  is_stmt 1
        addq      $32, %r14                                     #45.3 c13
..LN632:
        cmpq      %rax, %r14                                    #45.3 c15
..LN633:
        jb        ..B1.82       # Prob 82%                      #45.3 c17
..LN634:
                                # LOE rax rsi rdi r9 r14 edx ecx ebx r8d r11d r12d zmm0 zmm1
..B1.84:                        # Preds ..B1.82 ..B1.80 ..B1.146
                                # Execution count [2.50e+00]
..LN635:
        lea       1(%rdx), %eax                                 #45.3 c1
..LN636:
        cmpl      %r8d, %eax                                    #45.3 c3
..LN637:
        ja        ..B1.98       # Prob 50%                      #45.3 c5
..LN638:
                                # LOE rsi rdi r9 edx ecx ebx r8d r11d r12d zmm0 zmm1
..B1.85:                        # Preds ..B1.84
                                # Execution count [2.25e+00]
..LN639:
        movl      %r8d, %r10d                                   #45.3 c1
..LN640:
        vmovaps   %zmm0, %zmm3                                  #45.3 c1
..LN641:
        xorl      %eax, %eax                                    #45.3 c1
..LN642:
        subl      %edx, %r10d                                   #45.3 c3
..LN643:
	.loc    1  46  is_stmt 1
        movslq    %edx, %rdx                                    #46.18 c3
..LN644:
        lea       (%r9,%rdx,4), %r15                            #46.7 c5
..LN645:
        lea       (%rdi,%rdx,4), %r14                           #46.31 c5
..LN646:
        lea       (%rsi,%rdx,4), %r13                           #46.18 c7
..LN647:
	.loc    1  45  is_stmt 1
        negq      %rdx                                          #45.3 c7
..LN648:
        vpbroadcastd %r10d, %zmm2                               #45.3 c7
..LN649:
        xorl      %r10d, %r10d                                  #45.3 c7
..LN650:
        addq      112(%rsp), %rdx                               #45.3[spill] c9
..LN651:
                                # LOE rax rdx rsi rdi r9 r10 r13 r14 r15 ecx ebx r8d r11d r12d zmm0 zmm1 zmm2 zmm3
..B1.86:                        # Preds ..B1.86 ..B1.85
                                # Execution count [1.25e+01]
..L34:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS VECTORIZED
                # REMAINDER LOOP FOR VECTORIZATION
                # MASKED VECTORIZATION
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 6.613281
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 16
                # NORMALIZED VECTORIZATION OVERHEAD 1.125000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN652:
        vpcmpgtd  %zmm3, %zmm2, %k1                             #45.3 c1
..LN653:
        addq      $16, %rax                                     #45.3 c1
..LN654:
        vpaddd    %zmm1, %zmm3, %zmm3                           #45.3 c1
..LN655:
	.loc    1  46  is_stmt 1
        vmovups   (%r10,%r13), %zmm4{%k1}{z}                    #46.18 c3
..LN656:
        vmovups   (%r10,%r14), %zmm5{%k1}{z}                    #46.31 c3
..LN657:
        vaddps    %zmm5, %zmm4, %zmm6                           #46.31 c9 stall 2
..LN658:
        vmovups   %zmm6, (%r10,%r15){%k1}                       #46.7 c15 stall 2
..LN659:
	.loc    1  45  is_stmt 1
        addq      $64, %r10                                     #45.3 c15
..LN660:
        cmpq      %rdx, %rax                                    #45.3 c15
..LN661:
        jb        ..B1.86       # Prob 82%                      #45.3 c17
..LN662:
        jmp       ..B1.98       # Prob 100%                     #45.3 c17
..LN663:
                                # LOE rax rdx rsi rdi r9 r10 r13 r14 r15 ecx ebx r8d r11d r12d zmm0 zmm1 zmm2 zmm3
..B1.88:                        # Preds ..B1.65 ..B1.66 ..B1.67 ..B1.69 ..B1.70
                                #       ..B1.71
                                # Execution count [2.50e+00]
..LN664:
        testl     %ebx, %ebx                                    #45.3 c1
..LN665:
        jbe       ..B1.152      # Prob 10%                      #45.3 c3
..LN666:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.89:                        # Preds ..B1.88
                                # Execution count [2.25e+00]
..LN667:
        movq      112(%rsp), %rax                               #[spill] c1
..LN668:
                                # LOE rax rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.90:                        # Preds ..B1.89 ..B1.62
                                # Execution count [2.25e+00]
..LN669:
        xorl      %edx, %edx                                    #45.3 c1
..LN670:
                                # LOE rax rsi rdi r9 edx ecx ebx r8d r11d r12d zmm0 zmm1
..B1.91:                        # Preds ..B1.91 ..B1.90
                                # Execution count [6.25e+00]
..L35:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 2
                # LOOP WAS UNROLLED BY 2
                # %s was not vectorized: non-vectorizable loop instance from multiversioning
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
..LN671:
	.loc    1  46  is_stmt 1
        lea       (%rdx,%rdx), %r10d                            #46.18 c1
..LN672:
	.loc    1  45  is_stmt 1
        addl      $1, %edx                                      #45.3 c1
..LN673:
	.loc    1  46  is_stmt 1
        movslq    %r10d, %r10                                   #46.31 c3
..LN674:
        vmovss    (%rsi,%r10,4), %xmm2                          #46.18 c5
..LN675:
        vaddss    (%rdi,%r10,4), %xmm2, %xmm3                   #46.31 c11 stall 2
..LN676:
        vmovss    %xmm3, (%r9,%r10,4)                           #46.7 c17 stall 2
..LN677:
        vmovss    4(%rsi,%r10,4), %xmm4                         #46.18 c17
..LN678:
        vaddss    4(%rdi,%r10,4), %xmm4, %xmm5                  #46.31 c23 stall 2
..LN679:
        vmovss    %xmm5, 4(%r9,%r10,4)                          #46.7 c29 stall 2
..LN680:
	.loc    1  45  is_stmt 1
        cmpl      %ebx, %edx                                    #45.3 c29
..LN681:
        jb        ..B1.91       # Prob 64%                      #45.3 c31
..LN682:
                                # LOE rax rsi rdi r9 edx ecx ebx r8d r11d r12d zmm0 zmm1
..B1.92:                        # Preds ..B1.91
                                # Execution count [2.25e+00]
..LN683:
	.loc    1  46  is_stmt 1
        lea       1(%rdx,%rdx), %r10d                           #46.7 c1
..LN684:
	.loc    1  45  is_stmt 1
        movslq    %r10d, %r10                                   #45.3 c3
..LN685:
	.loc    1  46  is_stmt 1
        addq      $-1, %r10                                     #46.7 c5
..LN686:
	.loc    1  45  is_stmt 1
        cmpq      %rax, %r10                                    #45.3 c7
..LN687:
        jae       ..B1.95       # Prob 10%                      #45.3 c9
..LN688:
                                # LOE rax rsi rdi r9 r10 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.94:                        # Preds ..B1.145 ..B1.92 ..B1.153
                                # Execution count [2.25e+00]
..L36:
                # optimization report
                # REMAINDER LOOP
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 2
                # %s was not vectorized: non-vectorizable loop instance from multiversioning
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
..LN689:
	.loc    1  46  is_stmt 1
        vmovss    (%rsi,%r10,4), %xmm2                          #46.18 c1
..LN690:
        vaddss    (%rdi,%r10,4), %xmm2, %xmm3                   #46.31 c7 stall 2
..LN691:
        vmovss    %xmm3, (%r9,%r10,4)                           #46.7 c13 stall 2
..LN692:
                                # LOE rax rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.95:                        # Preds ..B1.92 ..B1.94
                                # Execution count [0.00e+00]
..LN693:
	.loc    1  55  is_stmt 1
        cmpl      $6, %r8d                                      #55.3 c1
..LN694:
        jle       ..B1.175      # Prob 50%                      #55.3 c3
..LN695:
                                # LOE rax rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.98:                        # Preds ..B1.95 ..B1.86 ..B1.152 ..B1.84 ..B1.79
                                #      
                                # Execution count [0.00e+00]
..LN696:
	.loc    1  56  is_stmt 1
        cmpq      %rdi, %rsi                                    #56.31 c1
..LN697:
        jbe       ..B1.101      # Prob 50%                      #56.31 c3
..LN698:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.99:                        # Preds ..B1.98
                                # Execution count [0.00e+00]
..LN699:
        movq      112(%rsp), %rax                               #56.31[spill] c1
..LN700:
        movq      %rsi, %rdx                                    #56.31 c1
..LN701:
        subq      %rdi, %rdx                                    #56.31 c3
..LN702:
        lea       (,%rax,4), %r10                               #56.31 c5
..LN703:
        cmpq      %r10, %rdx                                    #56.31 c7
..LN704:
        jge       ..B1.103      # Prob 50%                      #56.31 c9
..LN705:
        jmp       ..B1.175      # Prob 100%                     #56.31 c9
..LN706:
                                # LOE rsi rdi r9 r10 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.101:                       # Preds ..B1.98
                                # Execution count [0.00e+00]
..LN707:
        cmpq      %rsi, %rdi                                    #56.31 c1
..LN708:
        jbe       ..B1.175      # Prob 50%                      #56.31 c3
..LN709:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.102:                       # Preds ..B1.101
                                # Execution count [0.00e+00]
..LN710:
        movq      112(%rsp), %rax                               #56.31[spill] c1
..LN711:
        movq      %rdi, %rdx                                    #56.31 c1
..LN712:
        subq      %rsi, %rdx                                    #56.31 c3
..LN713:
        lea       (,%rax,4), %r10                               #56.31 c5
..LN714:
        cmpq      %r10, %rdx                                    #56.31 c7
..LN715:
        jl        ..B1.175      # Prob 50%                      #56.31 c9
..LN716:
                                # LOE rsi rdi r9 r10 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.103:                       # Preds ..B1.102 ..B1.99
                                # Execution count [0.00e+00]
..LN717:
        cmpq      %r9, %rsi                                     #56.18 c1
..LN718:
        jbe       ..B1.106      # Prob 50%                      #56.18 c3
..LN719:
                                # LOE rsi rdi r9 r10 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.104:                       # Preds ..B1.103
                                # Execution count [0.00e+00]
..LN720:
        movq      %rsi, %rax                                    #56.18 c1
..LN721:
        subq      %r9, %rax                                     #56.18 c3
..LN722:
        cmpq      %r10, %rax                                    #56.18 c5
..LN723:
        jge       ..B1.108      # Prob 50%                      #56.18 c7
..LN724:
        jmp       ..B1.175      # Prob 100%                     #56.18 c7
..LN725:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.106:                       # Preds ..B1.103
                                # Execution count [0.00e+00]
..LN726:
        cmpq      %rsi, %r9                                     #56.18 c1
..LN727:
        jbe       ..B1.175      # Prob 50%                      #56.18 c3
..LN728:
                                # LOE rsi rdi r9 r10 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.107:                       # Preds ..B1.106
                                # Execution count [0.00e+00]
..LN729:
        movq      %r9, %rax                                     #56.18 c1
..LN730:
        subq      %rsi, %rax                                    #56.18 c3
..LN731:
        cmpq      %r10, %rax                                    #56.18 c5
..LN732:
        jl        ..B1.175      # Prob 50%                      #56.18 c7
..LN733:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.108:                       # Preds ..B1.104 ..B1.107
                                # Execution count [2.25e+00]
..LN734:
	.loc    1  55  is_stmt 1
        cmpl      $433, %r8d                                    #55.3 c1
..LN735:
        jl        ..B1.150      # Prob 10%                      #55.3 c3
..LN736:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.109:                       # Preds ..B1.108
                                # Execution count [2.25e+00]
..LN737:
        movl      %r11d, %r10d                                  #55.3 c1
..LN738:
        testl     %r11d, %r11d                                  #55.3 c1
..LN739:
        je        ..B1.112      # Prob 50%                      #55.3 c3
..LN740:
                                # LOE rsi rdi r9 ecx ebx r8d r10d r11d r12d zmm0 zmm1
..B1.110:                       # Preds ..B1.109
                                # Execution count [2.25e+00]
..LN741:
        testl     %ecx, %ecx                                    #55.3 c1
..LN742:
        jne       ..B1.154      # Prob 10%                      #55.3 c3
..LN743:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.111:                       # Preds ..B1.110
                                # Execution count [0.00e+00]
..LN744:
        movl      %r11d, %r10d                                  #55.3 c1
..LN745:
        negl      %r10d                                         #55.3 c3
..LN746:
        addl      $64, %r10d                                    #55.3 c5
..LN747:
        shrl      $2, %r10d                                     #55.3 c7
..LN748:
        cmpl      %r10d, %r8d                                   #55.3 c9
..LN749:
        cmovl     %r8d, %r10d                                   #55.3 c11
..LN750:
                                # LOE rsi rdi r9 ecx ebx r8d r10d r11d r12d zmm0 zmm1
..B1.112:                       # Preds ..B1.111 ..B1.109
                                # Execution count [2.50e+00]
..LN751:
        movl      %r8d, %r13d                                   #55.3 c1
..LN752:
        subl      %r10d, %r13d                                  #55.3 c3
..LN753:
        andl      $31, %r13d                                    #55.3 c5
..LN754:
        negl      %r13d                                         #55.3 c7
..LN755:
        addl      %r8d, %r13d                                   #55.3 c9
..LN756:
        cmpl      $1, %r10d                                     #55.3 c9
..LN757:
        jb        ..B1.117      # Prob 50%                      #55.3 c11
..LN758:
                                # LOE rsi rdi r9 ecx ebx r8d r10d r11d r12d r13d zmm0 zmm1
..B1.114:                       # Preds ..B1.112
                                # Execution count [2.25e+00]
..LN759:
        vmovaps   %zmm0, %zmm3                                  #55.3 c1
..LN760:
        xorl      %r14d, %r14d                                  #55.3 c1
..LN761:
        vpbroadcastd %r10d, %zmm2                               #55.3 c1
..LN762:
        movslq    %r10d, %rdx                                   #55.3 c1
..LN763:
        xorl      %eax, %eax                                    #55.3 c3
..LN764:
                                # LOE rax rdx rsi rdi r9 r14 ecx ebx r8d r10d r11d r12d r13d zmm0 zmm1 zmm2 zmm3
..B1.115:                       # Preds ..B1.115 ..B1.114
                                # Execution count [1.25e+01]
..L37:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS VECTORIZED
                # PEELED LOOP FOR VECTORIZATION
                # MASKED VECTORIZATION
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 3.283203
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 16
                # NORMALIZED VECTORIZATION OVERHEAD 1.125000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN765:
        vpcmpgtd  %zmm3, %zmm2, %k1                             #55.3 c1
..LN766:
        addq      $16, %r14                                     #55.3 c1
..LN767:
        vpaddd    %zmm1, %zmm3, %zmm3                           #55.3 c1
..LN768:
	.loc    1  56  is_stmt 1
        vmovups   (%rax,%r9), %zmm4{%k1}{z}                     #56.18 c3
..LN769:
        vmovups   (%rax,%rdi), %zmm5{%k1}{z}                    #56.31 c3
..LN770:
        vaddps    %zmm5, %zmm4, %zmm6                           #56.31 c9 stall 2
..LN771:
        vmovups   %zmm6, (%rax,%rsi){%k1}                       #56.7 c15 stall 2
..LN772:
	.loc    1  55  is_stmt 1
        addq      $64, %rax                                     #55.3 c15
..LN773:
        cmpq      %rdx, %r14                                    #55.3 c15
..LN774:
        jb        ..B1.115      # Prob 82%                      #55.3 c17
..LN775:
                                # LOE rax rdx rsi rdi r9 r14 ecx ebx r8d r10d r11d r12d r13d zmm0 zmm1 zmm2 zmm3
..B1.116:                       # Preds ..B1.115
                                # Execution count [2.25e+00]
..LN776:
        cmpl      %r10d, %r8d                                   #55.3 c1
..LN777:
        je        ..B1.148      # Prob 10%                      #55.3 c3
..LN778:
                                # LOE rsi rdi r9 ecx ebx r8d r10d r11d r12d r13d zmm0 zmm1
..B1.117:                       # Preds ..B1.112 ..B1.116
                                # Execution count [2.02e+00]
..LN779:
        movl      %ecx, 64(%rsp)                                #[spill] c1
..LN780:
        movl      88(%rsp), %ecx                                #[spill] c1
..LN781:
        movl      %r11d, 72(%rsp)                               #[spill] c3
..LN782:
        movl      96(%rsp), %edx                                #[spill] c5
..LN783:
        movl      %r12d, 80(%rsp)                               #[spill] c5
..LN784:
        movl      104(%rsp), %eax                               #[spill] c7
..LN785:
                                # LOE rsi rdi r9 eax edx ecx ebx r8d r10d r13d zmm0 zmm1
..B1.118:                       # Preds ..B1.117 ..B1.150
                                # Execution count [0.00e+00]
..LN786:
        lea       32(%r10), %r11d                               #55.3 c1
..LN787:
        cmpl      %r11d, %r13d                                  #55.3 c3
..LN788:
        jl        ..B1.122      # Prob 50%                      #55.3 c5
..LN789:
                                # LOE rsi rdi r9 eax edx ecx ebx r8d r10d r13d zmm0 zmm1
..B1.119:                       # Preds ..B1.118
                                # Execution count [2.25e+00]
..LN790:
        movslq    %r10d, %r10                                   #55.3 c1
..LN791:
        movslq    %r13d, %r11                                   #55.3 c1
..LN792:
                                # LOE rsi rdi r9 r10 r11 eax edx ecx ebx r8d r13d zmm0 zmm1
..B1.120:                       # Preds ..B1.120 ..B1.119
                                # Execution count [1.25e+01]
..L38:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS VECTORIZED
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 15.000000
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 32
                # NORMALIZED VECTORIZATION OVERHEAD 1.375000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN793:
	.loc    1  56  is_stmt 1
        vmovups   (%r9,%r10,4), %zmm2                           #56.18 c1
..LN794:
        vmovups   64(%r9,%r10,4), %zmm3                         #56.18 c1
..LN795:
        vaddps    (%rdi,%r10,4), %zmm2, %zmm4                   #56.31 c7 stall 2
..LN796:
        vaddps    64(%rdi,%r10,4), %zmm3, %zmm5                 #56.31 c7
..LN797:
        vmovups   %zmm4, (%rsi,%r10,4)                          #56.7 c13 stall 2
..LN798:
        vmovups   %zmm5, 64(%rsi,%r10,4)                        #56.7 c13
..LN799:
	.loc    1  55  is_stmt 1
        addq      $32, %r10                                     #55.3 c13
..LN800:
        cmpq      %r11, %r10                                    #55.3 c15
..LN801:
        jb        ..B1.120      # Prob 82%                      #55.3 c17
..LN802:
                                # LOE rsi rdi r9 r10 r11 eax edx ecx ebx r8d r13d zmm0 zmm1
..B1.122:                       # Preds ..B1.120 ..B1.118 ..B1.154
                                # Execution count [2.50e+00]
..LN803:
        lea       1(%r13), %r10d                                #55.3 c1
..LN804:
        cmpl      %r8d, %r10d                                   #55.3 c3
..LN805:
        ja        ..B1.136      # Prob 50%                      #55.3 c5
..LN806:
                                # LOE rsi rdi r9 eax edx ecx ebx r8d r13d zmm0 zmm1
..B1.123:                       # Preds ..B1.122
                                # Execution count [2.25e+00]
..LN807:
        movl      %r8d, %r11d                                   #55.3 c1
..LN808:
        vmovaps   %zmm0, %zmm3                                  #55.3 c1
..LN809:
        xorl      %r10d, %r10d                                  #55.3 c1
..LN810:
        subl      %r13d, %r11d                                  #55.3 c3
..LN811:
	.loc    1  56  is_stmt 1
        movslq    %r13d, %r13                                   #56.18 c3
..LN812:
        lea       (%rsi,%r13,4), %r15                           #56.7 c5
..LN813:
        lea       (%rdi,%r13,4), %r14                           #56.31 c5
..LN814:
        lea       (%r9,%r13,4), %r12                            #56.18 c7
..LN815:
	.loc    1  55  is_stmt 1
        negq      %r13                                          #55.3 c7
..LN816:
        vpbroadcastd %r11d, %zmm2                               #55.3 c7
..LN817:
        xorl      %r11d, %r11d                                  #55.3 c7
..LN818:
        addq      112(%rsp), %r13                               #55.3[spill] c9
..LN819:
                                # LOE rsi rdi r9 r10 r11 r12 r13 r14 r15 eax edx ecx ebx r8d zmm0 zmm1 zmm2 zmm3
..B1.124:                       # Preds ..B1.124 ..B1.123
                                # Execution count [1.25e+01]
..L39:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS VECTORIZED
                # REMAINDER LOOP FOR VECTORIZATION
                # MASKED VECTORIZATION
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 6.613281
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 16
                # NORMALIZED VECTORIZATION OVERHEAD 1.125000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN820:
        vpcmpgtd  %zmm3, %zmm2, %k1                             #55.3 c1
..LN821:
        addq      $16, %r10                                     #55.3 c1
..LN822:
        vpaddd    %zmm1, %zmm3, %zmm3                           #55.3 c1
..LN823:
	.loc    1  56  is_stmt 1
        vmovups   (%r11,%r12), %zmm4{%k1}{z}                    #56.18 c3
..LN824:
        vmovups   (%r11,%r14), %zmm5{%k1}{z}                    #56.31 c3
..LN825:
        vaddps    %zmm5, %zmm4, %zmm6                           #56.31 c9 stall 2
..LN826:
        vmovups   %zmm6, (%r11,%r15){%k1}                       #56.7 c15 stall 2
..LN827:
	.loc    1  55  is_stmt 1
        addq      $64, %r11                                     #55.3 c15
..LN828:
        cmpq      %r13, %r10                                    #55.3 c15
..LN829:
        jb        ..B1.124      # Prob 82%                      #55.3 c17
..LN830:
        jmp       ..B1.136      # Prob 100%                     #55.3 c17
..LN831:
                                # LOE rsi rdi r9 r10 r11 r12 r13 r14 r15 eax edx ecx ebx r8d zmm0 zmm1 zmm2 zmm3
..B1.175:                       # Preds ..B1.102 ..B1.106 ..B1.107 ..B1.104 ..B1.99
                                #       ..B1.95 ..B1.101
                                # Execution count [0.00e+00]
..LN832:
        movl      %ecx, 64(%rsp)                                #[spill] c1
..LN833:
        movl      88(%rsp), %ecx                                #[spill] c1
..LN834:
        movl      %r11d, 72(%rsp)                               #[spill] c3
..LN835:
        movl      96(%rsp), %edx                                #[spill] c5
..LN836:
        movl      %r12d, 80(%rsp)                               #[spill] c5
..LN837:
        movl      104(%rsp), %eax                               #[spill] c7
..LN838:
                                # LOE rsi rdi r9 eax edx ecx ebx r8d zmm0 zmm1
..B1.130:                       # Preds ..B1.175 ..B1.144
                                # Execution count [2.50e+00]
..LN839:
        movl      $1, %r11d                                     #55.3 c1
..LN840:
        xorl      %r10d, %r10d                                  #55.3 c1
..LN841:
        testl     %ebx, %ebx                                    #55.3 c3
..LN842:
        jbe       ..B1.134      # Prob 10%                      #55.3 c5
..LN843:
                                # LOE rsi rdi r9 eax edx ecx ebx r8d r10d r11d zmm0 zmm1
..B1.132:                       # Preds ..B1.130 ..B1.132
                                # Execution count [6.25e+00]
..L40:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 2
                # LOOP WAS UNROLLED BY 2
                # %s was not vectorized: non-vectorizable loop instance from multiversioning
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
..LN844:
	.loc    1  56  is_stmt 1
        lea       (%r10,%r10), %r11d                            #56.18 c1
..LN845:
	.loc    1  55  is_stmt 1
        addl      $1, %r10d                                     #55.3 c1
..LN846:
	.loc    1  56  is_stmt 1
        movslq    %r11d, %r11                                   #56.31 c3
..LN847:
        vmovss    (%r9,%r11,4), %xmm2                           #56.18 c5
..LN848:
        vaddss    (%rdi,%r11,4), %xmm2, %xmm3                   #56.31 c11 stall 2
..LN849:
        vmovss    %xmm3, (%rsi,%r11,4)                          #56.7 c17 stall 2
..LN850:
        vmovss    4(%r9,%r11,4), %xmm4                          #56.18 c17
..LN851:
        vaddss    4(%rdi,%r11,4), %xmm4, %xmm5                  #56.31 c23 stall 2
..LN852:
        vmovss    %xmm5, 4(%rsi,%r11,4)                         #56.7 c29 stall 2
..LN853:
	.loc    1  55  is_stmt 1
        cmpl      %ebx, %r10d                                   #55.3 c29
..LN854:
        jb        ..B1.132      # Prob 64%                      #55.3 c31
..LN855:
                                # LOE rsi rdi r9 eax edx ecx ebx r8d r10d zmm0 zmm1
..B1.133:                       # Preds ..B1.132
                                # Execution count [2.25e+00]
..LN856:
	.loc    1  56  is_stmt 1
        lea       1(%r10,%r10), %r11d                           #56.7 c1
..LN857:
                                # LOE rsi rdi r9 eax edx ecx ebx r8d r11d zmm0 zmm1
..B1.134:                       # Preds ..B1.133 ..B1.130
                                # Execution count [2.50e+00]
..LN858:
	.loc    1  55  is_stmt 1
        lea       -1(%r11), %r10d                               #55.3 c1
..LN859:
        cmpl      %r8d, %r10d                                   #55.3 c3
..LN860:
        jae       ..B1.136      # Prob 10%                      #55.3 c5
..LN861:
                                # LOE rsi rdi r9 eax edx ecx ebx r8d r11d zmm0 zmm1
..B1.135:                       # Preds ..B1.134
                                # Execution count [2.25e+00]
..L41:
                # optimization report
                # REMAINDER LOOP
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 2
                # %s was not vectorized: non-vectorizable loop instance from multiversioning
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
..LN862:
	.loc    1  56  is_stmt 1
        movslq    %r11d, %r11                                   #56.18 c1
..LN863:
        vmovss    -4(%r9,%r11,4), %xmm2                         #56.18 c3
..LN864:
        vaddss    -4(%rdi,%r11,4), %xmm2, %xmm3                 #56.31 c9 stall 2
..LN865:
        vmovss    %xmm3, -4(%rsi,%r11,4)                        #56.7 c15 stall 2
..LN866:
                                # LOE rsi rdi r9 eax edx ecx ebx r8d zmm0 zmm1
..B1.136:                       # Preds ..B1.124 ..B1.122 ..B1.135 ..B1.134 ..B1.59
                                #      
                                # Execution count [4.78e+00]
..LN867:
	.loc    1  92  is_stmt 1
        addl      $1, %edx                                      #92.3 c1
..LN868:
        movl      %eax, steps(%rip)                             #92.39 c1
..LN869:
        addl      $1, %eax                                      #92.3 c1
..LN870:
        cmpl      %ecx, %edx                                    #92.3 c3
..LN871:
        jb        ..B1.59       # Prob 82%                      #92.3 c5
..LN872:
                                # LOE rsi rdi r9 eax edx ecx ebx r8d zmm0 zmm1
..B1.138:                       # Preds ..B1.148 ..B1.136 ..B1.57
                                # Execution count [1.00e+00]
..LN873:
	.loc    1  97  is_stmt 1
        lea       16(%rsp), %rdi                                #97.3 c1
..LN874:
#       time(time_t *)
        call      time                                          #97.3 c3
..LN875:
                                # LOE
..B1.139:                       # Preds ..B1.138
                                # Execution count [1.00e+00]
..LN876:
	.loc    1  98  is_stmt 1
        lea       16(%rsp), %rdi                                #98.17 c1
..LN877:
#       localtime(const time_t *)
        call      localtime                                     #98.17 c3
..LN878:
                                # LOE rax
..B1.170:                       # Preds ..B1.139
                                # Execution count [1.00e+00]
..LN879:
	.loc    1  100  is_stmt 1
        movq      %rax, %rdi                                    #100.44 c1
..___tag_value_main.42:
..LN880:
#       asctime(const struct tm *)
        call      asctime                                       #100.44
..___tag_value_main.43:
..LN881:
                                # LOE rax
..B1.140:                       # Preds ..B1.170
                                # Execution count [1.00e+00]
..LN882:
        movl      $.L_2__STRING.3, %edi                         #100.3 c1
..LN883:
        movq      %rax, %rsi                                    #100.3 c1
..LN884:
        xorl      %eax, %eax                                    #100.3 c3
..___tag_value_main.44:
..LN885:
#       printf(const char *__restrict__, ...)
        call      printf                                        #100.3
..___tag_value_main.45:
..LN886:
                                # LOE
..B1.141:                       # Preds ..B1.140
                                # Execution count [1.00e+00]
..LN887:
	.loc    1  116  is_stmt 1
        movq      24(%rsp), %rbx                                #116.10[spill] c1
	.cfi_restore 3
..LN888:
        movq      56(%rsp), %r12                                #116.10[spill] c1
	.cfi_restore 12
..LN889:
        xorl      %eax, %eax                                    #116.10 c1
..LN890:
        movq      48(%rsp), %r13                                #116.10[spill] c5 stall 1
	.cfi_restore 13
..LN891:
        movq      40(%rsp), %r14                                #116.10[spill] c5
	.cfi_restore 14
..LN892:
        movq      32(%rsp), %r15                                #116.10[spill] c9 stall 1
	.cfi_restore 15
..LN893:
	.loc    1  116  epilogue_begin  is_stmt 1
        movq      %rbp, %rsp                                    #116.10 c11
..LN894:
        popq      %rbp                                          #116.10
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN895:
        ret                                                     #116.10
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x18, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x38, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x30, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x28, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0x80, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x20, 0xff, 0xff, 0xff, 0x22
..LN896:
                                # LOE
..B1.142:                       # Preds ..B1.28
                                # Execution count [2.25e-01]: Infreq
..LN897:
	.loc    1  33  is_stmt 1
        xorl      %eax, %eax                                    #33.5 c1
..LN898:
        jmp       ..B1.39       # Prob 100%                     #33.5 c1
..LN899:
                                # LOE r12 eax ebx r8d r9d r13d r14d
..B1.143:                       # Preds ..B1.26
                                # Execution count [2.25e-01]: Infreq
..LN900:
	.loc    1  36  is_stmt 1
        vpbroadcastd %r9d, %zmm1                                #36.25 c1
..LN901:
        movl      %r9d, %edx                                    #36.25 c1
..LN902:
	.loc    1  33  is_stmt 1
        movl      (%rsp), %eax                                  #33.5[spill] c1
..LN903:
        xorl      %edi, %edi                                    #33.5 c1
..LN904:
	.loc    1  36  is_stmt 1
        shll      $4, %edx                                      #36.25 c3
..LN905:
        vpbroadcastd %edx, %zmm0                                #36.25 c5
..LN906:
        movl      %r8d, %edx                                    #36.25 c5
..LN907:
	.loc    1  34  is_stmt 1
        lea       (%r9,%r8), %esi                               #34.25 c7
..LN908:
	.loc    1  36  is_stmt 1
        imull     %r9d, %edx                                    #36.25 c7
..LN909:
	.loc    1  35  is_stmt 1
        lea       (%r9,%rbx), %ecx                              #35.18 c9
..LN910:
	.loc    1  36  is_stmt 1
        vpmulld   .L_2il0floatpacket.2(%rip), %zmm1, %zmm6      #36.25 c11
..LN911:
        jmp       ..B1.35       # Prob 100%                     #36.25 c11
..LN912:
                                # LOE r12 eax edx ecx ebx esi edi r8d r9d r13d r14d zmm0 zmm6
..B1.144:                       # Preds ..B1.61
                                # Execution count [0.00e+00]: Infreq
..LN913:
	.loc    1  45  is_stmt 1
        xorl      %r10d, %r10d                                  #45.3 c1
..LN914:
        cmpq      $0, 112(%rsp)                                 #45.3[spill] c1
..LN915:
        jbe       ..B1.130      # Prob 10%                      #45.3 c3
..LN916:
                                # LOE rsi rdi r9 r10 eax edx ecx ebx r8d zmm0 zmm1
..B1.145:                       # Preds ..B1.144
                                # Execution count [2.03e+00]: Infreq
..LN917:
        movl      %ecx, 88(%rsp)                                #[spill] c1
..LN918:
        movl      64(%rsp), %ecx                                #[spill] c1
..LN919:
        movl      %edx, 96(%rsp)                                #[spill] c3
..LN920:
        movl      72(%rsp), %r11d                               #[spill] c5
..LN921:
        movl      %eax, 104(%rsp)                               #[spill] c5
..LN922:
        movl      80(%rsp), %r12d                               #[spill] c7
..LN923:
        movq      112(%rsp), %rax                               #[spill] c9
..LN924:
        jmp       ..B1.94       # Prob 100%                     # c9
..LN925:
                                # LOE rax rsi rdi r9 r10 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.146:                       # Preds ..B1.74
                                # Execution count [2.25e-01]: Infreq
..LN926:
        xorl      %edx, %edx                                    #45.3 c1
..LN927:
        jmp       ..B1.84       # Prob 100%                     #45.3 c1
..LN928:
                                # LOE rsi rdi r9 edx ecx ebx r8d r11d r12d zmm0 zmm1
..B1.147:                       # Preds ..B1.72
                                # Execution count [2.25e-01]: Infreq
..LN929:
        movl      (%rsp), %edx                                  #45.3[spill] c1
..LN930:
        xorl      %r14d, %r14d                                  #45.3 c1
..LN931:
        jmp       ..B1.80       # Prob 100%                     #45.3 c1
..LN932:
                                # LOE rsi rdi r9 edx ecx ebx r8d r11d r12d r14d zmm0 zmm1
..B1.148:                       # Preds ..B1.116
                                # Execution count [2.25e-01]: Infreq
..LN933:
	.loc    1  56  is_stmt 1
        movl      8(%rsp), %eax                                 #56.31[spill] c1
..LN934:
	.loc    1  92  is_stmt 1
        addl      $1, 104(%rsp)                                 #92.3[spill] c1
..LN935:
	.loc    1  56  is_stmt 1
        movl      96(%rsp), %r10d                               #56.31[spill] c3
..LN936:
        lea       1(%r10,%rax), %edx                            #56.31 c7 stall 1
..LN937:
	.loc    1  92  is_stmt 1
        movl      %edx, steps(%rip)                             #92.39 c9
..LN938:
        addl      $1, %r10d                                     #92.3 c9
..LN939:
        movl      %r10d, 96(%rsp)                               #92.3[spill] c11
..LN940:
        cmpl      88(%rsp), %r10d                               #92.3[spill] c11
..LN941:
        jb        ..B1.64       # Prob 82%                      #92.3 c13
..LN942:
        jmp       ..B1.138      # Prob 100%                     #92.3 c13
..LN943:
                                # LOE rsi rdi r9 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.150:                       # Preds ..B1.108
                                # Execution count [2.25e-01]: Infreq
..LN944:
        movl      %ecx, 64(%rsp)                                #[spill] c1
..LN945:
        movl      88(%rsp), %ecx                                #[spill] c1
..LN946:
        movl      %r11d, 72(%rsp)                               #[spill] c3
..LN947:
	.loc    1  55  is_stmt 1
        xorl      %r10d, %r10d                                  #55.3 c3
..LN948:
        movl      %r12d, 80(%rsp)                               #[spill] c5
..LN949:
        movl      96(%rsp), %edx                                #[spill] c5
..LN950:
        movl      104(%rsp), %eax                               #[spill] c7
..LN951:
        movl      (%rsp), %r13d                                 #55.3[spill] c9
..LN952:
        jmp       ..B1.118      # Prob 100%                     #55.3 c9
..LN953:
                                # LOE rsi rdi r9 eax edx ecx ebx r8d r10d r13d zmm0 zmm1
..B1.152:                       # Preds ..B1.88
                                # Execution count [2.50e-01]: Infreq
..LN954:
	.loc    1  45  is_stmt 1
        xorl      %r10d, %r10d                                  #45.3 c1
..LN955:
        cmpq      $0, 112(%rsp)                                 #45.3[spill] c1
..LN956:
        jbe       ..B1.98       # Prob 10%                      #45.3 c3
..LN957:
                                # LOE rsi rdi r9 r10 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.153:                       # Preds ..B1.152
                                # Execution count [2.25e-01]: Infreq
..LN958:
        .byte     102                                           # c1
..LN959:
        .byte     15                                            # c1
..LN960:
        .byte     31                                            # c1
..LN961:
        .byte     132                                           # c1
..LN962:
        .byte     0                                             # c1
..LN963:
        .byte     0                                             # c1
..LN964:
        .byte     0                                             # c1
..LN965:
        .byte     0                                             # c1
..LN966:
        .byte     0                                             # c1
..LN967:
        movq      112(%rsp), %rax                               #[spill] c1
..LN968:
        jmp       ..B1.94       # Prob 100%                     # c1
..LN969:
                                # LOE rax rsi rdi r9 r10 ecx ebx r8d r11d r12d zmm0 zmm1
..B1.154:                       # Preds ..B1.110
                                # Execution count [2.25e-01]: Infreq
..LN970:
        movl      %ecx, 64(%rsp)                                #[spill] c1
..LN971:
        movl      88(%rsp), %ecx                                #[spill] c1
..LN972:
        movl      %r11d, 72(%rsp)                               #[spill] c3
..LN973:
	.loc    1  55  is_stmt 1
        xorl      %r13d, %r13d                                  #55.3 c3
..LN974:
        movl      %r12d, 80(%rsp)                               #[spill] c5
..LN975:
        movl      96(%rsp), %edx                                #[spill] c5
..LN976:
        movl      104(%rsp), %eax                               #[spill] c7
..LN977:
        jmp       ..B1.122      # Prob 100%                     # c7
        .align    16,0x90
..LN978:
                                # LOE rsi rdi r9 eax edx ecx ebx r8d r13d zmm0 zmm1
..LN979:
	.cfi_endproc
# mark_end;
	.type	main,@function
	.size	main,.-main
..LNmain.980:
.LNmain:
	.data
	.file   2 "/usr/include/time.h"
	.file   3 "/usr/include/bits/types.h"
# -- End  main
	.text
.L_2__routine_start_fillarray_1:
# -- Begin  fillarray
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl fillarray
# --- fillarray()
fillarray:
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_fillarray.65:
..L66:
                                                         #15.18
..LN981:
	.loc    1  15  is_stmt 1
        pushq     %rbp                                          #15.18
	.cfi_def_cfa_offset 16
..LN982:
        movq      %rsp, %rbp                                    #15.18
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
..LN983:
        andq      $-64, %rsp                                    #15.18
..LN984:
        subq      $192, %rsp                                    #15.18 c1
..LN985:
        movq      %rbx, 16(%rsp)                                #15.18[spill] c3
..LN986:
	.loc    1  21  prologue_end  is_stmt 1
        xorl      %edi, %edi                                    #21.9 c3
..LN987:
	.loc    1  15  is_stmt 1
        movq      %r15, 24(%rsp)                                #15.18[spill] c3
..LN988:
        movq      %r14, 32(%rsp)                                #15.18[spill] c5
..LN989:
        movq      %r13, 40(%rsp)                                #15.18[spill] c5
..LN990:
	.loc    1  21  is_stmt 1
#       time(time_t *)
        call      time                                          #21.9 c5
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x50, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x68, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x60, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x58, 0xff, 0xff, 0xff, 0x22
..LN991:
                                # LOE rax r12
..B2.2:                         # Preds ..B2.1
                                # Execution count [1.00e+00]
..LN992:
        movl      %eax, %edi                                    #21.3 c1
..LN993:
#       srand(unsigned int)
        call      srand                                         #21.3 c3
..LN994:
                                # LOE r12
..B2.3:                         # Preds ..B2.2
                                # Execution count [1.00e+00]
..LN995:
	.loc    1  23  is_stmt 1
        movslq    SIZE(%rip), %r14                              #23.23 c1
..LN996:
        lea       (,%r14,4), %r15                               #23.30 c5 stall 1
..LN997:
        movq      %r15, %rdi                                    #23.16 c7
..LN998:
#       malloc(unsigned long long)
        call      malloc                                        #23.16 c9
..LN999:
                                # LOE rax r12 r14 r15
..B2.54:                        # Preds ..B2.3
                                # Execution count [1.00e+00]
..LN1000:
        movq      %rax, %rbx                                    #23.16 c1
..LN1001:
                                # LOE rbx r12 r14 r15
..B2.4:                         # Preds ..B2.54
                                # Execution count [1.00e+00]
..LN1002:
	.loc    1  24  is_stmt 1
        movq      %r15, %rdi                                    #24.16 c1
..LN1003:
	.loc    1  23  is_stmt 1
        movq      %rbx, a(%rip)                                 #23.3 c1
..LN1004:
	.loc    1  24  is_stmt 1
#       malloc(unsigned long long)
        call      malloc                                        #24.16 c3
..LN1005:
                                # LOE rax rbx r12 r14 r15
..B2.55:                        # Preds ..B2.4
                                # Execution count [1.00e+00]
..LN1006:
        movq      %rax, %r13                                    #24.16 c1
..LN1007:
                                # LOE rbx r12 r13 r14 r15
..B2.5:                         # Preds ..B2.55
                                # Execution count [1.00e+00]
..LN1008:
	.loc    1  25  is_stmt 1
        movq      %r15, %rdi                                    #25.16 c1
..LN1009:
	.loc    1  24  is_stmt 1
        movq      %r13, b(%rip)                                 #24.3 c1
..LN1010:
	.loc    1  25  is_stmt 1
#       malloc(unsigned long long)
        call      malloc                                        #25.16 c3
..LN1011:
                                # LOE rax rbx r12 r13 r14
..B2.56:                        # Preds ..B2.5
                                # Execution count [1.00e+00]
..LN1012:
        movq      %rax, %r15                                    #25.16 c1
..LN1013:
                                # LOE rbx r12 r13 r14 r15
..B2.6:                         # Preds ..B2.56
                                # Execution count [1.00e+00]
..LN1014:
        movq      %r15, o(%rip)                                 #25.3 c1
..LN1015:
	.loc    1  27  is_stmt 1
#       rand(void)
        call      rand                                          #27.10 c1
..LN1016:
                                # LOE rbx r12 r13 r14 r15
..B2.7:                         # Preds ..B2.6
                                # Execution count [1.00e+00]
..LN1017:
	.loc    1  29  is_stmt 1
        xorl      %esi, %esi                                    #29.3 c1
..LN1018:
	.loc    1  30  is_stmt 1
        xorl      %r8d, %r8d                                    #30.12 c1
..LN1019:
	.loc    1  29  is_stmt 1
        testq     %r14, %r14                                    #29.29 c3
..LN1020:
        jle       ..B2.48       # Prob 9%                       #29.29 c5
..LN1021:
                                # LOE rbx r12 r13 r14 r15 esi r8d
..B2.8:                         # Preds ..B2.7
                                # Execution count [9.00e-01]
..LN1022:
	.loc    1  33  is_stmt 1
        movl      SIZE2(%rip), %ecx                             #33.46 c1
..LN1023:
        movq      %r15, 80(%rsp)                                #33.5[spill] c1
..LN1024:
	.loc    1  23  is_stmt 1
        addq      $999, %r14                                    #23.23 c1
..LN1025:
	.loc    1  33  is_stmt 1
        movq      %rbx, 88(%rsp)                                #33.5[spill] c3
..LN1026:
	.loc    1  23  is_stmt 1
        movq      $0x20c49ba5e353f7cf, %rax                     #23.23 c3
..LN1027:
	.loc    1  33  is_stmt 1
        movq      %r12, 8(%rsp)                                 #33.5[spill] c5
..LN1028:
	.loc    1  23  is_stmt 1
        imulq     %r14                                          #23.23 c5
..LN1029:
	.loc    1  33  is_stmt 1
        movl      %ecx, %r10d                                   #33.46 c5
..LN1030:
	.loc    1  30  is_stmt 1
        movl      maxrange(%rip), %edi                          #30.19 c5
..LN1031:
	.loc    1  33  is_stmt 1
        movl      %edi, 144(%rsp)                               #33.5[spill] c9 stall 1
..LN1032:
        shrl      $31, %r10d                                    #33.46 c9
..LN1033:
        movl      %ecx, %eax                                    #33.5 c9
..LN1034:
        vmovups   .L_2il0floatpacket.0(%rip), %zmm2             #33.5 c9
..LN1035:
        addl      %ecx, %r10d                                   #33.46 c11
..LN1036:
        movslq    %ecx, %r9                                     #33.5 c11
..LN1037:
        movq      %r9, 72(%rsp)                                 #33.5[spill] c13
..LN1038:
	.loc    1  23  is_stmt 1
        shrq      $7, %rdx                                      #23.23 c13
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x48, 0xff, 0xff, 0xff, 0x22
..LN1039:
        sarq      $63, %r14                                     #23.23 c13
..LN1040:
	.loc    1  33  is_stmt 1
        sarl      $1, %r10d                                     #33.46 c15
..LN1041:
        movl      %r10d, 152(%rsp)                              #33.5[spill] c17
..LN1042:
        andl      $-32, %eax                                    #33.5 c17
..LN1043:
        movl      %eax, (%rsp)                                  #33.5[spill] c19
..LN1044:
	.loc    1  23  is_stmt 1
        subq      %r14, %rdx                                    #23.23 c19
..LN1045:
	.loc    1  33  is_stmt 1
        movl      %edx, 136(%rsp)                               #33.5[spill] c19
..LN1046:
        movl      %ecx, %ebx                                    #33.5 c19
..LN1047:
        vmovdqu32 .L_2il0floatpacket.2(%rip), %zmm1             #33.5 c21
..LN1048:
	.loc    1  35  is_stmt 1
        vmovups   .L_2il0floatpacket.1(%rip), %zmm0             #35.18 c21
..LN1049:
	.loc    1  33  is_stmt 1
        movl      %esi, %r14d                                   #33.5 c21
..LN1050:
        movl      %r8d, %r12d                                   #33.5 c21
..LN1051:
                                # LOE r13 ebx r12d r14d
..B2.9:                         # Preds ..B2.46 ..B2.8
                                # Execution count [5.00e+00]
..L76:
                # optimization report
                # %s was not vectorized: inner loop was already vectorized
..LN1052:
	.loc    1  29  is_stmt 1
..LN1053:
	.loc    1  30  is_stmt 1
#       rand(void)
        call      rand                                          #30.12 c1
..LN1054:
                                # LOE r13 eax ebx r12d r14d
..B2.10:                        # Preds ..B2.9
                                # Execution count [5.00e+00]
..LN1055:
        cltd                                                    #30.19 c1
..LN1056:
        idivl     144(%rsp)                                     #30.19[spill] c3
..LN1057:
        movl      %edx, %r9d                                    #30.19 c7 stall 1
..LN1058:
	.loc    1  33  is_stmt 1
        testl     %ebx, %ebx                                    #33.46 c7
..LN1059:
        jle       ..B2.46       # Prob 50%                      #33.46 c9
..LN1060:
                                # LOE r13 ebx r9d r12d r14d
..B2.11:                        # Preds ..B2.10
                                # Execution count [0.00e+00]
..LN1061:
	.loc    1  34  is_stmt 1
        imull     $1000, %r14d, %r8d                            #34.7 c1
..LN1062:
        movq      88(%rsp), %rax                                #34.7[spill] c1
..LN1063:
        movslq    %r8d, %r10                                    #34.7 c5 stall 1
..LN1064:
        lea       (%rax,%r10,4), %rdi                           #34.7 c7
..LN1065:
        movq      %rdi, 120(%rsp)                               #34.7[spill] c9
..LN1066:
	.loc    1  35  is_stmt 1
        lea       (%r13,%r10,4), %rdx                           #35.7 c9
..LN1067:
        movq      %rdx, 112(%rsp)                               #35.7[spill] c11
..LN1068:
	.loc    1  34  is_stmt 1
        cmpq      %rdi, %rdx                                    #34.7 c11
..LN1069:
        jbe       ..B2.13       # Prob 50%                      #34.7 c13
..LN1070:
                                # LOE rdx rdi r10 r13 ebx r8d r9d r12d r14d
..B2.12:                        # Preds ..B2.11
                                # Execution count [0.00e+00]
..LN1071:
        movq      72(%rsp), %rax                                #34.7[spill] c1
..LN1072:
        subq      120(%rsp), %rdx                               #34.7[spill] c1
..LN1073:
        shlq      $2, %rax                                      #34.7 c5 stall 1
..LN1074:
        cmpq      %rax, %rdx                                    #34.7 c7
..LN1075:
        jge       ..B2.15       # Prob 50%                      #34.7 c9
..LN1076:
        jmp       ..B2.40       # Prob 100%                     #34.7 c9
..LN1077:
                                # LOE rax r10 r13 ebx r8d r9d r12d r14d
..B2.13:                        # Preds ..B2.11
                                # Execution count [0.00e+00]
..LN1078:
        movq      %rdi, %rax                                    #34.7 c1
..LN1079:
        cmpq      112(%rsp), %rax                               #34.7[spill] c3
..LN1080:
        jbe       ..B2.40       # Prob 50%                      #34.7 c5
..LN1081:
                                # LOE rdi r10 r13 ebx r8d r9d r12d r14d
..B2.14:                        # Preds ..B2.13
                                # Execution count [0.00e+00]
..LN1082:
        movq      72(%rsp), %rax                                #34.7[spill] c1
..LN1083:
        movq      %rdi, %rdx                                    #34.7 c1
..LN1084:
        subq      112(%rsp), %rdx                               #34.7[spill] c3
..LN1085:
        shlq      $2, %rax                                      #34.7 c5
..LN1086:
        cmpq      %rax, %rdx                                    #34.7 c7
..LN1087:
        jl        ..B2.40       # Prob 50%                      #34.7 c9
..LN1088:
                                # LOE rax r10 r13 ebx r8d r9d r12d r14d
..B2.15:                        # Preds ..B2.14 ..B2.12
                                # Execution count [0.00e+00]
..LN1089:
	.loc    1  36  is_stmt 1
        movq      80(%rsp), %rdx                                #36.7[spill] c1
..LN1090:
        lea       (%rdx,%r10,4), %rdi                           #36.7 c5 stall 1
..LN1091:
        movq      %rdi, 128(%rsp)                               #36.7[spill] c7
..LN1092:
	.loc    1  34  is_stmt 1
        cmpq      120(%rsp), %rdi                               #34.7[spill] c7
..LN1093:
        jbe       ..B2.17       # Prob 50%                      #34.7 c9
..LN1094:
                                # LOE rax rdi r10 r13 ebx r8d r9d r12d r14d
..B2.16:                        # Preds ..B2.15
                                # Execution count [0.00e+00]
..LN1095:
        movq      %rdi, %rdx                                    #34.7 c1
..LN1096:
        subq      120(%rsp), %rdx                               #34.7[spill] c3
..LN1097:
        cmpq      %rax, %rdx                                    #34.7 c5
..LN1098:
        jge       ..B2.19       # Prob 50%                      #34.7 c7
..LN1099:
        jmp       ..B2.40       # Prob 100%                     #34.7 c7
..LN1100:
                                # LOE rax rdi r10 r13 ebx r8d r9d r12d r14d
..B2.17:                        # Preds ..B2.15
                                # Execution count [0.00e+00]
..LN1101:
        movq      %rdi, %rdx                                    #34.7 c1
..LN1102:
        cmpq      120(%rsp), %rdx                               #34.7[spill] c3
..LN1103:
        jae       ..B2.40       # Prob 50%                      #34.7 c5
..LN1104:
                                # LOE rax rdi r10 r13 ebx r8d r9d r12d r14d
..B2.18:                        # Preds ..B2.17
                                # Execution count [0.00e+00]
..LN1105:
        movq      120(%rsp), %rdx                               #34.7[spill] c1
..LN1106:
        subq      128(%rsp), %rdx                               #34.7[spill] c5 stall 1
..LN1107:
        cmpq      %rax, %rdx                                    #34.7 c7
..LN1108:
        jl        ..B2.40       # Prob 50%                      #34.7 c9
..LN1109:
                                # LOE rax rdi r10 r13 ebx r8d r9d r12d r14d
..B2.19:                        # Preds ..B2.16 ..B2.18
                                # Execution count [0.00e+00]
..LN1110:
	.loc    1  35  is_stmt 1
        movq      %rdi, %rdx                                    #35.7 c1
..LN1111:
        cmpq      112(%rsp), %rdx                               #35.7[spill] c3
..LN1112:
        jbe       ..B2.21       # Prob 50%                      #35.7 c5
..LN1113:
                                # LOE rax rdx rdi r10 r13 ebx r8d r9d r12d r14d
..B2.20:                        # Preds ..B2.19
                                # Execution count [0.00e+00]
..LN1114:
        subq      112(%rsp), %rdx                               #35.7[spill] c1
..LN1115:
        cmpq      %rax, %rdx                                    #35.7 c3
..LN1116:
        jge       ..B2.23       # Prob 50%                      #35.7 c5
..LN1117:
        jmp       ..B2.40       # Prob 100%                     #35.7 c5
..LN1118:
                                # LOE rdi r10 r13 ebx r8d r9d r12d r14d
..B2.21:                        # Preds ..B2.19
                                # Execution count [0.00e+00]
..LN1119:
        cmpq      112(%rsp), %rdx                               #35.7[spill] c1
..LN1120:
        jae       ..B2.40       # Prob 50%                      #35.7 c3
..LN1121:
                                # LOE rax rdi r10 r13 ebx r8d r9d r12d r14d
..B2.22:                        # Preds ..B2.21
                                # Execution count [0.00e+00]
..LN1122:
        movq      112(%rsp), %rdx                               #35.7[spill] c1
..LN1123:
        subq      128(%rsp), %rdx                               #35.7[spill] c5 stall 1
..LN1124:
        cmpq      %rax, %rdx                                    #35.7 c7
..LN1125:
        jl        ..B2.40       # Prob 50%                      #35.7 c9
..LN1126:
                                # LOE rdi r10 r13 ebx r8d r9d r12d r14d
..B2.23:                        # Preds ..B2.20 ..B2.22
                                # Execution count [2.25e+00]
..LN1127:
	.loc    1  33  is_stmt 1
        cmpl      $537, %ebx                                    #33.5 c1
..LN1128:
        jl        ..B2.50       # Prob 10%                      #33.5 c3
..LN1129:
                                # LOE rdi r13 ebx r8d r9d r12d r14d
..B2.24:                        # Preds ..B2.23
                                # Execution count [2.25e+00]
..LN1130:
        andq      $63, %rdi                                     #33.5 c1
..LN1131:
        testl     %edi, %edi                                    #33.5 c1
..LN1132:
        je        ..B2.27       # Prob 50%                      #33.5 c3
..LN1133:
                                # LOE r13 ebx edi r8d r9d r12d r14d
..B2.25:                        # Preds ..B2.24
                                # Execution count [2.25e+00]
..LN1134:
        testl     $3, %edi                                      #33.5 c1
..LN1135:
        jne       ..B2.49       # Prob 10%                      #33.5 c3
..LN1136:
                                # LOE r13 ebx edi r8d r9d r12d r14d
..B2.26:                        # Preds ..B2.25
                                # Execution count [0.00e+00]
..LN1137:
        negl      %edi                                          #33.5 c1
..LN1138:
        addl      $64, %edi                                     #33.5 c3
..LN1139:
        shrl      $2, %edi                                      #33.5 c5
..LN1140:
        cmpl      %edi, %ebx                                    #33.5 c7
..LN1141:
        cmovl     %ebx, %edi                                    #33.5 c9
..LN1142:
                                # LOE r13 ebx edi r8d r9d r12d r14d
..B2.27:                        # Preds ..B2.26 ..B2.24
                                # Execution count [2.50e+00]
..LN1143:
        movl      %ebx, %eax                                    #33.5 c1
..LN1144:
	.loc    1  36  is_stmt 1
        movl      %r9d, %r10d                                   #36.25 c1
..LN1145:
	.loc    1  34  is_stmt 1
        lea       (%r9,%r8), %esi                               #34.25 c1
..LN1146:
	.loc    1  35  is_stmt 1
        lea       (%r9,%r12), %ecx                              #35.18 c1
..LN1147:
	.loc    1  33  is_stmt 1
        subl      %edi, %eax                                    #33.5 c3
..LN1148:
	.loc    1  36  is_stmt 1
        movl      %r8d, %edx                                    #36.25 c3
..LN1149:
	.loc    1  33  is_stmt 1
        andl      $31, %eax                                     #33.5 c5
..LN1150:
	.loc    1  36  is_stmt 1
        shll      $4, %r10d                                     #36.25 c5
..LN1151:
	.loc    1  33  is_stmt 1
        negl      %eax                                          #33.5 c7
..LN1152:
	.loc    1  36  is_stmt 1
        imull     %r9d, %edx                                    #36.25 c7
..LN1153:
	.loc    1  33  is_stmt 1
        addl      %ebx, %eax                                    #33.5 c9
..LN1154:
        cmpl      $1, %edi                                      #33.5 c11
..LN1155:
        jae       ..B2.29       # Prob 50%                      #33.5 c13
..LN1156:
                                # LOE r13 eax edx ecx ebx esi edi r8d r9d r10d r12d r14d
..B2.28:                        # Preds ..B2.27
                                # Execution count [1.25e+00]
..LN1157:
	.loc    1  36  is_stmt 1
        vpbroadcastd %r9d, %zmm1                                #36.25 c1
..LN1158:
        vpbroadcastd %r10d, %zmm0                               #36.25 c1
..LN1159:
        vpmulld   .L_2il0floatpacket.2(%rip), %zmm1, %zmm6      #36.25 c7 stall 2
..LN1160:
        jmp       ..B2.32       # Prob 100%                     #36.25 c7 stall 2
..LN1161:
                                # LOE r13 eax edx ecx ebx esi edi r8d r9d r12d r14d zmm0 zmm6
..B2.29:                        # Preds ..B2.27
                                # Execution count [2.25e+00]
..LN1162:
        vpbroadcastd %r9d, %zmm6                                #36.25 c1
..LN1163:
	.loc    1  33  is_stmt 1
        movl      %r12d, 48(%rsp)                               #33.5[spill] c1
..LN1164:
        movslq    %edi, %r15                                    #33.5 c1
..LN1165:
        movl      %r14d, 56(%rsp)                               #33.5[spill] c3
..LN1166:
        xorl      %r11d, %r11d                                  #33.5 c3
..LN1167:
        movq      %r13, 64(%rsp)                                #33.5[spill] c5
..LN1168:
	.loc    1  34  is_stmt 1
        vpbroadcastd %esi, %zmm4                                #34.25 c7
..LN1169:
	.loc    1  35  is_stmt 1
        vpbroadcastd %ecx, %zmm0                                #35.18 c7
..LN1170:
	.loc    1  36  is_stmt 1
        vpbroadcastd %edx, %zmm1                                #36.25 c13 stall 2
..LN1171:
        vpmulld   .L_2il0floatpacket.2(%rip), %zmm6, %zmm6      #36.25 c13
..LN1172:
	.loc    1  33  is_stmt 1
        vmovdqu32 .L_2il0floatpacket.2(%rip), %zmm5             #33.5 c15
..LN1173:
	.loc    1  34  is_stmt 1
        vpaddd    .L_2il0floatpacket.2(%rip), %zmm4, %zmm4      #34.25 c19 stall 1
..LN1174:
	.loc    1  36  is_stmt 1
        vpaddd    %zmm1, %zmm6, %zmm2                           #36.25 c19
..LN1175:
	.loc    1  35  is_stmt 1
        vpaddd    .L_2il0floatpacket.3(%rip), %zmm0, %zmm3      #35.18 c21
..LN1176:
	.loc    1  36  is_stmt 1
        vpbroadcastd %r10d, %zmm0                               #36.25 c21
..LN1177:
	.loc    1  33  is_stmt 1
        xorl      %r10d, %r10d                                  #33.5 c21
..LN1178:
        vpbroadcastd %edi, %zmm1                                #33.5 c23
..LN1179:
        vmovups   .L_2il0floatpacket.1(%rip), %zmm10            #33.5 c27 stall 1
..LN1180:
        vmovups   .L_2il0floatpacket.0(%rip), %zmm11            #33.5 c29
..LN1181:
        movq      128(%rsp), %r12                               #33.5[spill] c33 stall 1
..LN1182:
        movq      112(%rsp), %r13                               #33.5[spill] c35
..LN1183:
        movq      120(%rsp), %r14                               #33.5[spill] c37
        .align    16,0x90
..LN1184:
                                # LOE r10 r11 r12 r13 r14 r15 eax edx ecx ebx esi edi r8d r9d zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm10 zmm11
..B2.30:                        # Preds ..B2.30 ..B2.29
                                # Execution count [1.25e+01]
..L77:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS VECTORIZED
                # PEELED LOOP FOR VECTORIZATION
                # MASKED VECTORIZATION
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 5.039062
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 16
                # NORMALIZED VECTORIZATION OVERHEAD 0.875000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN1185:
        vpcmpgtd  %zmm5, %zmm1, %k1                             #33.5 c1
..LN1186:
	.loc    1  34  is_stmt 1
        vcvtdq2ps %zmm4, %zmm7                                  #34.25 c1
..LN1187:
        vmovups   %zmm7, (%r11,%r14){%k1}                       #34.7 c3
..LN1188:
	.loc    1  35  is_stmt 1
        vcvtdq2ps %zmm3, %zmm8                                  #35.25 c3
..LN1189:
        vmovups   %zmm8, (%r11,%r13){%k1}                       #35.7 c5
..LN1190:
	.loc    1  36  is_stmt 1
        vcvtdq2ps %zmm2, %zmm9                                  #36.25 c5
..LN1191:
        vmovups   %zmm9, (%r11,%r12){%k1}                       #36.7 c9 stall 1
..LN1192:
	.loc    1  33  is_stmt 1
        addq      $16, %r10                                     #33.5 c9
..LN1193:
        addq      $64, %r11                                     #33.5 c9
..LN1194:
        vpaddd    %zmm11, %zmm5, %zmm5                          #33.5 c9
..LN1195:
	.loc    1  34  is_stmt 1
        vpaddd    %zmm11, %zmm4, %zmm4                          #34.25 c9
..LN1196:
	.loc    1  35  is_stmt 1
        vpaddd    %zmm10, %zmm3, %zmm3                          #35.18 c11
..LN1197:
	.loc    1  36  is_stmt 1
        vpaddd    %zmm0, %zmm2, %zmm2                           #36.25 c11
..LN1198:
	.loc    1  33  is_stmt 1
        cmpq      %r15, %r10                                    #33.5 c11
..LN1199:
        jb        ..B2.30       # Prob 82%                      #33.5 c13
..LN1200:
                                # LOE r10 r11 r12 r13 r14 r15 eax edx ecx ebx esi edi r8d r9d zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm10 zmm11
..B2.31:                        # Preds ..B2.30
                                # Execution count [2.25e+00]
..LN1201:
        movl      48(%rsp), %r12d                               #[spill] c1
..LN1202:
        movl      56(%rsp), %r14d                               #[spill] c1
..LN1203:
        movq      64(%rsp), %r13                                #[spill] c5 stall 1
..LN1204:
        cmpl      %edi, %ebx                                    #33.5 c5
..LN1205:
        je        ..B2.46       # Prob 10%                      #33.5 c7
..LN1206:
                                # LOE r13 eax edx ecx ebx esi edi r8d r9d r12d r14d zmm0 zmm6
..B2.32:                        # Preds ..B2.31 ..B2.28 ..B2.50
                                # Execution count [0.00e+00]
..LN1207:
	.loc    1  36  is_stmt 1
        movl      %edi, %r11d                                   #36.25 c1
..LN1208:
	.loc    1  35  is_stmt 1
        movl      %edi, %r10d                                   #35.18 c1
..LN1209:
	.loc    1  36  is_stmt 1
        imull     %r9d, %r11d                                   #36.25 c3
..LN1210:
	.loc    1  35  is_stmt 1
        negl      %r10d                                         #35.18 c3
..LN1211:
	.loc    1  34  is_stmt 1
        addl      %edi, %esi                                    #34.25 c5
..LN1212:
	.loc    1  35  is_stmt 1
        addl      %r10d, %ecx                                   #35.18 c7
..LN1213:
	.loc    1  36  is_stmt 1
        addl      %r11d, %edx                                   #36.25 c7
..LN1214:
	.loc    1  34  is_stmt 1
        vpbroadcastd %esi, %zmm3                                #34.25 c7
..LN1215:
	.loc    1  35  is_stmt 1
        vpbroadcastd %ecx, %zmm2                                #35.18 c9
..LN1216:
	.loc    1  36  is_stmt 1
        vpbroadcastd %edx, %zmm1                                #36.25 c13 stall 1
..LN1217:
	.loc    1  33  is_stmt 1
        lea       32(%rdi), %edx                                #33.5 c15
..LN1218:
	.loc    1  34  is_stmt 1
        vpaddd    .L_2il0floatpacket.2(%rip), %zmm3, %zmm3      #34.25 c17
..LN1219:
	.loc    1  35  is_stmt 1
        vpaddd    .L_2il0floatpacket.3(%rip), %zmm2, %zmm2      #35.18 c19
..LN1220:
	.loc    1  36  is_stmt 1
        vpaddd    %zmm1, %zmm6, %zmm1                           #36.25 c19
..LN1221:
	.loc    1  33  is_stmt 1
        cmpl      %edx, %eax                                    #33.5 c19
..LN1222:
        jl        ..B2.36       # Prob 50%                      #33.5 c21
..LN1223:
                                # LOE r13 eax ebx edi r8d r9d r12d r14d zmm0 zmm1 zmm2 zmm3
..B2.33:                        # Preds ..B2.32
                                # Execution count [2.25e+00]
..LN1224:
        movslq    %edi, %rdi                                    #33.5 c1
..LN1225:
        movslq    %eax, %rdx                                    #33.5 c1
..LN1226:
        vmovups   .L_2il0floatpacket.1(%rip), %zmm10            #33.5 c1
..LN1227:
        vmovups   .L_2il0floatpacket.0(%rip), %zmm11            #33.5 c1
..LN1228:
        movq      128(%rsp), %r10                               #33.5[spill] c7 stall 2
..LN1229:
        movq      112(%rsp), %r11                               #33.5[spill] c7
..LN1230:
        movq      120(%rsp), %r15                               #33.5[spill] c11 stall 1
        .align    16,0x90
..LN1231:
                                # LOE rdx rdi r10 r11 r13 r15 eax ebx r8d r9d r12d r14d zmm0 zmm1 zmm2 zmm3 zmm10 zmm11
..B2.34:                        # Preds ..B2.34 ..B2.33
                                # Execution count [1.25e+01]
..L78:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS UNROLLED BY 2
                # LOOP WAS VECTORIZED
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 13.710938
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 16
                # NORMALIZED VECTORIZATION OVERHEAD 0.625000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN1232:
	.loc    1  34  is_stmt 1
        vpaddd    %zmm11, %zmm3, %zmm7                          #34.25 c1
..LN1233:
	.loc    1  35  is_stmt 1
        vpaddd    %zmm10, %zmm2, %zmm8                          #35.18 c1
..LN1234:
	.loc    1  36  is_stmt 1
        vpaddd    %zmm0, %zmm1, %zmm9                           #36.25 c3
..LN1235:
	.loc    1  34  is_stmt 1
        vcvtdq2ps %zmm3, %zmm4                                  #34.25 c3
..LN1236:
        vmovups   %zmm4, (%r15,%rdi,4)                          #34.7 c5
..LN1237:
	.loc    1  35  is_stmt 1
        vcvtdq2ps %zmm2, %zmm5                                  #35.25 c5
..LN1238:
        vmovups   %zmm5, (%r11,%rdi,4)                          #35.7 c7
..LN1239:
	.loc    1  36  is_stmt 1
        vcvtdq2ps %zmm1, %zmm6                                  #36.25 c7
..LN1240:
        vmovups   %zmm6, (%r10,%rdi,4)                          #36.7 c11 stall 1
..LN1241:
	.loc    1  34  is_stmt 1
        vcvtdq2ps %zmm7, %zmm3                                  #34.25 c11
..LN1242:
        vmovups   %zmm3, 64(%r15,%rdi,4)                        #34.7 c13
..LN1243:
	.loc    1  35  is_stmt 1
        vcvtdq2ps %zmm8, %zmm2                                  #35.25 c13
..LN1244:
        vmovups   %zmm2, 64(%r11,%rdi,4)                        #35.7 c17 stall 1
..LN1245:
	.loc    1  36  is_stmt 1
        vcvtdq2ps %zmm9, %zmm1                                  #36.25 c17
..LN1246:
        vmovups   %zmm1, 64(%r10,%rdi,4)                        #36.7 c19
..LN1247:
	.loc    1  33  is_stmt 1
        addq      $32, %rdi                                     #33.5 c19
..LN1248:
	.loc    1  34  is_stmt 1
        vpaddd    %zmm11, %zmm7, %zmm3                          #34.25 c19
..LN1249:
	.loc    1  35  is_stmt 1
        vpaddd    %zmm10, %zmm8, %zmm2                          #35.18 c19
..LN1250:
	.loc    1  36  is_stmt 1
        vpaddd    %zmm0, %zmm9, %zmm1                           #36.25 c21
..LN1251:
	.loc    1  33  is_stmt 1
        cmpq      %rdx, %rdi                                    #33.5 c21
..LN1252:
        jb        ..B2.34       # Prob 82%                      #33.5 c23
..LN1253:
                                # LOE rdx rdi r10 r11 r13 r15 eax ebx r8d r9d r12d r14d zmm0 zmm1 zmm2 zmm3 zmm10 zmm11
..B2.36:                        # Preds ..B2.34 ..B2.32 ..B2.49
                                # Execution count [2.50e+00]
..LN1254:
        lea       1(%rax), %edx                                 #33.5 c1
..LN1255:
        cmpl      %ebx, %edx                                    #33.5 c3
..LN1256:
        ja        ..B2.46       # Prob 50%                      #33.5 c5
..LN1257:
                                # LOE r13 eax ebx r8d r9d r12d r14d
..B2.37:                        # Preds ..B2.36
                                # Execution count [2.25e+00]
..LN1258:
	.loc    1  35  is_stmt 1
        imull     $-1000, %r14d, %r10d                          #35.18 c1
..LN1259:
        movl      %r9d, %r11d                                   #35.18 c1
..LN1260:
	.loc    1  34  is_stmt 1
        lea       (%r9,%r8), %edx                               #34.25 c1
..LN1261:
	.loc    1  36  is_stmt 1
        vpbroadcastd %r9d, %zmm0                                #36.25 c1
..LN1262:
	.loc    1  35  is_stmt 1
        subl      %eax, %r11d                                   #35.18 c3
..LN1263:
	.loc    1  36  is_stmt 1
        movq      128(%rsp), %r15                               #36.7[spill] c3
..LN1264:
	.loc    1  35  is_stmt 1
        addl      %r11d, %r10d                                  #35.18 c5
..LN1265:
	.loc    1  36  is_stmt 1
        addl      %eax, %r8d                                    #36.25 c5
..LN1266:
	.loc    1  35  is_stmt 1
        vpbroadcastd %r10d, %zmm2                               #35.18 c7
..LN1267:
	.loc    1  36  is_stmt 1
        imull     %r9d, %r8d                                    #36.25 c7
..LN1268:
        movl      %r9d, %edi                                    #36.25 c7
..LN1269:
	.loc    1  35  is_stmt 1
        movq      112(%rsp), %r10                               #35.7[spill] c7
..LN1270:
	.loc    1  36  is_stmt 1
        shll      $4, %edi                                      #36.25 c9
..LN1271:
	.loc    1  34  is_stmt 1
        addl      %eax, %edx                                    #34.25 c11
..LN1272:
	.loc    1  36  is_stmt 1
        vpbroadcastd %r8d, %zmm6                                #36.25 c11
..LN1273:
	.loc    1  33  is_stmt 1
        movl      %ebx, %r9d                                    #33.5 c11
..LN1274:
	.loc    1  35  is_stmt 1
        vpaddd    .L_2il0floatpacket.3(%rip), %zmm2, %zmm3      #35.18 c13
..LN1275:
	.loc    1  33  is_stmt 1
        subl      %eax, %r9d                                    #33.5 c13
..LN1276:
	.loc    1  34  is_stmt 1
        movslq    %eax, %rax                                    #34.7 c13
..LN1277:
	.loc    1  36  is_stmt 1
        vpbroadcastd %edi, %zmm2                                #36.25 c15
..LN1278:
	.loc    1  34  is_stmt 1
        movq      120(%rsp), %rdi                               #34.7[spill] c17
..LN1279:
        vpbroadcastd %edx, %zmm4                                #34.25 c21 stall 1
..LN1280:
	.loc    1  36  is_stmt 1
        vpmulld   .L_2il0floatpacket.2(%rip), %zmm0, %zmm1      #36.25 c21
..LN1281:
	.loc    1  33  is_stmt 1
        xorl      %edx, %edx                                    #33.5 c21
..LN1282:
        vpbroadcastd %r9d, %zmm0                                #33.5 c23
..LN1283:
	.loc    1  36  is_stmt 1
        vpaddd    %zmm6, %zmm1, %zmm1                           #36.25 c23
..LN1284:
        lea       (%r15,%rax,4), %r11                           #36.7 c27 stall 1
..LN1285:
	.loc    1  35  is_stmt 1
        lea       (%r10,%rax,4), %r10                           #35.7 c29
..LN1286:
	.loc    1  34  is_stmt 1
        lea       (%rdi,%rax,4), %r9                            #34.7 c29
..LN1287:
	.loc    1  33  is_stmt 1
        negq      %rax                                          #33.5 c29
..LN1288:
        xorl      %edi, %edi                                    #33.5 c29
..LN1289:
        vmovdqu32 .L_2il0floatpacket.2(%rip), %zmm5             #33.5 c31
..LN1290:
	.loc    1  34  is_stmt 1
        vpaddd    .L_2il0floatpacket.2(%rip), %zmm4, %zmm4      #34.25 c31
..LN1291:
	.loc    1  33  is_stmt 1
        addq      72(%rsp), %rax                                #33.5[spill] c33
..LN1292:
        vmovups   .L_2il0floatpacket.1(%rip), %zmm9             #33.5 c35
..LN1293:
        vmovups   .L_2il0floatpacket.0(%rip), %zmm10            #33.5 c37
        .align    16,0x90
..LN1294:
                                # LOE rax rdx rdi r9 r10 r11 r13 ebx r12d r14d zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm9 zmm10
..B2.38:                        # Preds ..B2.38 ..B2.37
                                # Execution count [1.25e+01]
..L79:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS VECTORIZED
                # REMAINDER LOOP FOR VECTORIZATION
                # MASKED VECTORIZATION
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 8.859375
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 16
                # NORMALIZED VECTORIZATION OVERHEAD 0.875000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN1295:
        vpcmpgtd  %zmm5, %zmm0, %k1                             #33.5 c1
..LN1296:
	.loc    1  34  is_stmt 1
        vcvtdq2ps %zmm4, %zmm6                                  #34.25 c1
..LN1297:
        vmovups   %zmm6, (%rdi,%r9){%k1}                        #34.7 c3
..LN1298:
	.loc    1  35  is_stmt 1
        vcvtdq2ps %zmm3, %zmm7                                  #35.25 c3
..LN1299:
        vmovups   %zmm7, (%rdi,%r10){%k1}                       #35.7 c5
..LN1300:
	.loc    1  36  is_stmt 1
        vcvtdq2ps %zmm1, %zmm8                                  #36.25 c5
..LN1301:
        vmovups   %zmm8, (%rdi,%r11){%k1}                       #36.7 c9 stall 1
..LN1302:
	.loc    1  33  is_stmt 1
        addq      $16, %rdx                                     #33.5 c9
..LN1303:
        addq      $64, %rdi                                     #33.5 c9
..LN1304:
        vpaddd    %zmm10, %zmm5, %zmm5                          #33.5 c9
..LN1305:
	.loc    1  34  is_stmt 1
        vpaddd    %zmm10, %zmm4, %zmm4                          #34.25 c9
..LN1306:
	.loc    1  35  is_stmt 1
        vpaddd    %zmm9, %zmm3, %zmm3                           #35.18 c11
..LN1307:
	.loc    1  36  is_stmt 1
        vpaddd    %zmm2, %zmm1, %zmm1                           #36.25 c11
..LN1308:
	.loc    1  33  is_stmt 1
        cmpq      %rax, %rdx                                    #33.5 c11
..LN1309:
        jb        ..B2.38       # Prob 82%                      #33.5 c13
..LN1310:
        jmp       ..B2.46       # Prob 100%                     #33.5 c13
..LN1311:
                                # LOE rax rdx rdi r9 r10 r11 r13 ebx r12d r14d zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm9 zmm10
..B2.40:                        # Preds ..B2.12 ..B2.13 ..B2.14 ..B2.16 ..B2.17
                                #       ..B2.18 ..B2.20 ..B2.21 ..B2.22
                                # Execution count [2.50e+00]
..LN1312:
        movl      $1, %edi                                      #33.5 c1
..LN1313:
        xorl      %edx, %edx                                    #33.5 c1
..LN1314:
        cmpl      $0, 152(%rsp)                                 #33.5[spill] c1
..LN1315:
        jbe       ..B2.44       # Prob 10%                      #33.5 c3
..LN1316:
                                # LOE r10 r13 edx ebx edi r8d r9d r12d r14d
..B2.41:                        # Preds ..B2.40
                                # Execution count [2.25e+00]
..LN1317:
	.loc    1  34  is_stmt 1
        movl      %r9d, %esi                                    #34.7 c1
..LN1318:
        movq      %r10, 104(%rsp)                               #34.7[spill] c1
..LN1319:
	.loc    1  35  is_stmt 1
        movl      %r9d, %r11d                                   #35.18 c1
..LN1320:
	.loc    1  34  is_stmt 1
        movl      %ebx, 96(%rsp)                                #34.7[spill] c1
..LN1321:
        imull     %r8d, %esi                                    #34.7 c3
..LN1322:
        movl      %r12d, 48(%rsp)                               #34.7[spill] c3
..LN1323:
	.loc    1  35  is_stmt 1
        subl      %r8d, %r11d                                   #35.18 c3
..LN1324:
	.loc    1  34  is_stmt 1
        movl      %r14d, 56(%rsp)                               #34.7[spill] c3
..LN1325:
        lea       (%r9,%r8), %ecx                               #34.25 c5
..LN1326:
        movl      %r11d, 160(%rsp)                              #34.7[spill] c5
..LN1327:
        xorl      %eax, %eax                                    #34.7 c5
..LN1328:
	.loc    1  36  is_stmt 1
        lea       (%r9,%rsi), %edi                              #36.25 c7
..LN1329:
	.loc    1  34  is_stmt 1
        movq      80(%rsp), %r10                                #34.7[spill] c7
..LN1330:
        movq      88(%rsp), %r11                                #34.7[spill] c9
..LN1331:
                                # LOE r10 r11 r13 eax edx ecx esi edi r8d r9d
..B2.42:                        # Preds ..B2.42 ..B2.41
                                # Execution count [6.25e+00]
..L80:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 2
                # LOOP WAS UNROLLED BY 2
                # %s was not vectorized: non-vectorizable loop instance from multiversioning
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
..LN1332:
	.loc    1  33  is_stmt 1
..LN1333:
	.loc    1  34  is_stmt 1
        lea       (%rdx,%rdx), %r12d                            #34.7 c1
..LN1334:
	.loc    1  35  is_stmt 1
        vxorps    %xmm1, %xmm1, %xmm1                           #35.25 c1
..LN1335:
	.loc    1  34  is_stmt 1
        lea       (%rcx,%rdx,2), %r14d                          #34.7 c1
..LN1336:
        vxorps    %xmm0, %xmm0, %xmm0                           #34.25 c1
..LN1337:
	.loc    1  35  is_stmt 1
        negl      %r12d                                         #35.18 c3
..LN1338:
        vxorps    %xmm4, %xmm4, %xmm4                           #35.25 c3
..LN1339:
	.loc    1  34  is_stmt 1
        lea       (%r8,%rdx,2), %ebx                            #34.7 c3
..LN1340:
        vcvtsi2ss %r14d, %xmm0, %xmm0                           #34.25 c3
..LN1341:
	.loc    1  36  is_stmt 1
        lea       (%rsi,%rax), %r15d                            #36.25 c3
..LN1342:
	.loc    1  34  is_stmt 1
        addl      $1, %r14d                                     #34.7 c3
..LN1343:
	.loc    1  35  is_stmt 1
        addl      160(%rsp), %r12d                              #35.18[spill] c5
..LN1344:
	.loc    1  36  is_stmt 1
        vxorps    %xmm2, %xmm2, %xmm2                           #36.25 c5
..LN1345:
	.loc    1  34  is_stmt 1
        vxorps    %xmm3, %xmm3, %xmm3                           #34.25 c5
..LN1346:
	.loc    1  33  is_stmt 1
        addl      $1, %edx                                      #33.5 c5
..LN1347:
	.loc    1  34  is_stmt 1
        movslq    %ebx, %rbx                                    #34.7 c5
..LN1348:
        vmovss    %xmm0, (%r11,%rbx,4)                          #34.7 c7
..LN1349:
	.loc    1  35  is_stmt 1
        vcvtsi2ss %r12d, %xmm1, %xmm1                           #35.25 c7
..LN1350:
        vmovss    %xmm1, (%r13,%rbx,4)                          #35.7 c9
..LN1351:
        addl      $-1, %r12d                                    #35.18 c9
..LN1352:
	.loc    1  36  is_stmt 1
        vxorps    %xmm5, %xmm5, %xmm5                           #36.25 c9
..LN1353:
        vcvtsi2ss %r15d, %xmm2, %xmm2                           #36.25 c9
..LN1354:
        vmovss    %xmm2, (%r10,%rbx,4)                          #36.7 c13 stall 1
..LN1355:
	.loc    1  35  is_stmt 1
        vcvtsi2ss %r12d, %xmm4, %xmm4                           #35.25 c13
..LN1356:
        vmovss    %xmm4, 4(%r13,%rbx,4)                         #35.7 c15
..LN1357:
	.loc    1  34  is_stmt 1
        vcvtsi2ss %r14d, %xmm3, %xmm3                           #34.25 c15
..LN1358:
        vmovss    %xmm3, 4(%r11,%rbx,4)                         #34.7 c19 stall 1
..LN1359:
	.loc    1  36  is_stmt 1
        lea       (%rdi,%rax), %r12d                            #36.25 c21
..LN1360:
        vcvtsi2ss %r12d, %xmm5, %xmm5                           #36.25 c23
..LN1361:
        vmovss    %xmm5, 4(%r10,%rbx,4)                         #36.7 c25
..LN1362:
	.loc    1  33  is_stmt 1
        lea       (%rax,%r9,2), %eax                            #33.5 c25
..LN1363:
        cmpl      152(%rsp), %edx                               #33.5[spill] c27
..LN1364:
        jb        ..B2.42       # Prob 64%                      #33.5 c29
..LN1365:
                                # LOE r10 r11 r13 eax edx ecx esi edi r8d r9d
..B2.43:                        # Preds ..B2.42
                                # Execution count [2.25e+00]
..LN1366:
        movq      104(%rsp), %r10                               #[spill] c1
..LN1367:
        movl      96(%rsp), %ebx                                #[spill] c1
..LN1368:
        movl      48(%rsp), %r12d                               #[spill] c5 stall 1
..LN1369:
        movl      56(%rsp), %r14d                               #[spill] c5
..LN1370:
	.loc    1  34  is_stmt 1
        lea       1(%rdx,%rdx), %edi                            #34.7 c9 stall 1
..LN1371:
                                # LOE r10 r13 ebx edi r8d r9d r12d r14d
..B2.44:                        # Preds ..B2.43 ..B2.40
                                # Execution count [2.50e+00]
..LN1372:
	.loc    1  33  is_stmt 1
        lea       -1(%rdi), %eax                                #33.5 c1
..LN1373:
        cmpl      %ebx, %eax                                    #33.5 c3
..LN1374:
        jae       ..B2.46       # Prob 10%                      #33.5 c5
..LN1375:
                                # LOE r10 r13 ebx edi r8d r9d r12d r14d
..B2.45:                        # Preds ..B2.44
                                # Execution count [2.25e+00]
..L81:
                # optimization report
                # REMAINDER LOOP
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 2
                # %s was not vectorized: non-vectorizable loop instance from multiversioning
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
..LN1376:
	.loc    1  34  is_stmt 1
        movslq    %edi, %rdi                                    #34.7 c1
..LN1377:
        lea       (%r9,%r8), %eax                               #34.25 c1
..LN1378:
	.loc    1  35  is_stmt 1
        movl      %r9d, %r15d                                   #35.18 c1
..LN1379:
	.loc    1  36  is_stmt 1
        vxorps    %xmm2, %xmm2, %xmm2                           #36.25 c1
..LN1380:
	.loc    1  34  is_stmt 1
        movq      88(%rsp), %r11                                #34.7[spill] c1
..LN1381:
        vxorps    %xmm0, %xmm0, %xmm0                           #34.25 c1
..LN1382:
	.loc    1  33  is_stmt 1
        lea       -1(%rax,%rdi), %edx                           #33.5 c3
..LN1383:
	.loc    1  35  is_stmt 1
        subl      %r8d, %r15d                                   #35.18 c3
..LN1384:
        vxorps    %xmm1, %xmm1, %xmm1                           #35.25 c3
..LN1385:
	.loc    1  34  is_stmt 1
        addq      %rdi, %r10                                    #34.7 c3
..LN1386:
	.loc    1  33  is_stmt 1
        lea       -1(%rdi,%r8), %eax                            #33.5 c5
..LN1387:
	.loc    1  35  is_stmt 1
        subl      %edi, %r15d                                   #35.18 c5
..LN1388:
	.loc    1  34  is_stmt 1
        vcvtsi2ss %edx, %xmm0, %xmm0                            #34.25 c5
..LN1389:
        vmovss    %xmm0, -4(%r11,%r10,4)                        #34.7 c7
..LN1390:
	.loc    1  36  is_stmt 1
        imull     %eax, %r9d                                    #36.25 c7
..LN1391:
	.loc    1  35  is_stmt 1
        addl      $1, %r15d                                     #35.18 c7
..LN1392:
        vcvtsi2ss %r15d, %xmm1, %xmm1                           #35.25 c9
..LN1393:
        vmovss    %xmm1, -4(%r13,%r10,4)                        #35.7 c11
..LN1394:
	.loc    1  36  is_stmt 1
        vcvtsi2ss %r9d, %xmm2, %xmm2                            #36.25 c11
..LN1395:
        movq      80(%rsp), %r9                                 #36.7[spill] c13
..LN1396:
        vmovss    %xmm2, -4(%r9,%r10,4)                         #36.7 c17 stall 1
..LN1397:
                                # LOE r13 ebx r12d r14d
..B2.46:                        # Preds ..B2.38 ..B2.44 ..B2.10 ..B2.36 ..B2.31
                                #       ..B2.45
                                # Execution count [5.00e+00]
..LN1398:
	.loc    1  29  is_stmt 1
        addl      $1, %r14d                                     #29.3 c1
..LN1399:
        addl      $-1000, %r12d                                 #29.3 c1
..LN1400:
        cmpl      136(%rsp), %r14d                              #29.3[spill] c3
..LN1401:
        jb        ..B2.9        # Prob 82%                      #29.3 c5
..LN1402:
                                # LOE r13 ebx r12d r14d
..B2.47:                        # Preds ..B2.46
                                # Execution count [9.00e-01]
..LN1403:
        movq      8(%rsp), %r12                                 #[spill] c1
	.cfi_restore 12
..LN1404:
                                # LOE r12
..B2.48:                        # Preds ..B2.47 ..B2.7
                                # Execution count [1.00e+00]
..LN1405:
	.loc    1  39  is_stmt 1
        movq      16(%rsp), %rbx                                #39.1[spill] c1
	.cfi_restore 3
..LN1406:
        movq      40(%rsp), %r13                                #39.1[spill] c1
	.cfi_restore 13
..LN1407:
        movq      32(%rsp), %r14                                #39.1[spill] c5 stall 1
	.cfi_restore 14
..LN1408:
        movq      24(%rsp), %r15                                #39.1[spill] c5
	.cfi_restore 15
..LN1409:
	.loc    1  39  epilogue_begin  is_stmt 1
        movq      %rbp, %rsp                                    #39.1 c7
..LN1410:
        popq      %rbp                                          #39.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
..LN1411:
        ret                                                     #39.1
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x50, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x48, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x68, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x60, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xc0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x58, 0xff, 0xff, 0xff, 0x22
..LN1412:
                                # LOE
..B2.49:                        # Preds ..B2.25
                                # Execution count [2.25e-01]: Infreq
..LN1413:
	.loc    1  33  is_stmt 1
        xorl      %eax, %eax                                    #33.5 c1
..LN1414:
        jmp       ..B2.36       # Prob 100%                     #33.5 c1
..LN1415:
                                # LOE r13 eax ebx r8d r9d r12d r14d
..B2.50:                        # Preds ..B2.23
                                # Execution count [2.25e-01]: Infreq
..LN1416:
	.loc    1  36  is_stmt 1
        vpbroadcastd %r9d, %zmm1                                #36.25 c1
..LN1417:
        movl      %r9d, %edx                                    #36.25 c1
..LN1418:
	.loc    1  33  is_stmt 1
        movl      (%rsp), %eax                                  #33.5[spill] c1
..LN1419:
        xorl      %edi, %edi                                    #33.5 c1
..LN1420:
	.loc    1  36  is_stmt 1
        shll      $4, %edx                                      #36.25 c3
..LN1421:
        vpbroadcastd %edx, %zmm0                                #36.25 c5
..LN1422:
        movl      %r8d, %edx                                    #36.25 c5
..LN1423:
	.loc    1  34  is_stmt 1
        lea       (%r9,%r8), %esi                               #34.25 c7
..LN1424:
	.loc    1  36  is_stmt 1
        imull     %r9d, %edx                                    #36.25 c7
..LN1425:
	.loc    1  35  is_stmt 1
        lea       (%r9,%r12), %ecx                              #35.18 c9
..LN1426:
	.loc    1  36  is_stmt 1
        vpmulld   .L_2il0floatpacket.2(%rip), %zmm1, %zmm6      #36.25 c11
..LN1427:
        jmp       ..B2.32       # Prob 100%                     #36.25 c11
        .align    16,0x90
..LN1428:
                                # LOE r13 eax edx ecx ebx esi edi r8d r9d r12d r14d zmm0 zmm6
..LN1429:
	.cfi_endproc
# mark_end;
	.type	fillarray,@function
	.size	fillarray,.-fillarray
..LNfillarray.1430:
.LNfillarray:
	.data
# -- End  fillarray
	.text
.L_2__routine_start_sumArray_2:
# -- Begin  sumArray
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl sumArray
# --- sumArray()
sumArray:
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_sumArray.101:
..L102:
                                                        #41.17
..LN1431:
	.loc    1  41  prologue_end  is_stmt 1
        movq      %r12, -8(%rsp)                                #41.17[spill] c3
..LN1432:
	.loc    1  45  is_stmt 1
        movl      SIZE(%rip), %edi                              #45.27 c3
..LN1433:
        testl     %edi, %edi                                    #45.27 c7 stall 1
..LN1434:
        jle       ..B3.33       # Prob 50%                      #45.27 c9
	.cfi_offset 12, -16
..LN1435:
                                # LOE rbx rbp r13 r14 r15 edi
..B3.2:                         # Preds ..B3.1
                                # Execution count [0.00e+00]
..LN1436:
	.loc    1  46  is_stmt 1
        movq      o(%rip), %rsi                                 #46.7 c1
..LN1437:
        movq      a(%rip), %r8                                  #46.18 c1
..LN1438:
        movq      b(%rip), %rcx                                 #46.31 c5 stall 1
..LN1439:
	.loc    1  45  is_stmt 1
        cmpl      $6, %edi                                      #45.3 c5
..LN1440:
        jle       ..B3.27       # Prob 50%                      #45.3 c7
..LN1441:
                                # LOE rcx rbx rbp rsi r8 r13 r14 r15 edi
..B3.3:                         # Preds ..B3.2
                                # Execution count [0.00e+00]
..LN1442:
	.loc    1  46  is_stmt 1
        cmpq      %rcx, %rsi                                    #46.31 c1
..LN1443:
        jbe       ..B3.5        # Prob 50%                      #46.31 c3
..LN1444:
                                # LOE rcx rbx rbp rsi r8 r13 r14 r15 edi
..B3.4:                         # Preds ..B3.3
                                # Execution count [0.00e+00]
..LN1445:
	.loc    1  45  is_stmt 1
        movslq    %edi, %rdx                                    #45.27 c1
..LN1446:
	.loc    1  46  is_stmt 1
        movq      %rsi, %rax                                    #46.31 c1
..LN1447:
        lea       (,%rdx,4), %r9                                #46.31 c3
..LN1448:
        subq      %rcx, %rax                                    #46.31 c3
..LN1449:
        cmpq      %r9, %rax                                     #46.31 c5
..LN1450:
        jge       ..B3.7        # Prob 50%                      #46.31 c7
..LN1451:
        jmp       ..B3.27       # Prob 100%                     #46.31 c7
..LN1452:
                                # LOE rdx rcx rbx rbp rsi r8 r9 r13 r14 r15 edi
..B3.5:                         # Preds ..B3.3
                                # Execution count [0.00e+00]
..LN1453:
        cmpq      %rsi, %rcx                                    #46.31 c1
..LN1454:
        jbe       ..B3.27       # Prob 50%                      #46.31 c3
..LN1455:
                                # LOE rcx rbx rbp rsi r8 r13 r14 r15 edi
..B3.6:                         # Preds ..B3.5
                                # Execution count [0.00e+00]
..LN1456:
	.loc    1  45  is_stmt 1
        movslq    %edi, %rdx                                    #45.27 c1
..LN1457:
	.loc    1  46  is_stmt 1
        movq      %rcx, %rax                                    #46.31 c1
..LN1458:
        lea       (,%rdx,4), %r9                                #46.31 c3
..LN1459:
        subq      %rsi, %rax                                    #46.31 c3
..LN1460:
        cmpq      %r9, %rax                                     #46.31 c5
..LN1461:
        jl        ..B3.27       # Prob 50%                      #46.31 c7
..LN1462:
                                # LOE rdx rcx rbx rbp rsi r8 r9 r13 r14 r15 edi
..B3.7:                         # Preds ..B3.6 ..B3.4
                                # Execution count [0.00e+00]
..LN1463:
        cmpq      %r8, %rsi                                     #46.18 c1
..LN1464:
        jbe       ..B3.9        # Prob 50%                      #46.18 c3
..LN1465:
                                # LOE rdx rcx rbx rbp rsi r8 r9 r13 r14 r15 edi
..B3.8:                         # Preds ..B3.7
                                # Execution count [0.00e+00]
..LN1466:
        movq      %rsi, %rax                                    #46.18 c1
..LN1467:
        subq      %r8, %rax                                     #46.18 c3
..LN1468:
        cmpq      %r9, %rax                                     #46.18 c5
..LN1469:
        jge       ..B3.11       # Prob 50%                      #46.18 c7
..LN1470:
        jmp       ..B3.27       # Prob 100%                     #46.18 c7
..LN1471:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 edi
..B3.9:                         # Preds ..B3.7
                                # Execution count [0.00e+00]
..LN1472:
        cmpq      %rsi, %r8                                     #46.18 c1
..LN1473:
        jbe       ..B3.27       # Prob 50%                      #46.18 c3
..LN1474:
                                # LOE rdx rcx rbx rbp rsi r8 r9 r13 r14 r15 edi
..B3.10:                        # Preds ..B3.9
                                # Execution count [0.00e+00]
..LN1475:
        movq      %r8, %rax                                     #46.18 c1
..LN1476:
        subq      %rsi, %rax                                    #46.18 c3
..LN1477:
        cmpq      %r9, %rax                                     #46.18 c5
..LN1478:
        jl        ..B3.27       # Prob 50%                      #46.18 c7
..LN1479:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 edi
..B3.11:                        # Preds ..B3.8 ..B3.10
                                # Execution count [4.50e-01]
..LN1480:
	.loc    1  45  is_stmt 1
        cmpl      $433, %edi                                    #45.3 c1
..LN1481:
        jl        ..B3.35       # Prob 10%                      #45.3 c3
..LN1482:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 edi
..B3.12:                        # Preds ..B3.11
                                # Execution count [4.50e-01]
..LN1483:
        movq      %rsi, %rax                                    #45.3 c1
..LN1484:
        andq      $63, %rax                                     #45.3 c3
..LN1485:
        testl     %eax, %eax                                    #45.3 c3
..LN1486:
        je        ..B3.15       # Prob 50%                      #45.3 c5
..LN1487:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 eax edi
..B3.13:                        # Preds ..B3.12
                                # Execution count [4.50e-01]
..LN1488:
        testb     $3, %al                                       #45.3 c1
..LN1489:
        jne       ..B3.34       # Prob 10%                      #45.3 c3
..LN1490:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 eax edi
..B3.14:                        # Preds ..B3.13
                                # Execution count [0.00e+00]
..LN1491:
        negl      %eax                                          #45.3 c1
..LN1492:
        addl      $64, %eax                                     #45.3 c3
..LN1493:
        shrl      $2, %eax                                      #45.3 c5
..LN1494:
        cmpl      %eax, %edi                                    #45.3 c7
..LN1495:
        cmovl     %edi, %eax                                    #45.3 c9
..LN1496:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 eax edi
..B3.15:                        # Preds ..B3.14 ..B3.12
                                # Execution count [5.00e-01]
..LN1497:
        movl      %edi, %r9d                                    #45.3 c1
..LN1498:
        subl      %eax, %r9d                                    #45.3 c3
..LN1499:
        andl      $31, %r9d                                     #45.3 c5
..LN1500:
        negl      %r9d                                          #45.3 c7
..LN1501:
        addl      %edi, %r9d                                    #45.3 c9
..LN1502:
        cmpl      $1, %eax                                      #45.3 c9
..LN1503:
        jb        ..B3.19       # Prob 50%                      #45.3 c11
..LN1504:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 eax edi r9d
..B3.16:                        # Preds ..B3.15
                                # Execution count [4.50e-01]
..LN1505:
        vmovups   .L_2il0floatpacket.0(%rip), %zmm2             #45.3 c1
..LN1506:
        vmovdqu32 .L_2il0floatpacket.2(%rip), %zmm1             #45.3 c1
..LN1507:
        xorl      %r12d, %r12d                                  #45.3 c1
..LN1508:
        movslq    %eax, %r11                                    #45.3 c1
..LN1509:
        xorl      %r10d, %r10d                                  #45.3 c3
..LN1510:
        vpbroadcastd %eax, %zmm0                                #45.3 c7 stall 1
..LN1511:
                                # LOE rdx rcx rbx rbp rsi r8 r10 r11 r12 r13 r14 r15 eax edi r9d zmm0 zmm1 zmm2
..B3.17:                        # Preds ..B3.17 ..B3.16
                                # Execution count [2.50e+00]
..L105:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS VECTORIZED
                # PEELED LOOP FOR VECTORIZATION
                # MASKED VECTORIZATION
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 3.283203
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 16
                # NORMALIZED VECTORIZATION OVERHEAD 1.125000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN1512:
        vpcmpgtd  %zmm1, %zmm0, %k1                             #45.3 c1
..LN1513:
        addq      $16, %r12                                     #45.3 c1
..LN1514:
        vpaddd    %zmm2, %zmm1, %zmm1                           #45.3 c1
..LN1515:
	.loc    1  46  is_stmt 1
        vmovups   (%r10,%r8), %zmm3{%k1}{z}                     #46.18 c3
..LN1516:
        vmovups   (%r10,%rcx), %zmm4{%k1}{z}                    #46.31 c3
..LN1517:
        vaddps    %zmm4, %zmm3, %zmm5                           #46.31 c9 stall 2
..LN1518:
        vmovups   %zmm5, (%r10,%rsi){%k1}                       #46.7 c15 stall 2
..LN1519:
	.loc    1  45  is_stmt 1
        addq      $64, %r10                                     #45.3 c15
..LN1520:
        cmpq      %r11, %r12                                    #45.3 c15
..LN1521:
        jb        ..B3.17       # Prob 82%                      #45.3 c17
..LN1522:
                                # LOE rdx rcx rbx rbp rsi r8 r10 r11 r12 r13 r14 r15 eax edi r9d zmm0 zmm1 zmm2
..B3.18:                        # Preds ..B3.17
                                # Execution count [4.50e-01]
..LN1523:
        cmpl      %eax, %edi                                    #45.3 c1
..LN1524:
        je        ..B3.33       # Prob 10%                      #45.3 c3
..LN1525:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 eax edi r9d
..B3.19:                        # Preds ..B3.18 ..B3.15 ..B3.35
                                # Execution count [0.00e+00]
..LN1526:
        lea       32(%rax), %r10d                               #45.3 c1
..LN1527:
        cmpl      %r10d, %r9d                                   #45.3 c3
..LN1528:
        jl        ..B3.23       # Prob 50%                      #45.3 c5
..LN1529:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 eax edi r9d
..B3.20:                        # Preds ..B3.19
                                # Execution count [4.50e-01]
..LN1530:
        movslq    %eax, %rax                                    #45.3 c1
..LN1531:
        movslq    %r9d, %r10                                    #45.3 c1
..LN1532:
                                # LOE rax rdx rcx rbx rbp rsi r8 r10 r13 r14 r15 edi r9d
..B3.21:                        # Preds ..B3.21 ..B3.20
                                # Execution count [2.50e+00]
..L106:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS VECTORIZED
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 15.000000
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 32
                # NORMALIZED VECTORIZATION OVERHEAD 1.375000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN1533:
	.loc    1  46  is_stmt 1
        vmovups   (%r8,%rax,4), %zmm0                           #46.18 c1
..LN1534:
        vmovups   64(%r8,%rax,4), %zmm1                         #46.18 c1
..LN1535:
        vaddps    (%rcx,%rax,4), %zmm0, %zmm2                   #46.31 c7 stall 2
..LN1536:
        vaddps    64(%rcx,%rax,4), %zmm1, %zmm3                 #46.31 c7
..LN1537:
        vmovups   %zmm2, (%rsi,%rax,4)                          #46.7 c13 stall 2
..LN1538:
        vmovups   %zmm3, 64(%rsi,%rax,4)                        #46.7 c13
..LN1539:
	.loc    1  45  is_stmt 1
        addq      $32, %rax                                     #45.3 c13
..LN1540:
        cmpq      %r10, %rax                                    #45.3 c15
..LN1541:
        jb        ..B3.21       # Prob 82%                      #45.3 c17
..LN1542:
                                # LOE rax rdx rcx rbx rbp rsi r8 r10 r13 r14 r15 edi r9d
..B3.23:                        # Preds ..B3.21 ..B3.19 ..B3.34
                                # Execution count [5.00e-01]
..LN1543:
        lea       1(%r9), %eax                                  #45.3 c1
..LN1544:
        cmpl      %edi, %eax                                    #45.3 c3
..LN1545:
        ja        ..B3.33       # Prob 50%                      #45.3 c5
..LN1546:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 edi r9d
..B3.24:                        # Preds ..B3.23
                                # Execution count [4.50e-01]
..LN1547:
        subl      %r9d, %edi                                    #45.3 c1
..LN1548:
	.loc    1  46  is_stmt 1
        movslq    %r9d, %r9                                     #46.18 c1
..LN1549:
	.loc    1  45  is_stmt 1
        vmovups   .L_2il0floatpacket.0(%rip), %zmm2             #45.3 c1
..LN1550:
        vmovdqu32 .L_2il0floatpacket.2(%rip), %zmm1             #45.3 c1
..LN1551:
        xorl      %eax, %eax                                    #45.3 c3
..LN1552:
        subq      %r9, %rdx                                     #45.3 c3
..LN1553:
        vpbroadcastd %edi, %zmm0                                #45.3 c7 stall 1
..LN1554:
	.loc    1  46  is_stmt 1
        lea       (%rsi,%r9,4), %r10                            #46.7 c7
..LN1555:
        lea       (%rcx,%r9,4), %rdi                            #46.31 c9
..LN1556:
	.loc    1  45  is_stmt 1
        xorl      %ecx, %ecx                                    #45.3 c9
..LN1557:
	.loc    1  46  is_stmt 1
        lea       (%r8,%r9,4), %rsi                             #46.18 c11
..LN1558:
                                # LOE rax rdx rcx rbx rbp rsi rdi r10 r13 r14 r15 zmm0 zmm1 zmm2
..B3.25:                        # Preds ..B3.25 ..B3.24
                                # Execution count [2.50e+00]
..L107:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS VECTORIZED
                # REMAINDER LOOP FOR VECTORIZATION
                # MASKED VECTORIZATION
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 6.613281
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 16
                # NORMALIZED VECTORIZATION OVERHEAD 1.125000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN1559:
	.loc    1  45  is_stmt 1
        vpcmpgtd  %zmm1, %zmm0, %k1                             #45.3 c1
..LN1560:
        addq      $16, %rax                                     #45.3 c1
..LN1561:
        vpaddd    %zmm2, %zmm1, %zmm1                           #45.3 c1
..LN1562:
	.loc    1  46  is_stmt 1
        vmovups   (%rcx,%rsi), %zmm3{%k1}{z}                    #46.18 c3
..LN1563:
        vmovups   (%rcx,%rdi), %zmm4{%k1}{z}                    #46.31 c3
..LN1564:
        vaddps    %zmm4, %zmm3, %zmm5                           #46.31 c9 stall 2
..LN1565:
        vmovups   %zmm5, (%rcx,%r10){%k1}                       #46.7 c15 stall 2
..LN1566:
	.loc    1  45  is_stmt 1
        addq      $64, %rcx                                     #45.3 c15
..LN1567:
        cmpq      %rdx, %rax                                    #45.3 c15
..LN1568:
        jb        ..B3.25       # Prob 82%                      #45.3 c17
..LN1569:
        jmp       ..B3.33       # Prob 100%                     #45.3 c17
..LN1570:
                                # LOE rax rdx rcx rbx rbp rsi rdi r10 r13 r14 r15 zmm0 zmm1 zmm2
..B3.27:                        # Preds ..B3.2 ..B3.4 ..B3.5 ..B3.6 ..B3.8
                                #       ..B3.9 ..B3.10
                                # Execution count [5.00e-01]
..LN1571:
        movl      %edi, %eax                                    #45.3 c1
..LN1572:
        movl      $1, %r9d                                      #45.3 c1
..LN1573:
        shrl      $31, %eax                                     #45.3 c3
..LN1574:
        xorl      %edx, %edx                                    #45.3 c3
..LN1575:
        addl      %edi, %eax                                    #45.27 c5
..LN1576:
        sarl      $1, %eax                                      #45.27 c7
..LN1577:
        testl     %eax, %eax                                    #45.3 c9
..LN1578:
        jbe       ..B3.31       # Prob 9%                       #45.3 c11
..LN1579:
                                # LOE rcx rbx rbp rsi r8 r13 r14 r15 eax edx edi r9d
..B3.29:                        # Preds ..B3.27 ..B3.29
                                # Execution count [1.25e+00]
..L108:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 2
                # LOOP WAS UNROLLED BY 2
                # %s was not vectorized: non-vectorizable loop instance from multiversioning
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
..LN1580:
	.loc    1  46  is_stmt 1
        lea       (%rdx,%rdx), %r9d                             #46.18 c1
..LN1581:
	.loc    1  45  is_stmt 1
        addl      $1, %edx                                      #45.3 c1
..LN1582:
	.loc    1  46  is_stmt 1
        movslq    %r9d, %r9                                     #46.31 c3
..LN1583:
        vmovss    (%r8,%r9,4), %xmm0                            #46.18 c5
..LN1584:
        vaddss    (%rcx,%r9,4), %xmm0, %xmm1                    #46.31 c11 stall 2
..LN1585:
        vmovss    %xmm1, (%rsi,%r9,4)                           #46.7 c17 stall 2
..LN1586:
        vmovss    4(%r8,%r9,4), %xmm2                           #46.18 c17
..LN1587:
        vaddss    4(%rcx,%r9,4), %xmm2, %xmm3                   #46.31 c23 stall 2
..LN1588:
        vmovss    %xmm3, 4(%rsi,%r9,4)                          #46.7 c29 stall 2
..LN1589:
	.loc    1  45  is_stmt 1
        cmpl      %eax, %edx                                    #45.3 c29
..LN1590:
        jb        ..B3.29       # Prob 63%                      #45.3 c31
..LN1591:
                                # LOE rcx rbx rbp rsi r8 r13 r14 r15 eax edx edi
..B3.30:                        # Preds ..B3.29
                                # Execution count [4.50e-01]
..LN1592:
	.loc    1  46  is_stmt 1
        lea       1(%rdx,%rdx), %r9d                            #46.7 c1
..LN1593:
                                # LOE rcx rbx rbp rsi r8 r13 r14 r15 edi r9d
..B3.31:                        # Preds ..B3.30 ..B3.27
                                # Execution count [5.00e-01]
..LN1594:
	.loc    1  45  is_stmt 1
        lea       -1(%r9), %eax                                 #45.3 c1
..LN1595:
        cmpl      %edi, %eax                                    #45.3 c3
..LN1596:
        jae       ..B3.33       # Prob 9%                       #45.3 c5
..LN1597:
                                # LOE rcx rbx rbp rsi r8 r13 r14 r15 r9d
..B3.32:                        # Preds ..B3.31
                                # Execution count [4.50e-01]
..L109:
                # optimization report
                # REMAINDER LOOP
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 2
                # %s was not vectorized: non-vectorizable loop instance from multiversioning
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
..LN1598:
	.loc    1  46  is_stmt 1
        movslq    %r9d, %r9                                     #46.18 c1
..LN1599:
        vmovss    -4(%r8,%r9,4), %xmm0                          #46.18 c3
..LN1600:
        vaddss    -4(%rcx,%r9,4), %xmm0, %xmm1                  #46.31 c9 stall 2
..LN1601:
        vmovss    %xmm1, -4(%rsi,%r9,4)                         #46.7 c15 stall 2
..LN1602:
                                # LOE rbx rbp r13 r14 r15
..B3.33:                        # Preds ..B3.25 ..B3.1 ..B3.23 ..B3.31 ..B3.18
                                #       ..B3.32
                                # Execution count [1.00e+00]
..LN1603:
	.loc    1  49  is_stmt 1
        movq      -8(%rsp), %r12                                #49.1[spill] c1
	.cfi_restore 12
..LN1604:
	.loc    1  49  epilogue_begin  is_stmt 1
        ret                                                     #49.1 c3
	.cfi_offset 12, -16
..LN1605:
                                # LOE
..B3.34:                        # Preds ..B3.13
                                # Execution count [4.50e-02]: Infreq
..LN1606:
	.loc    1  45  is_stmt 1
        xorl      %r9d, %r9d                                    #45.3 c1
..LN1607:
        jmp       ..B3.23       # Prob 100%                     #45.3 c1
..LN1608:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 edi r9d
..B3.35:                        # Preds ..B3.11
                                # Execution count [4.50e-02]: Infreq
..LN1609:
        movl      %edi, %r9d                                    #45.3 c1
..LN1610:
        xorl      %eax, %eax                                    #45.3 c1
..LN1611:
        andl      $-32, %r9d                                    #45.3 c3
..LN1612:
        jmp       ..B3.19       # Prob 100%                     #45.3 c3
        .align    16,0x90
..LN1613:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 eax edi r9d
..LN1614:
	.cfi_endproc
# mark_end;
	.type	sumArray,@function
	.size	sumArray,.-sumArray
..LNsumArray.1615:
.LNsumArray:
	.data
# -- End  sumArray
	.text
.L_2__routine_start_sumArray2_3:
# -- Begin  sumArray2
	.text
# mark_begin;
# Threads 2
        .align    16,0x90
	.globl sumArray2
# --- sumArray2()
sumArray2:
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_sumArray2.116:
..L117:
                                                        #51.18
..LN1616:
	.loc    1  51  prologue_end  is_stmt 1
        movq      %r12, -8(%rsp)                                #51.18[spill] c3
..LN1617:
	.loc    1  55  is_stmt 1
        movl      SIZE(%rip), %edi                              #55.27 c3
..LN1618:
        testl     %edi, %edi                                    #55.27 c7 stall 1
..LN1619:
        jle       ..B4.33       # Prob 50%                      #55.27 c9
	.cfi_offset 12, -16
..LN1620:
                                # LOE rbx rbp r13 r14 r15 edi
..B4.2:                         # Preds ..B4.1
                                # Execution count [0.00e+00]
..LN1621:
	.loc    1  56  is_stmt 1
        movq      a(%rip), %rsi                                 #56.7 c1
..LN1622:
        movq      o(%rip), %r8                                  #56.18 c1
..LN1623:
        movq      b(%rip), %rcx                                 #56.31 c5 stall 1
..LN1624:
	.loc    1  55  is_stmt 1
        cmpl      $6, %edi                                      #55.3 c5
..LN1625:
        jle       ..B4.27       # Prob 50%                      #55.3 c7
..LN1626:
                                # LOE rcx rbx rbp rsi r8 r13 r14 r15 edi
..B4.3:                         # Preds ..B4.2
                                # Execution count [0.00e+00]
..LN1627:
	.loc    1  56  is_stmt 1
        cmpq      %rcx, %rsi                                    #56.31 c1
..LN1628:
        jbe       ..B4.5        # Prob 50%                      #56.31 c3
..LN1629:
                                # LOE rcx rbx rbp rsi r8 r13 r14 r15 edi
..B4.4:                         # Preds ..B4.3
                                # Execution count [0.00e+00]
..LN1630:
	.loc    1  55  is_stmt 1
        movslq    %edi, %rdx                                    #55.27 c1
..LN1631:
	.loc    1  56  is_stmt 1
        movq      %rsi, %rax                                    #56.31 c1
..LN1632:
        lea       (,%rdx,4), %r9                                #56.31 c3
..LN1633:
        subq      %rcx, %rax                                    #56.31 c3
..LN1634:
        cmpq      %r9, %rax                                     #56.31 c5
..LN1635:
        jge       ..B4.7        # Prob 50%                      #56.31 c7
..LN1636:
        jmp       ..B4.27       # Prob 100%                     #56.31 c7
..LN1637:
                                # LOE rdx rcx rbx rbp rsi r8 r9 r13 r14 r15 edi
..B4.5:                         # Preds ..B4.3
                                # Execution count [0.00e+00]
..LN1638:
        cmpq      %rsi, %rcx                                    #56.31 c1
..LN1639:
        jbe       ..B4.27       # Prob 50%                      #56.31 c3
..LN1640:
                                # LOE rcx rbx rbp rsi r8 r13 r14 r15 edi
..B4.6:                         # Preds ..B4.5
                                # Execution count [0.00e+00]
..LN1641:
	.loc    1  55  is_stmt 1
        movslq    %edi, %rdx                                    #55.27 c1
..LN1642:
	.loc    1  56  is_stmt 1
        movq      %rcx, %rax                                    #56.31 c1
..LN1643:
        lea       (,%rdx,4), %r9                                #56.31 c3
..LN1644:
        subq      %rsi, %rax                                    #56.31 c3
..LN1645:
        cmpq      %r9, %rax                                     #56.31 c5
..LN1646:
        jl        ..B4.27       # Prob 50%                      #56.31 c7
..LN1647:
                                # LOE rdx rcx rbx rbp rsi r8 r9 r13 r14 r15 edi
..B4.7:                         # Preds ..B4.6 ..B4.4
                                # Execution count [0.00e+00]
..LN1648:
        cmpq      %r8, %rsi                                     #56.18 c1
..LN1649:
        jbe       ..B4.9        # Prob 50%                      #56.18 c3
..LN1650:
                                # LOE rdx rcx rbx rbp rsi r8 r9 r13 r14 r15 edi
..B4.8:                         # Preds ..B4.7
                                # Execution count [0.00e+00]
..LN1651:
        movq      %rsi, %rax                                    #56.18 c1
..LN1652:
        subq      %r8, %rax                                     #56.18 c3
..LN1653:
        cmpq      %r9, %rax                                     #56.18 c5
..LN1654:
        jge       ..B4.11       # Prob 50%                      #56.18 c7
..LN1655:
        jmp       ..B4.27       # Prob 100%                     #56.18 c7
..LN1656:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 edi
..B4.9:                         # Preds ..B4.7
                                # Execution count [0.00e+00]
..LN1657:
        cmpq      %rsi, %r8                                     #56.18 c1
..LN1658:
        jbe       ..B4.27       # Prob 50%                      #56.18 c3
..LN1659:
                                # LOE rdx rcx rbx rbp rsi r8 r9 r13 r14 r15 edi
..B4.10:                        # Preds ..B4.9
                                # Execution count [0.00e+00]
..LN1660:
        movq      %r8, %rax                                     #56.18 c1
..LN1661:
        subq      %rsi, %rax                                    #56.18 c3
..LN1662:
        cmpq      %r9, %rax                                     #56.18 c5
..LN1663:
        jl        ..B4.27       # Prob 50%                      #56.18 c7
..LN1664:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 edi
..B4.11:                        # Preds ..B4.8 ..B4.10
                                # Execution count [4.50e-01]
..LN1665:
	.loc    1  55  is_stmt 1
        cmpl      $433, %edi                                    #55.3 c1
..LN1666:
        jl        ..B4.35       # Prob 10%                      #55.3 c3
..LN1667:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 edi
..B4.12:                        # Preds ..B4.11
                                # Execution count [4.50e-01]
..LN1668:
        movq      %rsi, %rax                                    #55.3 c1
..LN1669:
        andq      $63, %rax                                     #55.3 c3
..LN1670:
        testl     %eax, %eax                                    #55.3 c3
..LN1671:
        je        ..B4.15       # Prob 50%                      #55.3 c5
..LN1672:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 eax edi
..B4.13:                        # Preds ..B4.12
                                # Execution count [4.50e-01]
..LN1673:
        testb     $3, %al                                       #55.3 c1
..LN1674:
        jne       ..B4.34       # Prob 10%                      #55.3 c3
..LN1675:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 eax edi
..B4.14:                        # Preds ..B4.13
                                # Execution count [0.00e+00]
..LN1676:
        negl      %eax                                          #55.3 c1
..LN1677:
        addl      $64, %eax                                     #55.3 c3
..LN1678:
        shrl      $2, %eax                                      #55.3 c5
..LN1679:
        cmpl      %eax, %edi                                    #55.3 c7
..LN1680:
        cmovl     %edi, %eax                                    #55.3 c9
..LN1681:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 eax edi
..B4.15:                        # Preds ..B4.14 ..B4.12
                                # Execution count [5.00e-01]
..LN1682:
        movl      %edi, %r9d                                    #55.3 c1
..LN1683:
        subl      %eax, %r9d                                    #55.3 c3
..LN1684:
        andl      $31, %r9d                                     #55.3 c5
..LN1685:
        negl      %r9d                                          #55.3 c7
..LN1686:
        addl      %edi, %r9d                                    #55.3 c9
..LN1687:
        cmpl      $1, %eax                                      #55.3 c9
..LN1688:
        jb        ..B4.19       # Prob 50%                      #55.3 c11
..LN1689:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 eax edi r9d
..B4.16:                        # Preds ..B4.15
                                # Execution count [4.50e-01]
..LN1690:
        vmovups   .L_2il0floatpacket.0(%rip), %zmm2             #55.3 c1
..LN1691:
        vmovdqu32 .L_2il0floatpacket.2(%rip), %zmm1             #55.3 c1
..LN1692:
        xorl      %r12d, %r12d                                  #55.3 c1
..LN1693:
        movslq    %eax, %r11                                    #55.3 c1
..LN1694:
        xorl      %r10d, %r10d                                  #55.3 c3
..LN1695:
        vpbroadcastd %eax, %zmm0                                #55.3 c7 stall 1
..LN1696:
                                # LOE rdx rcx rbx rbp rsi r8 r10 r11 r12 r13 r14 r15 eax edi r9d zmm0 zmm1 zmm2
..B4.17:                        # Preds ..B4.17 ..B4.16
                                # Execution count [2.50e+00]
..L120:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS VECTORIZED
                # PEELED LOOP FOR VECTORIZATION
                # MASKED VECTORIZATION
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 3.283203
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 16
                # NORMALIZED VECTORIZATION OVERHEAD 1.125000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN1697:
        vpcmpgtd  %zmm1, %zmm0, %k1                             #55.3 c1
..LN1698:
        addq      $16, %r12                                     #55.3 c1
..LN1699:
        vpaddd    %zmm2, %zmm1, %zmm1                           #55.3 c1
..LN1700:
	.loc    1  56  is_stmt 1
        vmovups   (%r10,%r8), %zmm3{%k1}{z}                     #56.18 c3
..LN1701:
        vmovups   (%r10,%rcx), %zmm4{%k1}{z}                    #56.31 c3
..LN1702:
        vaddps    %zmm4, %zmm3, %zmm5                           #56.31 c9 stall 2
..LN1703:
        vmovups   %zmm5, (%r10,%rsi){%k1}                       #56.7 c15 stall 2
..LN1704:
	.loc    1  55  is_stmt 1
        addq      $64, %r10                                     #55.3 c15
..LN1705:
        cmpq      %r11, %r12                                    #55.3 c15
..LN1706:
        jb        ..B4.17       # Prob 82%                      #55.3 c17
..LN1707:
                                # LOE rdx rcx rbx rbp rsi r8 r10 r11 r12 r13 r14 r15 eax edi r9d zmm0 zmm1 zmm2
..B4.18:                        # Preds ..B4.17
                                # Execution count [4.50e-01]
..LN1708:
        cmpl      %eax, %edi                                    #55.3 c1
..LN1709:
        je        ..B4.33       # Prob 10%                      #55.3 c3
..LN1710:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 eax edi r9d
..B4.19:                        # Preds ..B4.18 ..B4.15 ..B4.35
                                # Execution count [0.00e+00]
..LN1711:
        lea       32(%rax), %r10d                               #55.3 c1
..LN1712:
        cmpl      %r10d, %r9d                                   #55.3 c3
..LN1713:
        jl        ..B4.23       # Prob 50%                      #55.3 c5
..LN1714:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 eax edi r9d
..B4.20:                        # Preds ..B4.19
                                # Execution count [4.50e-01]
..LN1715:
        movslq    %eax, %rax                                    #55.3 c1
..LN1716:
        movslq    %r9d, %r10                                    #55.3 c1
..LN1717:
                                # LOE rax rdx rcx rbx rbp rsi r8 r10 r13 r14 r15 edi r9d
..B4.21:                        # Preds ..B4.21 ..B4.20
                                # Execution count [2.50e+00]
..L121:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS VECTORIZED
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 15.000000
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 32
                # NORMALIZED VECTORIZATION OVERHEAD 1.375000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN1718:
	.loc    1  56  is_stmt 1
        vmovups   (%r8,%rax,4), %zmm0                           #56.18 c1
..LN1719:
        vmovups   64(%r8,%rax,4), %zmm1                         #56.18 c1
..LN1720:
        vaddps    (%rcx,%rax,4), %zmm0, %zmm2                   #56.31 c7 stall 2
..LN1721:
        vaddps    64(%rcx,%rax,4), %zmm1, %zmm3                 #56.31 c7
..LN1722:
        vmovups   %zmm2, (%rsi,%rax,4)                          #56.7 c13 stall 2
..LN1723:
        vmovups   %zmm3, 64(%rsi,%rax,4)                        #56.7 c13
..LN1724:
	.loc    1  55  is_stmt 1
        addq      $32, %rax                                     #55.3 c13
..LN1725:
        cmpq      %r10, %rax                                    #55.3 c15
..LN1726:
        jb        ..B4.21       # Prob 82%                      #55.3 c17
..LN1727:
                                # LOE rax rdx rcx rbx rbp rsi r8 r10 r13 r14 r15 edi r9d
..B4.23:                        # Preds ..B4.21 ..B4.19 ..B4.34
                                # Execution count [5.00e-01]
..LN1728:
        lea       1(%r9), %eax                                  #55.3 c1
..LN1729:
        cmpl      %edi, %eax                                    #55.3 c3
..LN1730:
        ja        ..B4.33       # Prob 50%                      #55.3 c5
..LN1731:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 edi r9d
..B4.24:                        # Preds ..B4.23
                                # Execution count [4.50e-01]
..LN1732:
        subl      %r9d, %edi                                    #55.3 c1
..LN1733:
	.loc    1  56  is_stmt 1
        movslq    %r9d, %r9                                     #56.18 c1
..LN1734:
	.loc    1  55  is_stmt 1
        vmovups   .L_2il0floatpacket.0(%rip), %zmm2             #55.3 c1
..LN1735:
        vmovdqu32 .L_2il0floatpacket.2(%rip), %zmm1             #55.3 c1
..LN1736:
        xorl      %eax, %eax                                    #55.3 c3
..LN1737:
        subq      %r9, %rdx                                     #55.3 c3
..LN1738:
        vpbroadcastd %edi, %zmm0                                #55.3 c7 stall 1
..LN1739:
	.loc    1  56  is_stmt 1
        lea       (%rsi,%r9,4), %r10                            #56.7 c7
..LN1740:
        lea       (%rcx,%r9,4), %rdi                            #56.31 c9
..LN1741:
	.loc    1  55  is_stmt 1
        xorl      %ecx, %ecx                                    #55.3 c9
..LN1742:
	.loc    1  56  is_stmt 1
        lea       (%r8,%r9,4), %rsi                             #56.18 c11
..LN1743:
                                # LOE rax rdx rcx rbx rbp rsi rdi r10 r13 r14 r15 zmm0 zmm1 zmm2
..B4.25:                        # Preds ..B4.25 ..B4.24
                                # Execution count [2.50e+00]
..L122:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS VECTORIZED
                # REMAINDER LOOP FOR VECTORIZATION
                # MASKED VECTORIZATION
                # VECTORIZATION HAS UNALIGNED MEMORY REFERENCES
                # VECTORIZATION SPEEDUP COEFFECIENT 6.613281
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # VECTOR LENGTH 16
                # NORMALIZED VECTORIZATION OVERHEAD 1.125000
                # MAIN VECTOR TYPE: 32-bits floating point
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN1744:
	.loc    1  55  is_stmt 1
        vpcmpgtd  %zmm1, %zmm0, %k1                             #55.3 c1
..LN1745:
        addq      $16, %rax                                     #55.3 c1
..LN1746:
        vpaddd    %zmm2, %zmm1, %zmm1                           #55.3 c1
..LN1747:
	.loc    1  56  is_stmt 1
        vmovups   (%rcx,%rsi), %zmm3{%k1}{z}                    #56.18 c3
..LN1748:
        vmovups   (%rcx,%rdi), %zmm4{%k1}{z}                    #56.31 c3
..LN1749:
        vaddps    %zmm4, %zmm3, %zmm5                           #56.31 c9 stall 2
..LN1750:
        vmovups   %zmm5, (%rcx,%r10){%k1}                       #56.7 c15 stall 2
..LN1751:
	.loc    1  55  is_stmt 1
        addq      $64, %rcx                                     #55.3 c15
..LN1752:
        cmpq      %rdx, %rax                                    #55.3 c15
..LN1753:
        jb        ..B4.25       # Prob 82%                      #55.3 c17
..LN1754:
        jmp       ..B4.33       # Prob 100%                     #55.3 c17
..LN1755:
                                # LOE rax rdx rcx rbx rbp rsi rdi r10 r13 r14 r15 zmm0 zmm1 zmm2
..B4.27:                        # Preds ..B4.2 ..B4.4 ..B4.5 ..B4.6 ..B4.8
                                #       ..B4.9 ..B4.10
                                # Execution count [5.00e-01]
..LN1756:
        movl      %edi, %eax                                    #55.3 c1
..LN1757:
        movl      $1, %r9d                                      #55.3 c1
..LN1758:
        shrl      $31, %eax                                     #55.3 c3
..LN1759:
        xorl      %edx, %edx                                    #55.3 c3
..LN1760:
        addl      %edi, %eax                                    #55.27 c5
..LN1761:
        sarl      $1, %eax                                      #55.27 c7
..LN1762:
        testl     %eax, %eax                                    #55.3 c9
..LN1763:
        jbe       ..B4.31       # Prob 9%                       #55.3 c11
..LN1764:
                                # LOE rcx rbx rbp rsi r8 r13 r14 r15 eax edx edi r9d
..B4.29:                        # Preds ..B4.27 ..B4.29
                                # Execution count [1.25e+00]
..L123:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 2
                # LOOP WAS UNROLLED BY 2
                # %s was not vectorized: non-vectorizable loop instance from multiversioning
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
..LN1765:
	.loc    1  56  is_stmt 1
        lea       (%rdx,%rdx), %r9d                             #56.18 c1
..LN1766:
	.loc    1  55  is_stmt 1
        addl      $1, %edx                                      #55.3 c1
..LN1767:
	.loc    1  56  is_stmt 1
        movslq    %r9d, %r9                                     #56.31 c3
..LN1768:
        vmovss    (%r8,%r9,4), %xmm0                            #56.18 c5
..LN1769:
        vaddss    (%rcx,%r9,4), %xmm0, %xmm1                    #56.31 c11 stall 2
..LN1770:
        vmovss    %xmm1, (%rsi,%r9,4)                           #56.7 c17 stall 2
..LN1771:
        vmovss    4(%r8,%r9,4), %xmm2                           #56.18 c17
..LN1772:
        vaddss    4(%rcx,%r9,4), %xmm2, %xmm3                   #56.31 c23 stall 2
..LN1773:
        vmovss    %xmm3, 4(%rsi,%r9,4)                          #56.7 c29 stall 2
..LN1774:
	.loc    1  55  is_stmt 1
        cmpl      %eax, %edx                                    #55.3 c29
..LN1775:
        jb        ..B4.29       # Prob 63%                      #55.3 c31
..LN1776:
                                # LOE rcx rbx rbp rsi r8 r13 r14 r15 eax edx edi
..B4.30:                        # Preds ..B4.29
                                # Execution count [4.50e-01]
..LN1777:
	.loc    1  56  is_stmt 1
        lea       1(%rdx,%rdx), %r9d                            #56.7 c1
..LN1778:
                                # LOE rcx rbx rbp rsi r8 r13 r14 r15 edi r9d
..B4.31:                        # Preds ..B4.30 ..B4.27
                                # Execution count [5.00e-01]
..LN1779:
	.loc    1  55  is_stmt 1
        lea       -1(%r9), %eax                                 #55.3 c1
..LN1780:
        cmpl      %edi, %eax                                    #55.3 c3
..LN1781:
        jae       ..B4.33       # Prob 9%                       #55.3 c5
..LN1782:
                                # LOE rcx rbx rbp rsi r8 r13 r14 r15 r9d
..B4.32:                        # Preds ..B4.31
                                # Execution count [4.50e-01]
..L124:
                # optimization report
                # REMAINDER LOOP
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 2
                # %s was not vectorized: non-vectorizable loop instance from multiversioning
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
..LN1783:
	.loc    1  56  is_stmt 1
        movslq    %r9d, %r9                                     #56.18 c1
..LN1784:
        vmovss    -4(%r8,%r9,4), %xmm0                          #56.18 c3
..LN1785:
        vaddss    -4(%rcx,%r9,4), %xmm0, %xmm1                  #56.31 c9 stall 2
..LN1786:
        vmovss    %xmm1, -4(%rsi,%r9,4)                         #56.7 c15 stall 2
..LN1787:
                                # LOE rbx rbp r13 r14 r15
..B4.33:                        # Preds ..B4.25 ..B4.1 ..B4.23 ..B4.31 ..B4.18
                                #       ..B4.32
                                # Execution count [1.00e+00]
..LN1788:
	.loc    1  59  is_stmt 1
        movq      -8(%rsp), %r12                                #59.1[spill] c1
	.cfi_restore 12
..LN1789:
	.loc    1  59  epilogue_begin  is_stmt 1
        ret                                                     #59.1 c3
	.cfi_offset 12, -16
..LN1790:
                                # LOE
..B4.34:                        # Preds ..B4.13
                                # Execution count [4.50e-02]: Infreq
..LN1791:
	.loc    1  55  is_stmt 1
        xorl      %r9d, %r9d                                    #55.3 c1
..LN1792:
        jmp       ..B4.23       # Prob 100%                     #55.3 c1
..LN1793:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 edi r9d
..B4.35:                        # Preds ..B4.11
                                # Execution count [4.50e-02]: Infreq
..LN1794:
        movl      %edi, %r9d                                    #55.3 c1
..LN1795:
        xorl      %eax, %eax                                    #55.3 c1
..LN1796:
        andl      $-32, %r9d                                    #55.3 c3
..LN1797:
        jmp       ..B4.19       # Prob 100%                     #55.3 c3
        .align    16,0x90
..LN1798:
                                # LOE rdx rcx rbx rbp rsi r8 r13 r14 r15 eax edi r9d
..LN1799:
	.cfi_endproc
# mark_end;
	.type	sumArray2,@function
	.size	sumArray2,.-sumArray2
..LNsumArray2.1800:
.LNsumArray2:
	.data
# -- End  sumArray2
	.text
.L_2__routine_start_sumArrayNOVEC_4:
# -- Begin  sumArrayNOVEC
	.text
# mark_begin;
# Threads 2
..LN1801:
        .align    16,0x90
	.globl sumArrayNOVEC
# --- sumArrayNOVEC()
sumArrayNOVEC:
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_sumArrayNOVEC.131:
..L132:
                                                        #61.22
..LN1802:
	.loc    1  61  prologue_end  is_stmt 1
..LN1803:
	.loc    1  66  is_stmt 1
        movl      SIZE(%rip), %ecx                              #66.27 c1
..LN1804:
        testl     %ecx, %ecx                                    #66.27 c5 stall 1
..LN1805:
        jle       ..B5.37       # Prob 50%                      #66.27 c7
..LN1806:
                                # LOE rbx rbp r12 r13 r14 r15 ecx
..B5.2:                         # Preds ..B5.1
                                # Execution count [0.00e+00]
..LN1807:
	.loc    1  67  is_stmt 1
        movq      o(%rip), %rdx                                 #67.7 c1
..LN1808:
        movq      a(%rip), %rsi                                 #67.18 c1
..LN1809:
        movq      b(%rip), %rax                                 #67.31 c5 stall 1
..LN1810:
	.loc    1  66  is_stmt 1
        cmpl      $6, %ecx                                      #66.3 c5
..LN1811:
        jle       ..B5.31       # Prob 50%                      #66.3 c7
..LN1812:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 ecx
..B5.3:                         # Preds ..B5.2
                                # Execution count [0.00e+00]
..LN1813:
	.loc    1  67  is_stmt 1
        cmpq      %rax, %rdx                                    #67.31 c1
..LN1814:
        jbe       ..B5.5        # Prob 50%                      #67.31 c3
..LN1815:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 ecx
..B5.4:                         # Preds ..B5.3
                                # Execution count [0.00e+00]
..LN1816:
	.loc    1  66  is_stmt 1
        movslq    %ecx, %r8                                     #66.27 c1
..LN1817:
	.loc    1  67  is_stmt 1
        movq      %rdx, %rdi                                    #67.31 c1
..LN1818:
        shlq      $2, %r8                                       #67.31 c3
..LN1819:
        subq      %rax, %rdi                                    #67.31 c3
..LN1820:
        cmpq      %r8, %rdi                                     #67.31 c5
..LN1821:
        jge       ..B5.7        # Prob 50%                      #67.31 c7
..LN1822:
        jmp       ..B5.31       # Prob 100%                     #67.31 c7
..LN1823:
                                # LOE rax rdx rbx rbp rsi r8 r12 r13 r14 r15 ecx
..B5.5:                         # Preds ..B5.3
                                # Execution count [0.00e+00]
..LN1824:
        cmpq      %rdx, %rax                                    #67.31 c1
..LN1825:
        jbe       ..B5.31       # Prob 50%                      #67.31 c3
..LN1826:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 ecx
..B5.6:                         # Preds ..B5.5
                                # Execution count [0.00e+00]
..LN1827:
	.loc    1  66  is_stmt 1
        movslq    %ecx, %r8                                     #66.27 c1
..LN1828:
	.loc    1  67  is_stmt 1
        movq      %rax, %rdi                                    #67.31 c1
..LN1829:
        shlq      $2, %r8                                       #67.31 c3
..LN1830:
        subq      %rdx, %rdi                                    #67.31 c3
..LN1831:
        cmpq      %r8, %rdi                                     #67.31 c5
..LN1832:
        jl        ..B5.31       # Prob 50%                      #67.31 c7
..LN1833:
                                # LOE rax rdx rbx rbp rsi r8 r12 r13 r14 r15 ecx
..B5.7:                         # Preds ..B5.6 ..B5.4
                                # Execution count [0.00e+00]
..LN1834:
        cmpq      %rsi, %rdx                                    #67.18 c1
..LN1835:
        jbe       ..B5.9        # Prob 50%                      #67.18 c3
..LN1836:
                                # LOE rax rdx rbx rbp rsi r8 r12 r13 r14 r15 ecx
..B5.8:                         # Preds ..B5.7
                                # Execution count [0.00e+00]
..LN1837:
        movq      %rdx, %rdi                                    #67.18 c1
..LN1838:
        subq      %rsi, %rdi                                    #67.18 c3
..LN1839:
        cmpq      %r8, %rdi                                     #67.18 c5
..LN1840:
        jge       ..B5.11       # Prob 50%                      #67.18 c7
..LN1841:
        jmp       ..B5.31       # Prob 100%                     #67.18 c7
..LN1842:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 ecx
..B5.9:                         # Preds ..B5.7
                                # Execution count [0.00e+00]
..LN1843:
        cmpq      %rdx, %rsi                                    #67.18 c1
..LN1844:
        jbe       ..B5.31       # Prob 50%                      #67.18 c3
..LN1845:
                                # LOE rax rdx rbx rbp rsi r8 r12 r13 r14 r15 ecx
..B5.10:                        # Preds ..B5.9
                                # Execution count [0.00e+00]
..LN1846:
        movq      %rsi, %rdi                                    #67.18 c1
..LN1847:
        subq      %rdx, %rdi                                    #67.18 c3
..LN1848:
        cmpq      %r8, %rdi                                     #67.18 c5
..LN1849:
        jl        ..B5.31       # Prob 50%                      #67.18 c7
..LN1850:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 ecx
..B5.11:                        # Preds ..B5.8 ..B5.10
                                # Execution count [5.00e-01]
..LN1851:
	.loc    1  66  is_stmt 1
        movl      %ecx, %edi                                    #66.27 c1
..LN1852:
        movl      $1, %r9d                                      #66.3 c1
..LN1853:
        sarl      $2, %edi                                      #66.27 c3
..LN1854:
        xorl      %r8d, %r8d                                    #66.3 c3
..LN1855:
        shrl      $29, %edi                                     #66.27 c5
..LN1856:
        addl      %ecx, %edi                                    #66.27 c7
..LN1857:
        sarl      $3, %edi                                      #66.27 c9
..LN1858:
        testl     %edi, %edi                                    #66.3 c11
..LN1859:
        jbe       ..B5.15       # Prob 9%                       #66.3 c13
..LN1860:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 ecx edi r8d r9d
..B5.13:                        # Preds ..B5.11 ..B5.13
                                # Execution count [3.12e-01]
..L134:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 1
                # LOOP WAS UNROLLED BY 8
                # %s was not vectorized: novector directive used
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
                # DEPENDENCY ANALYSIS WAS IGNORED
..LN1861:
	.loc    1  67  is_stmt 1
        lea       (,%r8,8), %r9d                                #67.18 c1
..LN1862:
	.loc    1  66  is_stmt 1
        addl      $1, %r8d                                      #66.3 c1
..LN1863:
	.loc    1  67  is_stmt 1
        movslq    %r9d, %r9                                     #67.31 c3
..LN1864:
        vmovss    (%rsi,%r9,4), %xmm0                           #67.18 c5
..LN1865:
        vaddss    (%rax,%r9,4), %xmm0, %xmm1                    #67.31 c11 stall 2
..LN1866:
        vmovss    %xmm1, (%rdx,%r9,4)                           #67.7 c17 stall 2
..LN1867:
        vmovss    4(%rsi,%r9,4), %xmm2                          #67.18 c17
..LN1868:
        vaddss    4(%rax,%r9,4), %xmm2, %xmm3                   #67.31 c23 stall 2
..LN1869:
        vmovss    %xmm3, 4(%rdx,%r9,4)                          #67.7 c29 stall 2
..LN1870:
        vmovss    8(%rsi,%r9,4), %xmm4                          #67.18 c29
..LN1871:
        vaddss    8(%rax,%r9,4), %xmm4, %xmm5                   #67.31 c35 stall 2
..LN1872:
        vmovss    %xmm5, 8(%rdx,%r9,4)                          #67.7 c41 stall 2
..LN1873:
        vmovss    12(%rsi,%r9,4), %xmm6                         #67.18 c41
..LN1874:
        vaddss    12(%rax,%r9,4), %xmm6, %xmm7                  #67.31 c47 stall 2
..LN1875:
        vmovss    %xmm7, 12(%rdx,%r9,4)                         #67.7 c53 stall 2
..LN1876:
        vmovss    16(%rsi,%r9,4), %xmm8                         #67.18 c53
..LN1877:
        vaddss    16(%rax,%r9,4), %xmm8, %xmm9                  #67.31 c59 stall 2
..LN1878:
        vmovss    %xmm9, 16(%rdx,%r9,4)                         #67.7 c65 stall 2
..LN1879:
        vmovss    20(%rsi,%r9,4), %xmm10                        #67.18 c65
..LN1880:
        vaddss    20(%rax,%r9,4), %xmm10, %xmm11                #67.31 c71 stall 2
..LN1881:
        vmovss    %xmm11, 20(%rdx,%r9,4)                        #67.7 c77 stall 2
..LN1882:
        vmovss    24(%rsi,%r9,4), %xmm12                        #67.18 c77
..LN1883:
        vaddss    24(%rax,%r9,4), %xmm12, %xmm13                #67.31 c83 stall 2
..LN1884:
        vmovss    %xmm13, 24(%rdx,%r9,4)                        #67.7 c89 stall 2
..LN1885:
        vmovss    28(%rsi,%r9,4), %xmm14                        #67.18 c89
..LN1886:
        vaddss    28(%rax,%r9,4), %xmm14, %xmm15                #67.31 c95 stall 2
..LN1887:
        vmovss    %xmm15, 28(%rdx,%r9,4)                        #67.7 c101 stall 2
..LN1888:
	.loc    1  66  is_stmt 1
        cmpl      %edi, %r8d                                    #66.3 c101
..LN1889:
        jb        ..B5.13       # Prob 99%                      #66.3 c103
..LN1890:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 ecx edi r8d
..B5.14:                        # Preds ..B5.13
                                # Execution count [4.50e-01]
..LN1891:
	.loc    1  67  is_stmt 1
        lea       1(,%r8,8), %r9d                               #67.7 c1
..LN1892:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 ecx r9d
..B5.15:                        # Preds ..B5.14 ..B5.11
                                # Execution count [5.00e-01]
..LN1893:
	.loc    1  66  is_stmt 1
        cmpl      %ecx, %r9d                                    #66.3 c1
..LN1894:
        ja        ..B5.37       # Prob 50%                      #66.3 c3
..LN1895:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 ecx r9d
..B5.16:                        # Preds ..B5.15
                                # Execution count [0.00e+00]
..LN1896:
        subl      %r9d, %ecx                                    #66.3 c1
..LN1897:
        jmp       *.2.15_2.switchtab.0(,%rcx,8)                 #66.3
..LN1898:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 r9d
..1.15_0.TAG.6:
..B5.18:                        # Preds ..B5.16
                                # Execution count [0.00e+00]
..LN1899:
	.loc    1  67  is_stmt 1
        movslq    %r9d, %r9                                     #67.18 c1
..LN1900:
        vmovss    20(%rsi,%r9,4), %xmm0                         #67.18 c3
..LN1901:
        vaddss    20(%rax,%r9,4), %xmm0, %xmm1                  #67.31 c9 stall 2
..LN1902:
        vmovss    %xmm1, 20(%rdx,%r9,4)                         #67.7 c15 stall 2
..LN1903:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 r9d
..1.15_0.TAG.5:
..B5.20:                        # Preds ..B5.16 ..B5.18
                                # Execution count [0.00e+00]
..LN1904:
        movslq    %r9d, %r9                                     #67.18 c1
..LN1905:
        vmovss    16(%rsi,%r9,4), %xmm0                         #67.18 c3
..LN1906:
        vaddss    16(%rax,%r9,4), %xmm0, %xmm1                  #67.31 c9 stall 2
..LN1907:
        vmovss    %xmm1, 16(%rdx,%r9,4)                         #67.7 c15 stall 2
..LN1908:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 r9d
..1.15_0.TAG.4:
..B5.22:                        # Preds ..B5.16 ..B5.20
                                # Execution count [0.00e+00]
..LN1909:
        movslq    %r9d, %r9                                     #67.18 c1
..LN1910:
        vmovss    12(%rsi,%r9,4), %xmm0                         #67.18 c3
..LN1911:
        vaddss    12(%rax,%r9,4), %xmm0, %xmm1                  #67.31 c9 stall 2
..LN1912:
        vmovss    %xmm1, 12(%rdx,%r9,4)                         #67.7 c15 stall 2
..LN1913:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 r9d
..1.15_0.TAG.3:
..B5.24:                        # Preds ..B5.16 ..B5.22
                                # Execution count [0.00e+00]
..LN1914:
        movslq    %r9d, %r9                                     #67.18 c1
..LN1915:
        vmovss    8(%rsi,%r9,4), %xmm0                          #67.18 c3
..LN1916:
        vaddss    8(%rax,%r9,4), %xmm0, %xmm1                   #67.31 c9 stall 2
..LN1917:
        vmovss    %xmm1, 8(%rdx,%r9,4)                          #67.7 c15 stall 2
..LN1918:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 r9d
..1.15_0.TAG.2:
..B5.26:                        # Preds ..B5.16 ..B5.24
                                # Execution count [0.00e+00]
..LN1919:
        movslq    %r9d, %r9                                     #67.18 c1
..LN1920:
        vmovss    4(%rsi,%r9,4), %xmm0                          #67.18 c3
..LN1921:
        vaddss    4(%rax,%r9,4), %xmm0, %xmm1                   #67.31 c9 stall 2
..LN1922:
        vmovss    %xmm1, 4(%rdx,%r9,4)                          #67.7 c15 stall 2
..LN1923:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 r9d
..1.15_0.TAG.1:
..B5.28:                        # Preds ..B5.16 ..B5.26
                                # Execution count [0.00e+00]
..LN1924:
        movslq    %r9d, %r9                                     #67.18 c1
..LN1925:
        vmovss    (%rsi,%r9,4), %xmm0                           #67.18 c3
..LN1926:
        vaddss    (%rax,%r9,4), %xmm0, %xmm1                    #67.31 c9 stall 2
..LN1927:
        vmovss    %xmm1, (%rdx,%r9,4)                           #67.7 c15 stall 2
..LN1928:
        jmp       ..B5.36       # Prob 100%                     #67.7 c15 stall 2
..LN1929:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 r9d
..B5.31:                        # Preds ..B5.2 ..B5.4 ..B5.5 ..B5.6 ..B5.8
                                #       ..B5.9 ..B5.10
                                # Execution count [5.00e-01]
..LN1930:
	.loc    1  66  is_stmt 1
        movl      %ecx, %edi                                    #66.3 c1
..LN1931:
        movl      $1, %r9d                                      #66.3 c1
..LN1932:
        shrl      $31, %edi                                     #66.3 c3
..LN1933:
        xorl      %r8d, %r8d                                    #66.3 c3
..LN1934:
        addl      %ecx, %edi                                    #66.27 c5
..LN1935:
        sarl      $1, %edi                                      #66.27 c7
..LN1936:
        testl     %edi, %edi                                    #66.3 c9
..LN1937:
        jbe       ..B5.35       # Prob 9%                       #66.3 c11
..LN1938:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 ecx edi r8d r9d
..B5.33:                        # Preds ..B5.31 ..B5.33
                                # Execution count [1.25e+00]
..L135:
                # optimization report
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 2
                # LOOP WAS UNROLLED BY 2
                # %s was not vectorized: novector directive used
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
..LN1939:
	.loc    1  67  is_stmt 1
        lea       (%r8,%r8), %r9d                               #67.18 c1
..LN1940:
	.loc    1  66  is_stmt 1
        addl      $1, %r8d                                      #66.3 c1
..LN1941:
	.loc    1  67  is_stmt 1
        movslq    %r9d, %r9                                     #67.31 c3
..LN1942:
        vmovss    (%rsi,%r9,4), %xmm0                           #67.18 c5
..LN1943:
        vaddss    (%rax,%r9,4), %xmm0, %xmm1                    #67.31 c11 stall 2
..LN1944:
        vmovss    %xmm1, (%rdx,%r9,4)                           #67.7 c17 stall 2
..LN1945:
        vmovss    4(%rsi,%r9,4), %xmm2                          #67.18 c17
..LN1946:
        vaddss    4(%rax,%r9,4), %xmm2, %xmm3                   #67.31 c23 stall 2
..LN1947:
        vmovss    %xmm3, 4(%rdx,%r9,4)                          #67.7 c29 stall 2
..LN1948:
	.loc    1  66  is_stmt 1
        cmpl      %edi, %r8d                                    #66.3 c29
..LN1949:
        jb        ..B5.33       # Prob 63%                      #66.3 c31
..LN1950:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 ecx edi r8d
..B5.34:                        # Preds ..B5.33
                                # Execution count [4.50e-01]
..LN1951:
	.loc    1  67  is_stmt 1
        lea       1(%r8,%r8), %r9d                              #67.7 c1
..LN1952:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 ecx r9d
..B5.35:                        # Preds ..B5.34 ..B5.31
                                # Execution count [5.00e-01]
..LN1953:
	.loc    1  66  is_stmt 1
        lea       -1(%r9), %edi                                 #66.3 c1
..LN1954:
        cmpl      %ecx, %edi                                    #66.3 c3
..LN1955:
        jae       ..B5.37       # Prob 9%                       #66.3 c5
..LN1956:
                                # LOE rax rdx rbx rbp rsi r12 r13 r14 r15 r9d
..1.15_0.TAG.0:
..B5.36:                        # Preds ..B5.28 ..B5.16 ..B5.35
                                # Execution count [4.50e-01]
..L136:
                # optimization report
                # REMAINDER LOOP
                # MULTIVERSIONED FOR DATA DEPENDENCE, VER 2
                # %s was not vectorized: novector directive used
                # VECTOR TRIP COUNT IS ESTIMATED CONSTANT
..LN1957:
	.loc    1  67  is_stmt 1
        movslq    %r9d, %r9                                     #67.18 c1
..LN1958:
        vmovss    -4(%rsi,%r9,4), %xmm0                         #67.18 c3
..LN1959:
        vaddss    -4(%rax,%r9,4), %xmm0, %xmm1                  #67.31 c9 stall 2
..LN1960:
        vmovss    %xmm1, -4(%rdx,%r9,4)                         #67.7 c15 stall 2
..LN1961:
                                # LOE rbx rbp r12 r13 r14 r15
..B5.37:                        # Preds ..B5.35 ..B5.1 ..B5.15 ..B5.36
                                # Execution count [1.00e+00]
..LN1962:
	.loc    1  70  epilogue_begin  is_stmt 1
        ret                                                     #70.1 c3
..LN1963:
        .align    16,0x90
..LN1964:
                                # LOE
..LN1965:
	.cfi_endproc
# mark_end;
	.type	sumArrayNOVEC,@function
	.size	sumArrayNOVEC,.-sumArrayNOVEC
..LNsumArrayNOVEC.1966:
.LNsumArrayNOVEC:
	.section .rodata, "a"
	.align 64
	.align 8
.2.15_2.switchtab.0:
	.quad	..1.15_0.TAG.0
	.quad	..1.15_0.TAG.1
	.quad	..1.15_0.TAG.2
	.quad	..1.15_0.TAG.3
	.quad	..1.15_0.TAG.4
	.quad	..1.15_0.TAG.5
	.quad	..1.15_0.TAG.6
	.data
# -- End  sumArrayNOVEC
	.bss
	.align 4
	.align 4
	.globl k
k:
	.type	k,@object
	.size	k,4
	.space 4	# pad
	.align 4
	.globl steps
steps:
	.type	steps,@object
	.size	steps,4
	.space 4	# pad
	.data
	.align 4
	.align 4
	.globl stepstotal
stepstotal:
	.long	10
	.type	stepstotal,@object
	.size	stepstotal,4
	.align 4
	.globl SIZE
SIZE:
	.long	1600000000
	.type	SIZE,@object
	.size	SIZE,4
	.align 4
	.globl SIZE2
SIZE2:
	.long	5
	.type	SIZE2,@object
	.size	SIZE2,4
	.align 4
	.globl maxrange
maxrange:
	.long	100
	.type	maxrange,@object
	.size	maxrange,4
	.section .rodata, "a"
	.space 8, 0x00 	# pad
	.align 64
.L_2il0floatpacket.0:
	.long	0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010,0x00000010
	.type	.L_2il0floatpacket.0,@object
	.size	.L_2il0floatpacket.0,64
	.align 64
.L_2il0floatpacket.1:
	.long	0xfffffff0,0xfffffff0,0xfffffff0,0xfffffff0,0xfffffff0,0xfffffff0,0xfffffff0,0xfffffff0,0xfffffff0,0xfffffff0,0xfffffff0,0xfffffff0,0xfffffff0,0xfffffff0,0xfffffff0,0xfffffff0
	.type	.L_2il0floatpacket.1,@object
	.size	.L_2il0floatpacket.1,64
	.align 64
.L_2il0floatpacket.2:
	.long	0x00000000,0x00000001,0x00000002,0x00000003,0x00000004,0x00000005,0x00000006,0x00000007,0x00000008,0x00000009,0x0000000a,0x0000000b,0x0000000c,0x0000000d,0x0000000e,0x0000000f
	.type	.L_2il0floatpacket.2,@object
	.size	.L_2il0floatpacket.2,64
	.align 64
.L_2il0floatpacket.3:
	.long	0x00000000,0xffffffff,0xfffffffe,0xfffffffd,0xfffffffc,0xfffffffb,0xfffffffa,0xfffffff9,0xfffffff8,0xfffffff7,0xfffffff6,0xfffffff5,0xfffffff4,0xfffffff3,0xfffffff2,0xfffffff1
	.type	.L_2il0floatpacket.3,@object
	.size	.L_2il0floatpacket.3,64
	.section .rodata.str1.4, "aMS",@progbits,1
	.align 4
	.align 4
.L_2__STRING.0:
	.long	1819044198
	.long	1634890337
	.long	1700929657
	.long	980314471
	.long	544417056
	.long	1852121133
	.long	2112100
	.type	.L_2__STRING.0,@object
	.size	.L_2__STRING.0,28
	.align 4
.L_2__STRING.1:
	.long	1819044198
	.long	1634890337
	.long	1700929657
	.long	980314471
	.long	539828256
	.long	979660389
	.long	7546144
	.type	.L_2__STRING.1,@object
	.size	.L_2__STRING.1,28
	.align 4
.L_2__STRING.2:
	.long	1097692531
	.long	2036429426
	.long	1646274856
	.long	1852401509
	.long	1931812922
	.long	1696607520
	.long	540697710
	.byte	0
	.type	.L_2__STRING.2,@object
	.size	.L_2__STRING.2,29
	.space 3, 0x00 	# pad
	.align 4
.L_2__STRING.3:
	.long	1097692531
	.long	2036429426
	.long	1646274856
	.long	1852401509
	.long	757080122
	.long	1684956448
	.long	1931812922
	.byte	0
	.type	.L_2__STRING.3,@object
	.size	.L_2__STRING.3,29
	.data
	.comm a,8,8
	.comm b,8,8
	.comm o,8,8
	.section .debug_opt_report, ""
..L140:
	.ascii ".itt_notify_tab\0"
	.word	258
	.word	48
	.long	37
	.long	..L141 - ..L140
	.long	48
	.long	..L142 - ..L140
	.long	631
	.long	0x00000008,0x00000000
	.long	0
	.long	0
	.long	0
	.long	0
	.quad	..L17
	.long	28
	.long	4
	.quad	..L18
	.long	28
	.long	18
	.quad	..L19
	.long	28
	.long	37
	.quad	..L20
	.long	28
	.long	56
	.quad	..L21
	.long	28
	.long	75
	.quad	..L22
	.long	28
	.long	91
	.quad	..L31
	.long	28
	.long	107
	.quad	..L32
	.long	28
	.long	121
	.quad	..L33
	.long	28
	.long	140
	.quad	..L34
	.long	28
	.long	159
	.quad	..L35
	.long	28
	.long	178
	.quad	..L36
	.long	28
	.long	194
	.quad	..L37
	.long	28
	.long	210
	.quad	..L38
	.long	28
	.long	229
	.quad	..L39
	.long	28
	.long	248
	.quad	..L40
	.long	28
	.long	267
	.quad	..L41
	.long	28
	.long	283
	.quad	..L76
	.long	28
	.long	299
	.quad	..L77
	.long	28
	.long	313
	.quad	..L78
	.long	28
	.long	332
	.quad	..L79
	.long	28
	.long	351
	.quad	..L80
	.long	28
	.long	370
	.quad	..L81
	.long	28
	.long	386
	.quad	..L105
	.long	28
	.long	402
	.quad	..L106
	.long	28
	.long	421
	.quad	..L107
	.long	28
	.long	440
	.quad	..L108
	.long	28
	.long	459
	.quad	..L109
	.long	28
	.long	475
	.quad	..L120
	.long	28
	.long	491
	.quad	..L121
	.long	28
	.long	510
	.quad	..L122
	.long	28
	.long	529
	.quad	..L123
	.long	28
	.long	548
	.quad	..L124
	.long	28
	.long	564
	.quad	..L134
	.long	28
	.long	580
	.quad	..L135
	.long	28
	.long	599
	.quad	..L136
	.long	28
	.long	615
..L141:
	.long	1769238639
	.long	1635412333
	.long	1852795252
	.long	1885696607
	.long	1601466991
	.long	1936876918
	.long	7237481
	.long	1769238639
	.long	1635412333
	.long	1852795252
	.long	1885696607
	.long	7631471
..L142:
	.long	42209283
	.long	-2139090931
	.long	-2139062144
	.long	-2139062144
	.long	269617096
	.long	-2121760640
	.long	-2139062144
	.long	-796686720
	.long	-1647785776
	.long	-2146430454
	.long	-2138994560
	.long	-2139062139
	.long	-1378319742
	.long	178047177
	.long	-2139090926
	.long	-2139061880
	.long	-1971289984
	.long	-913903485
	.long	252353992
	.long	-2004844528
	.long	-2138734462
	.long	-1870626688
	.long	255885440
	.long	-2004320240
	.long	-2139062142
	.long	-1870626688
	.long	222331008
	.long	-2139062256
	.long	-2139062144
	.long	-931102592
	.long	-2146430457
	.long	-2138994560
	.long	-2139062144
	.long	-1450671226
	.long	178170056
	.long	-2139090926
	.long	-2139061880
	.long	-2105507712
	.long	-910655358
	.long	302685930
	.long	-2004844528
	.long	-2139062143
	.long	-2088075136
	.long	-1463227928
	.long	269421214
	.long	-2104983424
	.long	-2139060864
	.long	-2138013568
	.long	269435008
	.long	-2104981376
	.long	-2139062144
	.long	-2138013568
	.long	269631616
	.long	-2121760640
	.long	-2139062144
	.long	-2004646272
	.long	-1633105751
	.long	-2146430454
	.long	-2138994560
	.long	-2139062144
	.long	-1199537534
	.long	178186953
	.long	-2139090926
	.long	-2139061880
	.long	-1971289984
	.long	-924194685
	.long	252354216
	.long	-2004844528
	.long	-2138734462
	.long	-1870626688
	.long	255885440
	.long	-2004320240
	.long	-2139062142
	.long	-1870626688
	.long	222331008
	.long	-2139062256
	.long	-2139062144
	.long	-931102592
	.long	-2146430457
	.long	-2138994560
	.long	-2139062144
	.long	-791641210
	.long	178112712
	.long	-2139090926
	.long	-2055175800
	.long	-2105507712
	.long	-911353726
	.long	302685384
	.long	-2004844528
	.long	-2139062143
	.long	-2088075136
	.long	-926316816
	.long	269421213
	.long	-2104983424
	.long	-2139060864
	.long	-2138013568
	.long	269435008
	.long	-2104981376
	.long	-2139062144
	.long	-2138013568
	.long	269631616
	.long	-2121760640
	.long	-2139062144
	.long	-2004646272
	.long	-1633105751
	.long	-2146430454
	.long	-2138994560
	.long	-2139062144
	.long	-1199537534
	.long	178186953
	.long	-2139090926
	.long	-2139061880
	.long	-1971289984
	.long	-924194685
	.long	252354216
	.long	-2004844528
	.long	-2138734462
	.long	-1870626688
	.long	255885440
	.long	-2004320240
	.long	-2139062142
	.long	-1870626688
	.long	306217088
	.long	-2004844528
	.long	-2139062143
	.long	-2088337280
	.long	-1463244408
	.long	269617822
	.long	-2121760640
	.long	-2139062144
	.long	-2138930560
	.long	-1628780104
	.long	-2146430454
	.long	-2138994560
	.long	-2139062144
	.long	-370637942
	.long	178170056
	.long	-2139090929
	.long	-2055175544
	.long	-2139062144
	.long	1082163344
	.long	-2004873201
	.long	-2139061624
	.long	-2139062144
	.long	1082163344
	.long	-2139090926
	.long	-1853849208
	.long	-2139062144
	.long	-1065320244
	.long	252215424
	.long	-2004844528
	.long	-2138734462
	.long	-863993728
	.long	255885440
	.long	-2004320240
	.long	-2139062142
	.long	-863993728
	.word	32896
	.byte	64
	.section .note.GNU-stack, ""
	.global k#
	.global steps#
	.global stepstotal#
	.global SIZE#
	.global SIZE2#
	.global maxrange#
	.global a#
	.global b#
	.global o#
// -- Begin DWARF2 SEGMENT .debug_info
	.section .debug_info
.debug_info_seg:
	.align 1
	.4byte 0x0000031e
	.2byte 0x0004
	.4byte .debug_abbrev_seg
	.byte 0x08
//	DW_TAG_compile_unit:
	.byte 0x01
//	DW_AT_comp_dir:
	.4byte .debug_str
//	DW_AT_name:
	.4byte .debug_str+0x22
//	DW_AT_producer:
	.4byte .debug_str+0x2c
	.4byte .debug_str+0x98
//	DW_AT_language:
	.byte 0x01
//	DW_AT_use_UTF8:
	.byte 0x01
//	DW_AT_low_pc:
	.8byte ..LN0
//	DW_AT_high_pc:
	.8byte ..LNsumArrayNOVEC.1966-..LN0
	.byte 0x01
//	DW_AT_stmt_list:
	.4byte .debug_line_seg
//	DW_TAG_base_type:
	.byte 0x02
//	DW_AT_byte_size:
	.byte 0x04
//	DW_AT_encoding:
	.byte 0x05
//	DW_AT_name:
	.4byte 0x00746e69
//	DW_TAG_subprogram:
	.byte 0x03
//	DW_AT_decl_line:
	.byte 0x0f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x15d
	.4byte .debug_str+0x15d
//	DW_AT_low_pc:
	.8byte ..L66
//	DW_AT_high_pc:
	.8byte ..LNfillarray.1430-..L66
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x11
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x188
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x12
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x190
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_location:
	.2byte 0x5e01
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x13
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x199
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x03
//	DW_AT_decl_line:
	.byte 0x29
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1a0
	.4byte .debug_str+0x1a0
//	DW_AT_low_pc:
	.8byte ..L102
//	DW_AT_high_pc:
	.8byte ..LNsumArray.1615-..L102
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x2b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x188
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x03
//	DW_AT_decl_line:
	.byte 0x33
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1a9
	.4byte .debug_str+0x1a9
//	DW_AT_low_pc:
	.8byte ..L117
//	DW_AT_high_pc:
	.8byte ..LNsumArray2.1800-..L117
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x35
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x188
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x03
//	DW_AT_decl_line:
	.byte 0x3d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1b3
	.4byte .debug_str+0x1b3
//	DW_AT_low_pc:
	.8byte ..L132
//	DW_AT_high_pc:
	.8byte ..LNsumArrayNOVEC.1966-..L132
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x3f
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x188
//	DW_AT_type:
	.4byte 0x00000033
	.byte 0x00
//	DW_TAG_subprogram:
	.byte 0x06
//	DW_AT_decl_line:
	.byte 0x48
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_prototyped:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0xba
	.4byte .debug_str+0xba
//	DW_AT_frame_base:
	.2byte 0x7702
	.byte 0x00
//	DW_AT_low_pc:
	.8byte ..L3
//	DW_AT_high_pc:
	.8byte ..LNmain.980-..L3
	.byte 0x01
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_formal_parameter:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x48
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_name:
	.4byte .debug_str+0xbf
//	DW_AT_location:
	.2byte 0x5501
//	DW_TAG_formal_parameter:
	.byte 0x07
//	DW_AT_decl_line:
	.byte 0x48
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_type:
	.4byte 0x00000156
//	DW_AT_name:
	.4byte .debug_str+0xc9
//	DW_AT_location:
	.2byte 0x5401
//	DW_TAG_variable:
	.byte 0x05
//	DW_AT_decl_line:
	.byte 0x49
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x13b
//	DW_AT_type:
	.4byte 0x00000171
//	DW_AT_location:
	.2byte 0x9102
	.byte 0x10
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x4a
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x143
//	DW_AT_type:
	.4byte 0x00000244
//	DW_TAG_variable:
	.byte 0x04
//	DW_AT_decl_line:
	.byte 0x4b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x151
//	DW_AT_type:
	.4byte 0x00000244
	.byte 0x00
//	DW_TAG_pointer_type:
	.byte 0x08
//	DW_AT_type:
	.4byte 0x0000015b
//	DW_TAG_pointer_type:
	.byte 0x08
//	DW_AT_type:
	.4byte 0x00000160
//	DW_TAG_base_type:
	.byte 0x09
//	DW_AT_byte_size:
	.byte 0x01
//	DW_AT_encoding:
	.byte 0x06
//	DW_AT_name:
	.4byte .debug_str+0xc4
//	DW_TAG_pointer_type:
	.byte 0x08
//	DW_AT_type:
	.4byte 0x0000016c
//	DW_TAG_const_type:
	.byte 0x0a
//	DW_AT_type:
	.4byte 0x00000171
//	DW_TAG_typedef:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x4b
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_name:
	.4byte .debug_str+0xce
//	DW_AT_type:
	.4byte 0x0000017c
//	DW_TAG_typedef:
	.byte 0x0b
//	DW_AT_decl_line:
	.byte 0x94
//	DW_AT_decl_file:
	.byte 0x03
//	DW_AT_name:
	.4byte .debug_str+0xd5
//	DW_AT_type:
	.4byte 0x00000187
//	DW_TAG_base_type:
	.byte 0x09
//	DW_AT_byte_size:
	.byte 0x08
//	DW_AT_encoding:
	.byte 0x05
//	DW_AT_name:
	.4byte .debug_str+0xde
//	DW_TAG_pointer_type:
	.byte 0x08
//	DW_AT_type:
	.4byte 0x00000193
//	DW_TAG_const_type:
	.byte 0x0a
//	DW_AT_type:
	.4byte 0x00000160
//	DW_TAG_pointer_type:
	.byte 0x08
//	DW_AT_type:
	.4byte 0x0000019d
//	DW_TAG_const_type:
	.byte 0x0a
//	DW_AT_type:
	.4byte 0x000001a2
//	DW_TAG_structure_type:
	.byte 0x0c
//	DW_AT_decl_line:
	.byte 0x85
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_byte_size:
	.byte 0x38
//	DW_AT_name:
	.2byte 0x6d74
	.byte 0x00
//	DW_TAG_member:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0x87
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x00
//	DW_AT_name:
	.4byte .debug_str+0xe3
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_member:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0x88
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0xea
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_member:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0x89
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x08
//	DW_AT_name:
	.4byte .debug_str+0xf1
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_member:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0x8a
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x0c
//	DW_AT_name:
	.4byte .debug_str+0xf9
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_member:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0x8b
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x10
//	DW_AT_name:
	.4byte .debug_str+0x101
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_member:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0x8c
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x14
//	DW_AT_name:
	.4byte .debug_str+0x108
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_member:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0x8d
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x18
//	DW_AT_name:
	.4byte .debug_str+0x110
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_member:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0x8e
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x1c
//	DW_AT_name:
	.4byte .debug_str+0x118
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_member:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0x8f
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x20
//	DW_AT_name:
	.4byte .debug_str+0x120
//	DW_AT_type:
	.4byte 0x00000033
//	DW_TAG_member:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0x92
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x28
//	DW_AT_name:
	.4byte .debug_str+0x129
//	DW_AT_type:
	.4byte 0x00000187
//	DW_TAG_member:
	.byte 0x0d
//	DW_AT_decl_line:
	.byte 0x93
//	DW_AT_decl_file:
	.byte 0x02
//	DW_AT_data_member_location:
	.2byte 0x2302
	.byte 0x30
//	DW_AT_name:
	.4byte .debug_str+0x133
//	DW_AT_type:
	.4byte 0x0000018e
	.byte 0x00
//	DW_TAG_pointer_type:
	.byte 0x08
//	DW_AT_type:
	.4byte 0x000001a2
//	DW_TAG_base_type:
	.byte 0x09
//	DW_AT_byte_size:
	.byte 0x04
//	DW_AT_encoding:
	.byte 0x07
//	DW_AT_name:
	.4byte .debug_str+0x167
//	DW_TAG_pointer_type:
	.byte 0x08
//	DW_AT_type:
	.4byte 0x00000255
//	DW_TAG_base_type:
	.byte 0x09
//	DW_AT_byte_size:
	.byte 0x04
//	DW_AT_encoding:
	.byte 0x04
//	DW_AT_name:
	.4byte .debug_str+0x174
//	DW_TAG_base_type:
	.byte 0x09
//	DW_AT_byte_size:
	.byte 0x08
//	DW_AT_encoding:
	.byte 0x07
//	DW_AT_name:
	.4byte .debug_str+0x17a
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.byte 0x04
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x006b
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_location:
	.2byte 0x0309
	.8byte k
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.byte 0x05
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1c1
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_location:
	.2byte 0x0309
	.8byte steps
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.byte 0x06
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1c7
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_location:
	.2byte 0x0309
	.8byte stepstotal
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.byte 0x07
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1d2
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_location:
	.2byte 0x0309
	.8byte SIZE
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.byte 0x08
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1d7
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_location:
	.2byte 0x0309
	.8byte SIZE2
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x0f
//	DW_AT_decl_line:
	.byte 0x09
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.4byte .debug_str+0x1dd
//	DW_AT_type:
	.4byte 0x00000033
//	DW_AT_location:
	.2byte 0x0309
	.8byte maxrange
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.byte 0x0b
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0061
//	DW_AT_type:
	.4byte 0x00000250
//	DW_AT_location:
	.2byte 0x0309
	.8byte a
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.byte 0x0c
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x0062
//	DW_AT_type:
	.4byte 0x00000250
//	DW_AT_location:
	.2byte 0x0309
	.8byte b
//	DW_AT_external:
	.byte 0x01
//	DW_TAG_variable:
	.byte 0x0e
//	DW_AT_decl_line:
	.byte 0x0d
//	DW_AT_decl_file:
	.byte 0x01
//	DW_AT_name:
	.2byte 0x006f
//	DW_AT_type:
	.4byte 0x00000250
//	DW_AT_location:
	.2byte 0x0309
	.8byte o
//	DW_AT_external:
	.byte 0x01
	.byte 0x00
// -- Begin DWARF2 SEGMENT .debug_line
	.section .debug_line
.debug_line_seg:
	.align 1
// -- Begin DWARF2 SEGMENT .debug_abbrev
	.section .debug_abbrev
.debug_abbrev_seg:
	.align 1
	.byte 0x01
	.byte 0x11
	.byte 0x01
	.byte 0x1b
	.byte 0x0e
	.byte 0x03
	.byte 0x0e
	.byte 0x25
	.byte 0x0e
	.2byte 0x7681
	.byte 0x0e
	.byte 0x13
	.byte 0x0b
	.byte 0x53
	.byte 0x0c
	.byte 0x11
	.byte 0x01
	.byte 0x12
	.byte 0x07
	.byte 0x6a
	.byte 0x0c
	.byte 0x10
	.byte 0x17
	.2byte 0x0000
	.byte 0x02
	.byte 0x24
	.byte 0x00
	.byte 0x0b
	.byte 0x0b
	.byte 0x3e
	.byte 0x0b
	.byte 0x03
	.byte 0x08
	.2byte 0x0000
	.byte 0x03
	.byte 0x2e
	.byte 0x01
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.2byte 0x4087
	.byte 0x0e
	.byte 0x11
	.byte 0x01
	.byte 0x12
	.byte 0x07
	.byte 0x3f
	.byte 0x0c
	.2byte 0x0000
	.byte 0x04
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x05
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.byte 0x02
	.byte 0x18
	.2byte 0x0000
	.byte 0x06
	.byte 0x2e
	.byte 0x01
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x49
	.byte 0x13
	.byte 0x27
	.byte 0x0c
	.byte 0x03
	.byte 0x0e
	.2byte 0x4087
	.byte 0x0e
	.byte 0x40
	.byte 0x18
	.byte 0x11
	.byte 0x01
	.byte 0x12
	.byte 0x07
	.byte 0x6a
	.byte 0x0c
	.byte 0x3f
	.byte 0x0c
	.2byte 0x0000
	.byte 0x07
	.byte 0x05
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x49
	.byte 0x13
	.byte 0x03
	.byte 0x0e
	.byte 0x02
	.byte 0x18
	.2byte 0x0000
	.byte 0x08
	.byte 0x0f
	.byte 0x00
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x09
	.byte 0x24
	.byte 0x00
	.byte 0x0b
	.byte 0x0b
	.byte 0x3e
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.2byte 0x0000
	.byte 0x0a
	.byte 0x26
	.byte 0x00
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x0b
	.byte 0x16
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x0c
	.byte 0x13
	.byte 0x01
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x0b
	.byte 0x0b
	.byte 0x03
	.byte 0x08
	.2byte 0x0000
	.byte 0x0d
	.byte 0x0d
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x38
	.byte 0x18
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.2byte 0x0000
	.byte 0x0e
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x08
	.byte 0x49
	.byte 0x13
	.byte 0x02
	.byte 0x18
	.byte 0x3f
	.byte 0x0c
	.2byte 0x0000
	.byte 0x0f
	.byte 0x34
	.byte 0x00
	.byte 0x3b
	.byte 0x0b
	.byte 0x3a
	.byte 0x0b
	.byte 0x03
	.byte 0x0e
	.byte 0x49
	.byte 0x13
	.byte 0x02
	.byte 0x18
	.byte 0x3f
	.byte 0x0c
	.2byte 0x0000
	.byte 0x00
// -- Begin DWARF2 SEGMENT .debug_frame
	.section .debug_frame
.debug_frame_seg:
	.align 1
// -- Begin DWARF2 SEGMENT .debug_str
	.section .debug_str,"MS",@progbits,1
.debug_str_seg:
	.align 1
	.8byte 0x69732f656d6f682f
	.8byte 0x7469672f6f69766c
	.8byte 0x6f68532d4c4e4b2f
	.8byte 0x7372756f432d7472
	.2byte 0x0065
	.8byte 0x2e3178652d6c6e6b
	.2byte 0x0063
	.8byte 0x2952286c65746e49
	.8byte 0x6c65746e49204320
	.8byte 0x4320343620295228
	.8byte 0x2072656c69706d6f
	.8byte 0x6c70706120726f66
	.8byte 0x736e6f6974616369
	.8byte 0x676e696e6e757220
	.8byte 0x65746e49206e6f20
	.8byte 0x2c3436202952286c
	.8byte 0x6e6f697372655620
	.8byte 0x2e312e302e373120
	.8byte 0x6c69754220323331
	.8byte 0x3031363130322064
	.4byte 0x000a3530
	.8byte 0x74706f712d20532d
	.8byte 0x3d74726f7065722d
	.8byte 0x2d43494d782d2035
	.8byte 0x2d20323135585641
	.2byte 0x0067
	.4byte 0x6e69616d
	.byte 0x00
	.4byte 0x63677261
	.byte 0x00
	.4byte 0x72616863
	.byte 0x00
	.4byte 0x76677261
	.byte 0x00
	.4byte 0x656d6974
	.2byte 0x745f
	.byte 0x00
	.8byte 0x745f656d69745f5f
	.byte 0x00
	.4byte 0x676e6f6c
	.byte 0x00
	.4byte 0x735f6d74
	.2byte 0x6365
	.byte 0x00
	.4byte 0x6d5f6d74
	.2byte 0x6e69
	.byte 0x00
	.8byte 0x0072756f685f6d74
	.8byte 0x007961646d5f6d74
	.4byte 0x6d5f6d74
	.2byte 0x6e6f
	.byte 0x00
	.8byte 0x00726165795f6d74
	.8byte 0x00796164775f6d74
	.8byte 0x00796164795f6d74
	.8byte 0x74736473695f6d74
	.byte 0x00
	.8byte 0x666f746d675f6d74
	.2byte 0x0066
	.8byte 0x00656e6f7a5f6d74
	.8byte 0x00656d6974776172
	.8byte 0x6f666e69656d6974
	.4byte 0x69676562
	.2byte 0x006e
	.8byte 0x6f666e69656d6974
	.4byte 0x00646e65
	.8byte 0x617272616c6c6966
	.2byte 0x0079
	.8byte 0x64656e6769736e75
	.4byte 0x746e6920
	.byte 0x00
	.4byte 0x616f6c66
	.2byte 0x0074
	.8byte 0x64656e6769736e75
	.4byte 0x6e6f6c20
	.2byte 0x0067
	.8byte 0x00746e6f63787561
	.8byte 0x32746e6f63787561
	.byte 0x00
	.4byte 0x76787561
	.2byte 0x6c61
	.byte 0x00
	.8byte 0x79617272416d7573
	.byte 0x00
	.8byte 0x79617272416d7573
	.2byte 0x0032
	.8byte 0x79617272416d7573
	.4byte 0x45564f4e
	.2byte 0x0043
	.4byte 0x70657473
	.2byte 0x0073
	.8byte 0x746f747370657473
	.2byte 0x6c61
	.byte 0x00
	.4byte 0x455a4953
	.byte 0x00
	.4byte 0x455a4953
	.2byte 0x0032
	.8byte 0x65676e617278616d
	.byte 0x00
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
	.section .text
.LNDBG_TXe:
# End

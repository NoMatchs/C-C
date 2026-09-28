
02.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <__tmainCRTStartup>:
   140001010:	41 57                	push   %r15
   140001012:	41 56                	push   %r14
   140001014:	41 55                	push   %r13
   140001016:	41 54                	push   %r12
   140001018:	55                   	push   %rbp
   140001019:	57                   	push   %rdi
   14000101a:	56                   	push   %rsi
   14000101b:	53                   	push   %rbx
   14000101c:	48 83 ec 58          	sub    $0x58,%rsp
   140001020:	b8 30 00 00 00       	mov    $0x30,%eax
   140001025:	65 67 48 8b 00       	mov    %gs:(%eax),%rax
   14000102a:	48 8b 70 08          	mov    0x8(%rax),%rsi
   14000102e:	48 8b 1d 0b 46 00 00 	mov    0x460b(%rip),%rbx        # 140005640 <.refptr.__native_startup_lock>
   140001035:	48 8b 3d dc 82 00 00 	mov    0x82dc(%rip),%rdi        # 140009318 <__imp_Sleep>
   14000103c:	eb 12                	jmp    140001050 <__tmainCRTStartup+0x40>
   14000103e:	66 90                	xchg   %ax,%ax
   140001040:	48 39 c6             	cmp    %rax,%rsi
   140001043:	0f 84 af 00 00 00    	je     1400010f8 <__tmainCRTStartup+0xe8>
   140001049:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   14000104e:	ff d7                	call   *%rdi
   140001050:	31 c0                	xor    %eax,%eax
   140001052:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   140001057:	75 e7                	jne    140001040 <__tmainCRTStartup+0x30>
   140001059:	45 31 ed             	xor    %r13d,%r13d
   14000105c:	48 8b 35 ed 45 00 00 	mov    0x45ed(%rip),%rsi        # 140005650 <.refptr.__native_startup_state>
   140001063:	8b 06                	mov    (%rsi),%eax
   140001065:	83 f8 01             	cmp    $0x1,%eax
   140001068:	0f 84 4a 03 00 00    	je     1400013b8 <__tmainCRTStartup+0x3a8>
   14000106e:	8b 06                	mov    (%rsi),%eax
   140001070:	85 c0                	test   %eax,%eax
   140001072:	0f 84 90 00 00 00    	je     140001108 <__tmainCRTStartup+0xf8>
   140001078:	c7 05 82 6f 00 00 01 	movl   $0x1,0x6f82(%rip)        # 140008004 <has_cctor>
   14000107f:	00 00 00 
   140001082:	45 85 ed             	test   %r13d,%r13d
   140001085:	0f 84 8d 02 00 00    	je     140001318 <__tmainCRTStartup+0x308>
   14000108b:	48 8b 05 0e 45 00 00 	mov    0x450e(%rip),%rax        # 1400055a0 <.refptr.__dyn_tls_init_callback>
   140001092:	48 8b 00             	mov    (%rax),%rax
   140001095:	48 85 c0             	test   %rax,%rax
   140001098:	74 0c                	je     1400010a6 <__tmainCRTStartup+0x96>
   14000109a:	45 31 c0             	xor    %r8d,%r8d
   14000109d:	ba 02 00 00 00       	mov    $0x2,%edx
   1400010a2:	31 c9                	xor    %ecx,%ecx
   1400010a4:	ff d0                	call   *%rax
   1400010a6:	e8 c5 17 00 00       	call   140002870 <__p___initenv>
   1400010ab:	4c 8b 05 5e 6f 00 00 	mov    0x6f5e(%rip),%r8        # 140008010 <envp>
   1400010b2:	8b 0d 68 6f 00 00    	mov    0x6f68(%rip),%ecx        # 140008020 <argc>
   1400010b8:	4c 89 00             	mov    %r8,(%rax)
   1400010bb:	48 8b 15 56 6f 00 00 	mov    0x6f56(%rip),%rdx        # 140008018 <argv>
   1400010c2:	e8 aa 04 00 00       	call   140001571 <main>
   1400010c7:	8b 0d 3b 6f 00 00    	mov    0x6f3b(%rip),%ecx        # 140008008 <managedapp>
   1400010cd:	85 c9                	test   %ecx,%ecx
   1400010cf:	0f 84 ed 02 00 00    	je     1400013c2 <__tmainCRTStartup+0x3b2>
   1400010d5:	8b 15 29 6f 00 00    	mov    0x6f29(%rip),%edx        # 140008004 <has_cctor>
   1400010db:	85 d2                	test   %edx,%edx
   1400010dd:	0f 84 1d 02 00 00    	je     140001300 <__tmainCRTStartup+0x2f0>
   1400010e3:	48 83 c4 58          	add    $0x58,%rsp
   1400010e7:	5b                   	pop    %rbx
   1400010e8:	5e                   	pop    %rsi
   1400010e9:	5f                   	pop    %rdi
   1400010ea:	5d                   	pop    %rbp
   1400010eb:	41 5c                	pop    %r12
   1400010ed:	41 5d                	pop    %r13
   1400010ef:	41 5e                	pop    %r14
   1400010f1:	41 5f                	pop    %r15
   1400010f3:	c3                   	ret
   1400010f4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010f8:	41 bd 01 00 00 00    	mov    $0x1,%r13d
   1400010fe:	e9 59 ff ff ff       	jmp    14000105c <__tmainCRTStartup+0x4c>
   140001103:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001108:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   14000110e:	e8 fd 09 00 00       	call   140001b10 <_pei386_runtime_relocator>
   140001113:	48 8b 0d b6 45 00 00 	mov    0x45b6(%rip),%rcx        # 1400056d0 <.refptr._gnu_exception_handler>
   14000111a:	ff 15 f0 81 00 00    	call   *0x81f0(%rip)        # 140009310 <__imp_SetUnhandledExceptionFilter>
   140001120:	48 8b 15 09 45 00 00 	mov    0x4509(%rip),%rdx        # 140005630 <.refptr.__mingw_oldexcpt_handler>
   140001127:	48 8d 0d d2 fe ff ff 	lea    -0x12e(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000112e:	48 89 02             	mov    %rax,(%rdx)
   140001131:	e8 62 18 00 00       	call   140002998 <_set_invalid_parameter_handler>
   140001136:	e8 45 12 00 00       	call   140002380 <_fpreset>
   14000113b:	48 8b 05 be 44 00 00 	mov    0x44be(%rip),%rax        # 140005600 <.refptr.__mingw_initltsdrot_force>
   140001142:	31 c9                	xor    %ecx,%ecx
   140001144:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000114a:	48 8b 05 bf 44 00 00 	mov    0x44bf(%rip),%rax        # 140005610 <.refptr.__mingw_initltsdyn_force>
   140001151:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001157:	48 8b 05 c2 44 00 00 	mov    0x44c2(%rip),%rax        # 140005620 <.refptr.__mingw_initltssuo_force>
   14000115e:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001164:	48 8b 05 05 44 00 00 	mov    0x4405(%rip),%rax        # 140005570 <.refptr.__ImageBase>
   14000116b:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001170:	75 3e                	jne    1400011b0 <__tmainCRTStartup+0x1a0>
   140001172:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140001176:	48 01 d0             	add    %rdx,%rax
   140001179:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   14000117f:	75 2f                	jne    1400011b0 <__tmainCRTStartup+0x1a0>
   140001181:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   140001185:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   14000118a:	0f 84 0a 02 00 00    	je     14000139a <__tmainCRTStartup+0x38a>
   140001190:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   140001195:	75 19                	jne    1400011b0 <__tmainCRTStartup+0x1a0>
   140001197:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   14000119e:	76 10                	jbe    1400011b0 <__tmainCRTStartup+0x1a0>
   1400011a0:	44 8b 88 f8 00 00 00 	mov    0xf8(%rax),%r9d
   1400011a7:	31 c9                	xor    %ecx,%ecx
   1400011a9:	45 85 c9             	test   %r9d,%r9d
   1400011ac:	0f 95 c1             	setne  %cl
   1400011af:	90                   	nop
   1400011b0:	48 8b 05 39 44 00 00 	mov    0x4439(%rip),%rax        # 1400055f0 <.refptr.__mingw_app_type>
   1400011b7:	89 0d 4b 6e 00 00    	mov    %ecx,0x6e4b(%rip)        # 140008008 <managedapp>
   1400011bd:	44 8b 00             	mov    (%rax),%r8d
   1400011c0:	45 85 c0             	test   %r8d,%r8d
   1400011c3:	0f 85 5f 01 00 00    	jne    140001328 <__tmainCRTStartup+0x318>
   1400011c9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400011ce:	e8 ad 17 00 00       	call   140002980 <__set_app_type>
   1400011d3:	e8 68 17 00 00       	call   140002940 <__p__fmode>
   1400011d8:	48 8b 15 e1 44 00 00 	mov    0x44e1(%rip),%rdx        # 1400056c0 <.refptr._fmode>
   1400011df:	8b 12                	mov    (%rdx),%edx
   1400011e1:	89 10                	mov    %edx,(%rax)
   1400011e3:	e8 50 17 00 00       	call   140002938 <__p__commode>
   1400011e8:	48 8b 15 b1 44 00 00 	mov    0x44b1(%rip),%rdx        # 1400056a0 <.refptr._commode>
   1400011ef:	8b 12                	mov    (%rdx),%edx
   1400011f1:	89 10                	mov    %edx,(%rax)
   1400011f3:	e8 88 05 00 00       	call   140001780 <_setargv>
   1400011f8:	85 c0                	test   %eax,%eax
   1400011fa:	0f 88 f4 00 00 00    	js     1400012f4 <__tmainCRTStartup+0x2e4>
   140001200:	48 8b 05 29 43 00 00 	mov    0x4329(%rip),%rax        # 140005530 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   140001207:	83 38 01             	cmpl   $0x1,(%rax)
   14000120a:	0f 84 79 01 00 00    	je     140001389 <__tmainCRTStartup+0x379>
   140001210:	48 8b 05 99 43 00 00 	mov    0x4399(%rip),%rax        # 1400055b0 <.refptr.__globallocalestatus>
   140001217:	83 38 ff             	cmpl   $0xffffffff,(%rax)
   14000121a:	0f 84 5a 01 00 00    	je     14000137a <__tmainCRTStartup+0x36a>
   140001220:	48 8b 15 69 44 00 00 	mov    0x4469(%rip),%rdx        # 140005690 <.refptr.__xi_z>
   140001227:	48 8b 0d 52 44 00 00 	mov    0x4452(%rip),%rcx        # 140005680 <.refptr.__xi_a>
   14000122e:	e8 5d 17 00 00       	call   140002990 <_initterm_e>
   140001233:	85 c0                	test   %eax,%eax
   140001235:	0f 85 35 01 00 00    	jne    140001370 <__tmainCRTStartup+0x360>
   14000123b:	48 8b 05 ae 44 00 00 	mov    0x44ae(%rip),%rax        # 1400056f0 <.refptr._newmode>
   140001242:	4c 8d 05 c7 6d 00 00 	lea    0x6dc7(%rip),%r8        # 140008010 <envp>
   140001249:	48 8d 15 c8 6d 00 00 	lea    0x6dc8(%rip),%rdx        # 140008018 <argv>
   140001250:	48 8d 0d c9 6d 00 00 	lea    0x6dc9(%rip),%rcx        # 140008020 <argc>
   140001257:	8b 00                	mov    (%rax),%eax
   140001259:	89 44 24 4c          	mov    %eax,0x4c(%rsp)
   14000125d:	48 8b 05 4c 44 00 00 	mov    0x444c(%rip),%rax        # 1400056b0 <.refptr._dowildcard>
   140001264:	44 8b 08             	mov    (%rax),%r9d
   140001267:	48 8d 44 24 4c       	lea    0x4c(%rsp),%rax
   14000126c:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001271:	e8 4a 16 00 00       	call   1400028c0 <__getmainargs>
   140001276:	85 c0                	test   %eax,%eax
   140001278:	78 7a                	js     1400012f4 <__tmainCRTStartup+0x2e4>
   14000127a:	4c 63 25 9f 6d 00 00 	movslq 0x6d9f(%rip),%r12        # 140008020 <argc>
   140001281:	41 8d 4c 24 01       	lea    0x1(%r12),%ecx
   140001286:	48 63 c9             	movslq %ecx,%rcx
   140001289:	48 c1 e1 03          	shl    $0x3,%rcx
   14000128d:	e8 66 17 00 00       	call   1400029f8 <malloc>
   140001292:	48 85 c0             	test   %rax,%rax
   140001295:	48 89 c5             	mov    %rax,%rbp
   140001298:	74 5a                	je     1400012f4 <__tmainCRTStartup+0x2e4>
   14000129a:	45 85 e4             	test   %r12d,%r12d
   14000129d:	48 8b 3d 74 6d 00 00 	mov    0x6d74(%rip),%rdi        # 140008018 <argv>
   1400012a4:	0f 8e 92 00 00 00    	jle    14000133c <__tmainCRTStartup+0x32c>
   1400012aa:	41 bf 01 00 00 00    	mov    $0x1,%r15d
   1400012b0:	eb 1f                	jmp    1400012d1 <__tmainCRTStartup+0x2c1>
   1400012b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400012b8:	4a 8b 54 ff f8       	mov    -0x8(%rdi,%r15,8),%rdx
   1400012bd:	4d 89 f0             	mov    %r14,%r8
   1400012c0:	e8 f3 16 00 00       	call   1400029b8 <memcpy>
   1400012c5:	49 8d 47 01          	lea    0x1(%r15),%rax
   1400012c9:	4d 39 fc             	cmp    %r15,%r12
   1400012cc:	74 69                	je     140001337 <__tmainCRTStartup+0x327>
   1400012ce:	49 89 c7             	mov    %rax,%r15
   1400012d1:	4a 8b 4c ff f8       	mov    -0x8(%rdi,%r15,8),%rcx
   1400012d6:	e8 45 16 00 00       	call   140002920 <strlen>
   1400012db:	4c 8d 70 01          	lea    0x1(%rax),%r14
   1400012df:	4c 89 f1             	mov    %r14,%rcx
   1400012e2:	e8 11 17 00 00       	call   1400029f8 <malloc>
   1400012e7:	48 85 c0             	test   %rax,%rax
   1400012ea:	48 89 c1             	mov    %rax,%rcx
   1400012ed:	4a 89 44 fd f8       	mov    %rax,-0x8(%rbp,%r15,8)
   1400012f2:	75 c4                	jne    1400012b8 <__tmainCRTStartup+0x2a8>
   1400012f4:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400012f9:	e8 82 15 00 00       	call   140002880 <_amsg_exit>
   1400012fe:	66 90                	xchg   %ax,%ax
   140001300:	89 44 24 3c          	mov    %eax,0x3c(%rsp)
   140001304:	e8 57 16 00 00       	call   140002960 <_cexit>
   140001309:	8b 44 24 3c          	mov    0x3c(%rsp),%eax
   14000130d:	e9 d1 fd ff ff       	jmp    1400010e3 <__tmainCRTStartup+0xd3>
   140001312:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001318:	31 c0                	xor    %eax,%eax
   14000131a:	48 87 03             	xchg   %rax,(%rbx)
   14000131d:	e9 69 fd ff ff       	jmp    14000108b <__tmainCRTStartup+0x7b>
   140001322:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001328:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000132d:	e8 4e 16 00 00       	call   140002980 <__set_app_type>
   140001332:	e9 9c fe ff ff       	jmp    1400011d3 <__tmainCRTStartup+0x1c3>
   140001337:	4a 8d 44 e5 00       	lea    0x0(%rbp,%r12,8),%rax
   14000133c:	48 8b 15 2d 43 00 00 	mov    0x432d(%rip),%rdx        # 140005670 <.refptr.__xc_z>
   140001343:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000134a:	48 8b 0d 0f 43 00 00 	mov    0x430f(%rip),%rcx        # 140005660 <.refptr.__xc_a>
   140001351:	48 89 2d c0 6c 00 00 	mov    %rbp,0x6cc0(%rip)        # 140008018 <argv>
   140001358:	e8 2b 16 00 00       	call   140002988 <_initterm>
   14000135d:	e8 fe 03 00 00       	call   140001760 <__main>
   140001362:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001368:	e9 15 fd ff ff       	jmp    140001082 <__tmainCRTStartup+0x72>
   14000136d:	0f 1f 00             	nopl   (%rax)
   140001370:	b8 ff 00 00 00       	mov    $0xff,%eax
   140001375:	e9 69 fd ff ff       	jmp    1400010e3 <__tmainCRTStartup+0xd3>
   14000137a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   14000137f:	e8 4c 16 00 00       	call   1400029d0 <_configthreadlocale>
   140001384:	e9 97 fe ff ff       	jmp    140001220 <__tmainCRTStartup+0x210>
   140001389:	48 8b 0d 50 43 00 00 	mov    0x4350(%rip),%rcx        # 1400056e0 <.refptr._matherr>
   140001390:	e8 5b 0b 00 00       	call   140001ef0 <__mingw_setusermatherr>
   140001395:	e9 76 fe ff ff       	jmp    140001210 <__tmainCRTStartup+0x200>
   14000139a:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   14000139e:	0f 86 0c fe ff ff    	jbe    1400011b0 <__tmainCRTStartup+0x1a0>
   1400013a4:	44 8b 90 e8 00 00 00 	mov    0xe8(%rax),%r10d
   1400013ab:	31 c9                	xor    %ecx,%ecx
   1400013ad:	45 85 d2             	test   %r10d,%r10d
   1400013b0:	0f 95 c1             	setne  %cl
   1400013b3:	e9 f8 fd ff ff       	jmp    1400011b0 <__tmainCRTStartup+0x1a0>
   1400013b8:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   1400013bd:	e8 be 14 00 00       	call   140002880 <_amsg_exit>
   1400013c2:	89 c1                	mov    %eax,%ecx
   1400013c4:	e8 97 0f 00 00       	call   140002360 <exit>
   1400013c9:	90                   	nop
   1400013ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400013d0 <WinMainCRTStartup>:
   1400013d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013d4 <.l_startw>:
   1400013d4:	48 8b 05 15 42 00 00 	mov    0x4215(%rip),%rax        # 1400055f0 <.refptr.__mingw_app_type>
   1400013db:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400013e1:	e8 2a fc ff ff       	call   140001010 <__tmainCRTStartup>
   1400013e6:	90                   	nop

00000001400013e7 <.l_endw>:
   1400013e7:	90                   	nop
   1400013e8:	48 83 c4 28          	add    $0x28,%rsp
   1400013ec:	c3                   	ret
   1400013ed:	0f 1f 00             	nopl   (%rax)

00000001400013f0 <mainCRTStartup>:
   1400013f0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013f4 <.l_start>:
   1400013f4:	48 8b 05 f5 41 00 00 	mov    0x41f5(%rip),%rax        # 1400055f0 <.refptr.__mingw_app_type>
   1400013fb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001401:	e8 0a fc ff ff       	call   140001010 <__tmainCRTStartup>
   140001406:	90                   	nop

0000000140001407 <.l_end>:
   140001407:	90                   	nop
   140001408:	48 83 c4 28          	add    $0x28,%rsp
   14000140c:	c3                   	ret
   14000140d:	0f 1f 00             	nopl   (%rax)

0000000140001410 <atexit>:
   140001410:	e9 5b 15 00 00       	jmp    140002970 <_crt_atexit>
   140001415:	90                   	nop
   140001416:	90                   	nop
   140001417:	90                   	nop
   140001418:	90                   	nop
   140001419:	90                   	nop
   14000141a:	90                   	nop
   14000141b:	90                   	nop
   14000141c:	90                   	nop
   14000141d:	90                   	nop
   14000141e:	90                   	nop
   14000141f:	90                   	nop

0000000140001420 <__gcc_register_frame>:
   140001420:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001430 <__gcc_deregister_frame>
   140001427:	e9 e4 ff ff ff       	jmp    140001410 <atexit>
   14000142c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001430 <__gcc_deregister_frame>:
   140001430:	c3                   	ret
   140001431:	90                   	nop
   140001432:	90                   	nop
   140001433:	90                   	nop
   140001434:	90                   	nop
   140001435:	90                   	nop
   140001436:	90                   	nop
   140001437:	90                   	nop
   140001438:	90                   	nop
   140001439:	90                   	nop
   14000143a:	90                   	nop
   14000143b:	90                   	nop
   14000143c:	90                   	nop
   14000143d:	90                   	nop
   14000143e:	90                   	nop
   14000143f:	90                   	nop

0000000140001440 <_Z5checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>:
   140001440:	55                   	push   %rbp
   140001441:	53                   	push   %rbx
   140001442:	48 83 ec 28          	sub    $0x28,%rsp
   140001446:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   14000144b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000144f:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140001453:	48 89 c1             	mov    %rax,%rcx
   140001456:	e8 e5 16 00 00       	call   140002b40 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv>
   14000145b:	48 83 f8 06          	cmp    $0x6,%rax
   14000145f:	0f 95 c0             	setne  %al
   140001462:	84 c0                	test   %al,%al
   140001464:	74 0a                	je     140001470 <_Z5checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x30>
   140001466:	b8 00 00 00 00       	mov    $0x0,%eax
   14000146b:	e9 fa 00 00 00       	jmp    14000156a <_Z5checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x12a>
   140001470:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140001474:	ba 00 00 00 00       	mov    $0x0,%edx
   140001479:	48 89 c1             	mov    %rax,%rcx
   14000147c:	e8 7f 1e 00 00       	call   140003300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy>
   140001481:	0f b6 00             	movzbl (%rax),%eax
   140001484:	3c 48                	cmp    $0x48,%al
   140001486:	0f 95 c0             	setne  %al
   140001489:	84 c0                	test   %al,%al
   14000148b:	74 0a                	je     140001497 <_Z5checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x57>
   14000148d:	b8 00 00 00 00       	mov    $0x0,%eax
   140001492:	e9 d3 00 00 00       	jmp    14000156a <_Z5checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x12a>
   140001497:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000149b:	ba 05 00 00 00       	mov    $0x5,%edx
   1400014a0:	48 89 c1             	mov    %rax,%rcx
   1400014a3:	e8 58 1e 00 00       	call   140003300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy>
   1400014a8:	0f b6 00             	movzbl (%rax),%eax
   1400014ab:	3c 21                	cmp    $0x21,%al
   1400014ad:	0f 95 c0             	setne  %al
   1400014b0:	84 c0                	test   %al,%al
   1400014b2:	74 0a                	je     1400014be <_Z5checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x7e>
   1400014b4:	b8 00 00 00 00       	mov    $0x0,%eax
   1400014b9:	e9 ac 00 00 00       	jmp    14000156a <_Z5checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x12a>
   1400014be:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400014c2:	ba 01 00 00 00       	mov    $0x1,%edx
   1400014c7:	48 89 c1             	mov    %rax,%rcx
   1400014ca:	e8 31 1e 00 00       	call   140003300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy>
   1400014cf:	0f b6 00             	movzbl (%rax),%eax
   1400014d2:	3c 61                	cmp    $0x61,%al
   1400014d4:	0f 95 c0             	setne  %al
   1400014d7:	84 c0                	test   %al,%al
   1400014d9:	74 0a                	je     1400014e5 <_Z5checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xa5>
   1400014db:	b8 00 00 00 00       	mov    $0x0,%eax
   1400014e0:	e9 85 00 00 00       	jmp    14000156a <_Z5checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x12a>
   1400014e5:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400014e9:	ba 02 00 00 00       	mov    $0x2,%edx
   1400014ee:	48 89 c1             	mov    %rax,%rcx
   1400014f1:	e8 0a 1e 00 00       	call   140003300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy>
   1400014f6:	0f b6 00             	movzbl (%rax),%eax
   1400014f9:	3c 62                	cmp    $0x62,%al
   1400014fb:	0f 95 c0             	setne  %al
   1400014fe:	84 c0                	test   %al,%al
   140001500:	74 07                	je     140001509 <_Z5checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xc9>
   140001502:	b8 00 00 00 00       	mov    $0x0,%eax
   140001507:	eb 61                	jmp    14000156a <_Z5checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x12a>
   140001509:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000150d:	ba 03 00 00 00       	mov    $0x3,%edx
   140001512:	48 89 c1             	mov    %rax,%rcx
   140001515:	e8 e6 1d 00 00       	call   140003300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy>
   14000151a:	0f b6 00             	movzbl (%rax),%eax
   14000151d:	3c 64                	cmp    $0x64,%al
   14000151f:	0f 95 c0             	setne  %al
   140001522:	84 c0                	test   %al,%al
   140001524:	74 07                	je     14000152d <_Z5checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0xed>
   140001526:	b8 00 00 00 00       	mov    $0x0,%eax
   14000152b:	eb 3d                	jmp    14000156a <_Z5checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x12a>
   14000152d:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140001531:	ba 04 00 00 00       	mov    $0x4,%edx
   140001536:	48 89 c1             	mov    %rax,%rcx
   140001539:	e8 c2 1d 00 00       	call   140003300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy>
   14000153e:	0f b6 18             	movzbl (%rax),%ebx
   140001541:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140001545:	ba 01 00 00 00       	mov    $0x1,%edx
   14000154a:	48 89 c1             	mov    %rax,%rcx
   14000154d:	e8 ae 1d 00 00       	call   140003300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy>
   140001552:	0f b6 00             	movzbl (%rax),%eax
   140001555:	38 c3                	cmp    %al,%bl
   140001557:	0f 95 c0             	setne  %al
   14000155a:	84 c0                	test   %al,%al
   14000155c:	74 07                	je     140001565 <_Z5checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x125>
   14000155e:	b8 00 00 00 00       	mov    $0x0,%eax
   140001563:	eb 05                	jmp    14000156a <_Z5checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE+0x12a>
   140001565:	b8 01 00 00 00       	mov    $0x1,%eax
   14000156a:	48 83 c4 28          	add    $0x28,%rsp
   14000156e:	5b                   	pop    %rbx
   14000156f:	5d                   	pop    %rbp
   140001570:	c3                   	ret

0000000140001571 <main>:
   140001571:	55                   	push   %rbp
   140001572:	53                   	push   %rbx
   140001573:	48 83 ec 68          	sub    $0x68,%rsp
   140001577:	48 8d 6c 24 60       	lea    0x60(%rsp),%rbp
   14000157c:	e8 df 01 00 00       	call   140001760 <__main>
   140001581:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
   140001585:	48 89 c1             	mov    %rax,%rcx
   140001588:	e8 d3 1c 00 00       	call   140003260 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
   14000158d:	48 8d 15 6c 3a 00 00 	lea    0x3a6c(%rip),%rdx        # 140005000 <.rdata>
   140001594:	48 8b 05 b5 3f 00 00 	mov    0x3fb5(%rip),%rax        # 140005550 <__fu1__ZSt4cout>
   14000159b:	48 89 c1             	mov    %rax,%rcx
   14000159e:	e8 dd 00 00 00       	call   140001680 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400015a3:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
   1400015a7:	48 8b 0d 92 3f 00 00 	mov    0x3f92(%rip),%rcx        # 140005540 <__fu0__ZSt3cin>
   1400015ae:	48 89 c2             	mov    %rax,%rdx
   1400015b1:	e8 c2 00 00 00       	call   140001678 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   1400015b6:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
   1400015ba:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   1400015be:	48 89 c1             	mov    %rax,%rcx
   1400015c1:	e8 ca 1b 00 00       	call   140003190 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>
   1400015c6:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   1400015ca:	48 89 c1             	mov    %rax,%rcx
   1400015cd:	e8 6e fe ff ff       	call   140001440 <_Z5checkNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE>
   1400015d2:	89 c3                	mov    %eax,%ebx
   1400015d4:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   1400015d8:	48 89 c1             	mov    %rax,%rcx
   1400015db:	e8 f0 1c 00 00       	call   1400032d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   1400015e0:	84 db                	test   %bl,%bl
   1400015e2:	74 18                	je     1400015fc <main+0x8b>
   1400015e4:	48 8d 15 26 3a 00 00 	lea    0x3a26(%rip),%rdx        # 140005011 <.rdata+0x11>
   1400015eb:	48 8b 05 5e 3f 00 00 	mov    0x3f5e(%rip),%rax        # 140005550 <__fu1__ZSt4cout>
   1400015f2:	48 89 c1             	mov    %rax,%rcx
   1400015f5:	e8 86 00 00 00       	call   140001680 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400015fa:	eb 16                	jmp    140001612 <main+0xa1>
   1400015fc:	48 8d 15 18 3a 00 00 	lea    0x3a18(%rip),%rdx        # 14000501b <.rdata+0x1b>
   140001603:	48 8b 05 46 3f 00 00 	mov    0x3f46(%rip),%rax        # 140005550 <__fu1__ZSt4cout>
   14000160a:	48 89 c1             	mov    %rax,%rcx
   14000160d:	e8 6e 00 00 00       	call   140001680 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001612:	bb 00 00 00 00       	mov    $0x0,%ebx
   140001617:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
   14000161b:	48 89 c1             	mov    %rax,%rcx
   14000161e:	e8 ad 1c 00 00       	call   1400032d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001623:	89 d8                	mov    %ebx,%eax
   140001625:	eb 2b                	jmp    140001652 <main+0xe1>
   140001627:	48 89 c3             	mov    %rax,%rbx
   14000162a:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   14000162e:	48 89 c1             	mov    %rax,%rcx
   140001631:	e8 9a 1c 00 00       	call   1400032d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001636:	eb 03                	jmp    14000163b <main+0xca>
   140001638:	48 89 c3             	mov    %rax,%rbx
   14000163b:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
   14000163f:	48 89 c1             	mov    %rax,%rcx
   140001642:	e8 89 1c 00 00       	call   1400032d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001647:	48 89 d8             	mov    %rbx,%rax
   14000164a:	48 89 c1             	mov    %rax,%rcx
   14000164d:	e8 2e 11 00 00       	call   140002780 <_Unwind_Resume>
   140001652:	48 83 c4 68          	add    $0x68,%rsp
   140001656:	5b                   	pop    %rbx
   140001657:	5d                   	pop    %rbp
   140001658:	c3                   	ret
   140001659:	90                   	nop
   14000165a:	90                   	nop
   14000165b:	90                   	nop
   14000165c:	90                   	nop
   14000165d:	90                   	nop
   14000165e:	90                   	nop
   14000165f:	90                   	nop

0000000140001660 <__gxx_personality_seh0>:
   140001660:	ff 25 4a 7e 00 00    	jmp    *0x7e4a(%rip)        # 1400094b0 <__imp___gxx_personality_seh0>
   140001666:	90                   	nop
   140001667:	90                   	nop

0000000140001668 <_Znwy>:
   140001668:	ff 25 3a 7e 00 00    	jmp    *0x7e3a(%rip)        # 1400094a8 <__imp__Znwy>
   14000166e:	90                   	nop
   14000166f:	90                   	nop

0000000140001670 <_ZdlPvy>:
   140001670:	ff 25 2a 7e 00 00    	jmp    *0x7e2a(%rip)        # 1400094a0 <__imp__ZdlPvy>
   140001676:	90                   	nop
   140001677:	90                   	nop

0000000140001678 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>:
   140001678:	ff 25 1a 7e 00 00    	jmp    *0x7e1a(%rip)        # 140009498 <__imp__ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   14000167e:	90                   	nop
   14000167f:	90                   	nop

0000000140001680 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
   140001680:	ff 25 0a 7e 00 00    	jmp    *0x7e0a(%rip)        # 140009490 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001686:	90                   	nop
   140001687:	90                   	nop

0000000140001688 <_ZSt21__glibcxx_assert_failPKciS0_S0_>:
   140001688:	ff 25 ea 7d 00 00    	jmp    *0x7dea(%rip)        # 140009478 <__imp__ZSt21__glibcxx_assert_failPKciS0_S0_>
   14000168e:	90                   	nop
   14000168f:	90                   	nop

0000000140001690 <_ZSt20__throw_length_errorPKc>:
   140001690:	ff 25 da 7d 00 00    	jmp    *0x7dda(%rip)        # 140009470 <__imp__ZSt20__throw_length_errorPKc>
   140001696:	90                   	nop
   140001697:	90                   	nop

0000000140001698 <_ZSt17__throw_bad_allocv>:
   140001698:	ff 25 ca 7d 00 00    	jmp    *0x7dca(%rip)        # 140009468 <__imp__ZSt17__throw_bad_allocv>
   14000169e:	90                   	nop
   14000169f:	90                   	nop

00000001400016a0 <__do_global_dtors>:
   1400016a0:	48 83 ec 28          	sub    $0x28,%rsp
   1400016a4:	48 8b 05 55 29 00 00 	mov    0x2955(%rip),%rax        # 140004000 <__data_start__>
   1400016ab:	48 8b 00             	mov    (%rax),%rax
   1400016ae:	48 85 c0             	test   %rax,%rax
   1400016b1:	74 22                	je     1400016d5 <__do_global_dtors+0x35>
   1400016b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400016b8:	ff d0                	call   *%rax
   1400016ba:	48 8b 05 3f 29 00 00 	mov    0x293f(%rip),%rax        # 140004000 <__data_start__>
   1400016c1:	48 8d 50 08          	lea    0x8(%rax),%rdx
   1400016c5:	48 8b 40 08          	mov    0x8(%rax),%rax
   1400016c9:	48 89 15 30 29 00 00 	mov    %rdx,0x2930(%rip)        # 140004000 <__data_start__>
   1400016d0:	48 85 c0             	test   %rax,%rax
   1400016d3:	75 e3                	jne    1400016b8 <__do_global_dtors+0x18>
   1400016d5:	48 83 c4 28          	add    $0x28,%rsp
   1400016d9:	c3                   	ret
   1400016da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400016e0 <__do_global_ctors>:
   1400016e0:	56                   	push   %rsi
   1400016e1:	53                   	push   %rbx
   1400016e2:	48 83 ec 28          	sub    $0x28,%rsp
   1400016e6:	48 8b 15 73 3e 00 00 	mov    0x3e73(%rip),%rdx        # 140005560 <.refptr.__CTOR_LIST__>
   1400016ed:	48 8b 02             	mov    (%rdx),%rax
   1400016f0:	83 f8 ff             	cmp    $0xffffffff,%eax
   1400016f3:	89 c1                	mov    %eax,%ecx
   1400016f5:	74 39                	je     140001730 <__do_global_ctors+0x50>
   1400016f7:	85 c9                	test   %ecx,%ecx
   1400016f9:	74 20                	je     14000171b <__do_global_ctors+0x3b>
   1400016fb:	89 c8                	mov    %ecx,%eax
   1400016fd:	83 e9 01             	sub    $0x1,%ecx
   140001700:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140001704:	48 29 c8             	sub    %rcx,%rax
   140001707:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   14000170c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001710:	ff 13                	call   *(%rbx)
   140001712:	48 83 eb 08          	sub    $0x8,%rbx
   140001716:	48 39 f3             	cmp    %rsi,%rbx
   140001719:	75 f5                	jne    140001710 <__do_global_ctors+0x30>
   14000171b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 1400016a0 <__do_global_dtors>
   140001722:	48 83 c4 28          	add    $0x28,%rsp
   140001726:	5b                   	pop    %rbx
   140001727:	5e                   	pop    %rsi
   140001728:	e9 e3 fc ff ff       	jmp    140001410 <atexit>
   14000172d:	0f 1f 00             	nopl   (%rax)
   140001730:	31 c0                	xor    %eax,%eax
   140001732:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001739:	00 00 00 00 
   14000173d:	0f 1f 00             	nopl   (%rax)
   140001740:	44 8d 40 01          	lea    0x1(%rax),%r8d
   140001744:	89 c1                	mov    %eax,%ecx
   140001746:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   14000174b:	4c 89 c0             	mov    %r8,%rax
   14000174e:	75 f0                	jne    140001740 <__do_global_ctors+0x60>
   140001750:	eb a5                	jmp    1400016f7 <__do_global_ctors+0x17>
   140001752:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001759:	00 00 00 00 
   14000175d:	0f 1f 00             	nopl   (%rax)

0000000140001760 <__main>:
   140001760:	8b 05 ca 68 00 00    	mov    0x68ca(%rip),%eax        # 140008030 <initialized>
   140001766:	85 c0                	test   %eax,%eax
   140001768:	74 06                	je     140001770 <__main+0x10>
   14000176a:	c3                   	ret
   14000176b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001770:	c7 05 b6 68 00 00 01 	movl   $0x1,0x68b6(%rip)        # 140008030 <initialized>
   140001777:	00 00 00 
   14000177a:	e9 61 ff ff ff       	jmp    1400016e0 <__do_global_ctors>
   14000177f:	90                   	nop

0000000140001780 <_setargv>:
   140001780:	31 c0                	xor    %eax,%eax
   140001782:	c3                   	ret
   140001783:	90                   	nop
   140001784:	90                   	nop
   140001785:	90                   	nop
   140001786:	90                   	nop
   140001787:	90                   	nop
   140001788:	90                   	nop
   140001789:	90                   	nop
   14000178a:	90                   	nop
   14000178b:	90                   	nop
   14000178c:	90                   	nop
   14000178d:	90                   	nop
   14000178e:	90                   	nop
   14000178f:	90                   	nop

0000000140001790 <__dyn_tls_dtor>:
   140001790:	83 fa 03             	cmp    $0x3,%edx
   140001793:	74 0b                	je     1400017a0 <__dyn_tls_dtor+0x10>
   140001795:	85 d2                	test   %edx,%edx
   140001797:	74 07                	je     1400017a0 <__dyn_tls_dtor+0x10>
   140001799:	c3                   	ret
   14000179a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400017a0:	e9 ab 0a 00 00       	jmp    140002250 <__mingw_TLScallback>
   1400017a5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400017ac:	00 00 00 00 

00000001400017b0 <__dyn_tls_init>:
   1400017b0:	56                   	push   %rsi
   1400017b1:	53                   	push   %rbx
   1400017b2:	48 83 ec 28          	sub    $0x28,%rsp
   1400017b6:	48 8b 05 63 3d 00 00 	mov    0x3d63(%rip),%rax        # 140005520 <.refptr._CRT_MT>
   1400017bd:	83 38 02             	cmpl   $0x2,(%rax)
   1400017c0:	74 06                	je     1400017c8 <__dyn_tls_init+0x18>
   1400017c2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   1400017c8:	83 fa 02             	cmp    $0x2,%edx
   1400017cb:	74 13                	je     1400017e0 <__dyn_tls_init+0x30>
   1400017cd:	83 fa 01             	cmp    $0x1,%edx
   1400017d0:	74 46                	je     140001818 <__dyn_tls_init+0x68>
   1400017d2:	48 83 c4 28          	add    $0x28,%rsp
   1400017d6:	5b                   	pop    %rbx
   1400017d7:	5e                   	pop    %rsi
   1400017d8:	c3                   	ret
   1400017d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400017e0:	48 8d 1d 01 40 00 00 	lea    0x4001(%rip),%rbx        # 1400057e8 <__xd_z>
   1400017e7:	48 8d 35 fa 3f 00 00 	lea    0x3ffa(%rip),%rsi        # 1400057e8 <__xd_z>
   1400017ee:	48 39 f3             	cmp    %rsi,%rbx
   1400017f1:	74 df                	je     1400017d2 <__dyn_tls_init+0x22>
   1400017f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400017f8:	48 8b 03             	mov    (%rbx),%rax
   1400017fb:	48 85 c0             	test   %rax,%rax
   1400017fe:	74 02                	je     140001802 <__dyn_tls_init+0x52>
   140001800:	ff d0                	call   *%rax
   140001802:	48 83 c3 08          	add    $0x8,%rbx
   140001806:	48 39 f3             	cmp    %rsi,%rbx
   140001809:	75 ed                	jne    1400017f8 <__dyn_tls_init+0x48>
   14000180b:	48 83 c4 28          	add    $0x28,%rsp
   14000180f:	5b                   	pop    %rbx
   140001810:	5e                   	pop    %rsi
   140001811:	c3                   	ret
   140001812:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001818:	48 83 c4 28          	add    $0x28,%rsp
   14000181c:	5b                   	pop    %rbx
   14000181d:	5e                   	pop    %rsi
   14000181e:	e9 2d 0a 00 00       	jmp    140002250 <__mingw_TLScallback>
   140001823:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000182a:	00 00 00 00 
   14000182e:	66 90                	xchg   %ax,%ax

0000000140001830 <__tlregdtor>:
   140001830:	31 c0                	xor    %eax,%eax
   140001832:	c3                   	ret
   140001833:	90                   	nop
   140001834:	90                   	nop
   140001835:	90                   	nop
   140001836:	90                   	nop
   140001837:	90                   	nop
   140001838:	90                   	nop
   140001839:	90                   	nop
   14000183a:	90                   	nop
   14000183b:	90                   	nop
   14000183c:	90                   	nop
   14000183d:	90                   	nop
   14000183e:	90                   	nop
   14000183f:	90                   	nop

0000000140001840 <_matherr>:
   140001840:	56                   	push   %rsi
   140001841:	53                   	push   %rbx
   140001842:	48 83 ec 78          	sub    $0x78,%rsp
   140001846:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
   14000184b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
   140001850:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
   140001856:	83 39 06             	cmpl   $0x6,(%rcx)
   140001859:	0f 87 cd 00 00 00    	ja     14000192c <_matherr+0xec>
   14000185f:	8b 01                	mov    (%rcx),%eax
   140001861:	48 8d 15 dc 3a 00 00 	lea    0x3adc(%rip),%rdx        # 140005344 <.rdata+0x124>
   140001868:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000186c:	48 01 d0             	add    %rdx,%rax
   14000186f:	ff e0                	jmp    *%rax
   140001871:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001878:	48 8d 1d c0 39 00 00 	lea    0x39c0(%rip),%rbx        # 14000523f <.rdata+0x1f>
   14000187f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140001883:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140001889:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000188e:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   140001893:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001898:	e8 93 10 00 00       	call   140002930 <__acrt_iob_func>
   14000189d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   1400018a4:	49 89 f1             	mov    %rsi,%r9
   1400018a7:	49 89 d8             	mov    %rbx,%r8
   1400018aa:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400018b0:	48 89 c1             	mov    %rax,%rcx
   1400018b3:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400018b9:	48 8d 15 58 3a 00 00 	lea    0x3a58(%rip),%rdx        # 140005318 <.rdata+0xf8>
   1400018c0:	e8 4b 0f 00 00       	call   140002810 <fprintf>
   1400018c5:	90                   	nop
   1400018c6:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
   1400018cb:	31 c0                	xor    %eax,%eax
   1400018cd:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
   1400018d2:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
   1400018d8:	48 83 c4 78          	add    $0x78,%rsp
   1400018dc:	5b                   	pop    %rbx
   1400018dd:	5e                   	pop    %rsi
   1400018de:	c3                   	ret
   1400018df:	90                   	nop
   1400018e0:	48 8d 1d 39 39 00 00 	lea    0x3939(%rip),%rbx        # 140005220 <.rdata>
   1400018e7:	eb 96                	jmp    14000187f <_matherr+0x3f>
   1400018e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400018f0:	48 8d 1d 89 39 00 00 	lea    0x3989(%rip),%rbx        # 140005280 <.rdata+0x60>
   1400018f7:	eb 86                	jmp    14000187f <_matherr+0x3f>
   1400018f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001900:	48 8d 1d 59 39 00 00 	lea    0x3959(%rip),%rbx        # 140005260 <.rdata+0x40>
   140001907:	e9 73 ff ff ff       	jmp    14000187f <_matherr+0x3f>
   14000190c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001910:	48 8d 1d b9 39 00 00 	lea    0x39b9(%rip),%rbx        # 1400052d0 <.rdata+0xb0>
   140001917:	e9 63 ff ff ff       	jmp    14000187f <_matherr+0x3f>
   14000191c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001920:	48 8d 1d 81 39 00 00 	lea    0x3981(%rip),%rbx        # 1400052a8 <.rdata+0x88>
   140001927:	e9 53 ff ff ff       	jmp    14000187f <_matherr+0x3f>
   14000192c:	48 8d 1d d3 39 00 00 	lea    0x39d3(%rip),%rbx        # 140005306 <.rdata+0xe6>
   140001933:	e9 47 ff ff ff       	jmp    14000187f <_matherr+0x3f>
   140001938:	90                   	nop
   140001939:	90                   	nop
   14000193a:	90                   	nop
   14000193b:	90                   	nop
   14000193c:	90                   	nop
   14000193d:	90                   	nop
   14000193e:	90                   	nop
   14000193f:	90                   	nop

0000000140001940 <__report_error>:
   140001940:	56                   	push   %rsi
   140001941:	53                   	push   %rbx
   140001942:	48 83 ec 38          	sub    $0x38,%rsp
   140001946:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000194b:	48 89 cb             	mov    %rcx,%rbx
   14000194e:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001953:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   140001958:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   14000195d:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001962:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001967:	e8 c4 0f 00 00       	call   140002930 <__acrt_iob_func>
   14000196c:	48 8d 15 ed 39 00 00 	lea    0x39ed(%rip),%rdx        # 140005360 <.rdata>
   140001973:	48 89 c1             	mov    %rax,%rcx
   140001976:	e8 95 0e 00 00       	call   140002810 <fprintf>
   14000197b:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   140001980:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001985:	e8 a6 0f 00 00       	call   140002930 <__acrt_iob_func>
   14000198a:	48 89 da             	mov    %rbx,%rdx
   14000198d:	48 89 c1             	mov    %rax,%rcx
   140001990:	49 89 f0             	mov    %rsi,%r8
   140001993:	e8 38 0e 00 00       	call   1400027d0 <vfprintf>
   140001998:	e8 03 10 00 00       	call   1400029a0 <abort>
   14000199d:	90                   	nop
   14000199e:	66 90                	xchg   %ax,%ax

00000001400019a0 <mark_section_writable>:
   1400019a0:	57                   	push   %rdi
   1400019a1:	56                   	push   %rsi
   1400019a2:	53                   	push   %rbx
   1400019a3:	48 83 ec 50          	sub    $0x50,%rsp
   1400019a7:	48 63 35 f6 66 00 00 	movslq 0x66f6(%rip),%rsi        # 1400080a4 <maxSections>
   1400019ae:	85 f6                	test   %esi,%esi
   1400019b0:	48 89 cb             	mov    %rcx,%rbx
   1400019b3:	0f 8e 17 01 00 00    	jle    140001ad0 <mark_section_writable+0x130>
   1400019b9:	48 8b 05 e8 66 00 00 	mov    0x66e8(%rip),%rax        # 1400080a8 <the_secs>
   1400019c0:	45 31 c9             	xor    %r9d,%r9d
   1400019c3:	48 83 c0 18          	add    $0x18,%rax
   1400019c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400019ce:	00 00 
   1400019d0:	4c 8b 00             	mov    (%rax),%r8
   1400019d3:	4c 39 c3             	cmp    %r8,%rbx
   1400019d6:	72 13                	jb     1400019eb <mark_section_writable+0x4b>
   1400019d8:	48 8b 50 08          	mov    0x8(%rax),%rdx
   1400019dc:	8b 52 08             	mov    0x8(%rdx),%edx
   1400019df:	49 01 d0             	add    %rdx,%r8
   1400019e2:	4c 39 c3             	cmp    %r8,%rbx
   1400019e5:	0f 82 8a 00 00 00    	jb     140001a75 <mark_section_writable+0xd5>
   1400019eb:	41 83 c1 01          	add    $0x1,%r9d
   1400019ef:	48 83 c0 28          	add    $0x28,%rax
   1400019f3:	41 39 f1             	cmp    %esi,%r9d
   1400019f6:	75 d8                	jne    1400019d0 <mark_section_writable+0x30>
   1400019f8:	48 89 d9             	mov    %rbx,%rcx
   1400019fb:	e8 a0 0a 00 00       	call   1400024a0 <__mingw_GetSectionForAddress>
   140001a00:	48 85 c0             	test   %rax,%rax
   140001a03:	48 89 c7             	mov    %rax,%rdi
   140001a06:	0f 84 e6 00 00 00    	je     140001af2 <mark_section_writable+0x152>
   140001a0c:	48 8b 05 95 66 00 00 	mov    0x6695(%rip),%rax        # 1400080a8 <the_secs>
   140001a13:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   140001a17:	48 c1 e3 03          	shl    $0x3,%rbx
   140001a1b:	48 01 d8             	add    %rbx,%rax
   140001a1e:	48 89 78 20          	mov    %rdi,0x20(%rax)
   140001a22:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001a28:	e8 b3 0b 00 00       	call   1400025e0 <_GetPEImageBase>
   140001a2d:	8b 57 0c             	mov    0xc(%rdi),%edx
   140001a30:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001a36:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   140001a3a:	48 8b 05 67 66 00 00 	mov    0x6667(%rip),%rax        # 1400080a8 <the_secs>
   140001a41:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001a46:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   140001a4b:	ff 15 df 78 00 00    	call   *0x78df(%rip)        # 140009330 <__imp_VirtualQuery>
   140001a51:	48 85 c0             	test   %rax,%rax
   140001a54:	0f 84 7d 00 00 00    	je     140001ad7 <mark_section_writable+0x137>
   140001a5a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   140001a5e:	8d 50 fc             	lea    -0x4(%rax),%edx
   140001a61:	83 e2 fb             	and    $0xfffffffb,%edx
   140001a64:	74 08                	je     140001a6e <mark_section_writable+0xce>
   140001a66:	8d 50 c0             	lea    -0x40(%rax),%edx
   140001a69:	83 e2 bf             	and    $0xffffffbf,%edx
   140001a6c:	75 12                	jne    140001a80 <mark_section_writable+0xe0>
   140001a6e:	83 05 2f 66 00 00 01 	addl   $0x1,0x662f(%rip)        # 1400080a4 <maxSections>
   140001a75:	48 83 c4 50          	add    $0x50,%rsp
   140001a79:	5b                   	pop    %rbx
   140001a7a:	5e                   	pop    %rsi
   140001a7b:	5f                   	pop    %rdi
   140001a7c:	c3                   	ret
   140001a7d:	0f 1f 00             	nopl   (%rax)
   140001a80:	83 f8 02             	cmp    $0x2,%eax
   140001a83:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   140001a89:	b8 04 00 00 00       	mov    $0x4,%eax
   140001a8e:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001a93:	44 0f 44 c0          	cmove  %eax,%r8d
   140001a97:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   140001a9c:	48 03 1d 05 66 00 00 	add    0x6605(%rip),%rbx        # 1400080a8 <the_secs>
   140001aa3:	49 89 d9             	mov    %rbx,%r9
   140001aa6:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140001aaa:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   140001aae:	ff 15 74 78 00 00    	call   *0x7874(%rip)        # 140009328 <__imp_VirtualProtect>
   140001ab4:	85 c0                	test   %eax,%eax
   140001ab6:	75 b6                	jne    140001a6e <mark_section_writable+0xce>
   140001ab8:	ff 15 3a 78 00 00    	call   *0x783a(%rip)        # 1400092f8 <__imp_GetLastError>
   140001abe:	48 8d 0d 13 39 00 00 	lea    0x3913(%rip),%rcx        # 1400053d8 <.rdata+0x78>
   140001ac5:	89 c2                	mov    %eax,%edx
   140001ac7:	e8 74 fe ff ff       	call   140001940 <__report_error>
   140001acc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ad0:	31 f6                	xor    %esi,%esi
   140001ad2:	e9 21 ff ff ff       	jmp    1400019f8 <mark_section_writable+0x58>
   140001ad7:	48 8b 05 ca 65 00 00 	mov    0x65ca(%rip),%rax        # 1400080a8 <the_secs>
   140001ade:	48 8d 0d bb 38 00 00 	lea    0x38bb(%rip),%rcx        # 1400053a0 <.rdata+0x40>
   140001ae5:	8b 57 08             	mov    0x8(%rdi),%edx
   140001ae8:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   140001aed:	e8 4e fe ff ff       	call   140001940 <__report_error>
   140001af2:	48 8d 0d 87 38 00 00 	lea    0x3887(%rip),%rcx        # 140005380 <.rdata+0x20>
   140001af9:	48 89 da             	mov    %rbx,%rdx
   140001afc:	e8 3f fe ff ff       	call   140001940 <__report_error>
   140001b01:	90                   	nop
   140001b02:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001b09:	00 00 00 00 
   140001b0d:	0f 1f 00             	nopl   (%rax)

0000000140001b10 <_pei386_runtime_relocator>:
   140001b10:	55                   	push   %rbp
   140001b11:	41 57                	push   %r15
   140001b13:	41 56                	push   %r14
   140001b15:	41 55                	push   %r13
   140001b17:	41 54                	push   %r12
   140001b19:	57                   	push   %rdi
   140001b1a:	56                   	push   %rsi
   140001b1b:	53                   	push   %rbx
   140001b1c:	48 83 ec 48          	sub    $0x48,%rsp
   140001b20:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140001b25:	8b 35 75 65 00 00    	mov    0x6575(%rip),%esi        # 1400080a0 <was_init.0>
   140001b2b:	85 f6                	test   %esi,%esi
   140001b2d:	74 11                	je     140001b40 <_pei386_runtime_relocator+0x30>
   140001b2f:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140001b33:	5b                   	pop    %rbx
   140001b34:	5e                   	pop    %rsi
   140001b35:	5f                   	pop    %rdi
   140001b36:	41 5c                	pop    %r12
   140001b38:	41 5d                	pop    %r13
   140001b3a:	41 5e                	pop    %r14
   140001b3c:	41 5f                	pop    %r15
   140001b3e:	5d                   	pop    %rbp
   140001b3f:	c3                   	ret
   140001b40:	c7 05 56 65 00 00 01 	movl   $0x1,0x6556(%rip)        # 1400080a0 <was_init.0>
   140001b47:	00 00 00 
   140001b4a:	e8 d1 09 00 00       	call   140002520 <__mingw_GetSectionCount>
   140001b4f:	48 98                	cltq
   140001b51:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001b55:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140001b5c:	00 
   140001b5d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001b61:	e8 2a 0c 00 00       	call   140002790 <___chkstk_ms>
   140001b66:	4c 8b 25 13 3a 00 00 	mov    0x3a13(%rip),%r12        # 140005580 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001b6d:	48 8b 1d 1c 3a 00 00 	mov    0x3a1c(%rip),%rbx        # 140005590 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001b74:	48 29 c4             	sub    %rax,%rsp
   140001b77:	c7 05 23 65 00 00 00 	movl   $0x0,0x6523(%rip)        # 1400080a4 <maxSections>
   140001b7e:	00 00 00 
   140001b81:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140001b86:	48 89 05 1b 65 00 00 	mov    %rax,0x651b(%rip)        # 1400080a8 <the_secs>
   140001b8d:	4c 89 e0             	mov    %r12,%rax
   140001b90:	48 29 d8             	sub    %rbx,%rax
   140001b93:	48 83 f8 07          	cmp    $0x7,%rax
   140001b97:	7e 96                	jle    140001b2f <_pei386_runtime_relocator+0x1f>
   140001b99:	48 83 f8 0b          	cmp    $0xb,%rax
   140001b9d:	0f 8f 85 01 00 00    	jg     140001d28 <_pei386_runtime_relocator+0x218>
   140001ba3:	8b 03                	mov    (%rbx),%eax
   140001ba5:	85 c0                	test   %eax,%eax
   140001ba7:	0f 85 73 02 00 00    	jne    140001e20 <_pei386_runtime_relocator+0x310>
   140001bad:	8b 43 04             	mov    0x4(%rbx),%eax
   140001bb0:	85 c0                	test   %eax,%eax
   140001bb2:	0f 85 68 02 00 00    	jne    140001e20 <_pei386_runtime_relocator+0x310>
   140001bb8:	8b 53 08             	mov    0x8(%rbx),%edx
   140001bbb:	83 fa 01             	cmp    $0x1,%edx
   140001bbe:	0f 85 d1 02 00 00    	jne    140001e95 <_pei386_runtime_relocator+0x385>
   140001bc4:	48 83 c3 0c          	add    $0xc,%rbx
   140001bc8:	48 8b 3d a1 39 00 00 	mov    0x39a1(%rip),%rdi        # 140005570 <.refptr.__ImageBase>
   140001bcf:	41 be ff ff ff ff    	mov    $0xffffffff,%r14d
   140001bd5:	4c 39 e3             	cmp    %r12,%rbx
   140001bd8:	72 7c                	jb     140001c56 <_pei386_runtime_relocator+0x146>
   140001bda:	e9 50 ff ff ff       	jmp    140001b2f <_pei386_runtime_relocator+0x1f>
   140001bdf:	90                   	nop
   140001be0:	83 fa 08             	cmp    $0x8,%edx
   140001be3:	0f 84 d7 01 00 00    	je     140001dc0 <_pei386_runtime_relocator+0x2b0>
   140001be9:	83 fa 10             	cmp    $0x10,%edx
   140001bec:	0f 85 7b 02 00 00    	jne    140001e6d <_pei386_runtime_relocator+0x35d>
   140001bf2:	41 0f b7 45 00       	movzwl 0x0(%r13),%eax
   140001bf7:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140001bfe:	66 85 c0             	test   %ax,%ax
   140001c01:	79 06                	jns    140001c09 <_pei386_runtime_relocator+0xf9>
   140001c03:	48 0d 00 00 ff ff    	or     $0xffffffffffff0000,%rax
   140001c09:	4c 29 d0             	sub    %r10,%rax
   140001c0c:	4c 01 c8             	add    %r9,%rax
   140001c0f:	45 85 c0             	test   %r8d,%r8d
   140001c12:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001c16:	75 18                	jne    140001c30 <_pei386_runtime_relocator+0x120>
   140001c18:	48 3d ff ff 00 00    	cmp    $0xffff,%rax
   140001c1e:	0f 8f 5d 02 00 00    	jg     140001e81 <_pei386_runtime_relocator+0x371>
   140001c24:	48 3d 00 80 ff ff    	cmp    $0xffffffffffff8000,%rax
   140001c2a:	0f 8c 51 02 00 00    	jl     140001e81 <_pei386_runtime_relocator+0x371>
   140001c30:	4c 8d 7d f8          	lea    -0x8(%rbp),%r15
   140001c34:	4c 89 e9             	mov    %r13,%rcx
   140001c37:	e8 64 fd ff ff       	call   1400019a0 <mark_section_writable>
   140001c3c:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   140001c42:	4c 89 fa             	mov    %r15,%rdx
   140001c45:	4c 89 e9             	mov    %r13,%rcx
   140001c48:	e8 6b 0d 00 00       	call   1400029b8 <memcpy>
   140001c4d:	48 83 c3 0c          	add    $0xc,%rbx
   140001c51:	4c 39 e3             	cmp    %r12,%rbx
   140001c54:	73 7a                	jae    140001cd0 <_pei386_runtime_relocator+0x1c0>
   140001c56:	44 8b 43 08          	mov    0x8(%rbx),%r8d
   140001c5a:	44 8b 13             	mov    (%rbx),%r10d
   140001c5d:	8b 4b 04             	mov    0x4(%rbx),%ecx
   140001c60:	41 0f b6 d0          	movzbl %r8b,%edx
   140001c64:	49 01 fa             	add    %rdi,%r10
   140001c67:	83 fa 20             	cmp    $0x20,%edx
   140001c6a:	4d 8b 0a             	mov    (%r10),%r9
   140001c6d:	4c 8d 2c 39          	lea    (%rcx,%rdi,1),%r13
   140001c71:	0f 84 d9 00 00 00    	je     140001d50 <_pei386_runtime_relocator+0x240>
   140001c77:	0f 86 63 ff ff ff    	jbe    140001be0 <_pei386_runtime_relocator+0xd0>
   140001c7d:	83 fa 40             	cmp    $0x40,%edx
   140001c80:	0f 85 e7 01 00 00    	jne    140001e6d <_pei386_runtime_relocator+0x35d>
   140001c86:	49 8b 45 00          	mov    0x0(%r13),%rax
   140001c8a:	4c 29 d0             	sub    %r10,%rax
   140001c8d:	4c 01 c8             	add    %r9,%rax
   140001c90:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140001c97:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001c9b:	75 09                	jne    140001ca6 <_pei386_runtime_relocator+0x196>
   140001c9d:	48 85 c0             	test   %rax,%rax
   140001ca0:	0f 89 db 01 00 00    	jns    140001e81 <_pei386_runtime_relocator+0x371>
   140001ca6:	4c 8d 7d f8          	lea    -0x8(%rbp),%r15
   140001caa:	4c 89 e9             	mov    %r13,%rcx
   140001cad:	48 83 c3 0c          	add    $0xc,%rbx
   140001cb1:	e8 ea fc ff ff       	call   1400019a0 <mark_section_writable>
   140001cb6:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140001cbc:	4c 89 fa             	mov    %r15,%rdx
   140001cbf:	4c 89 e9             	mov    %r13,%rcx
   140001cc2:	e8 f1 0c 00 00       	call   1400029b8 <memcpy>
   140001cc7:	4c 39 e3             	cmp    %r12,%rbx
   140001cca:	72 8a                	jb     140001c56 <_pei386_runtime_relocator+0x146>
   140001ccc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001cd0:	8b 05 ce 63 00 00    	mov    0x63ce(%rip),%eax        # 1400080a4 <maxSections>
   140001cd6:	31 db                	xor    %ebx,%ebx
   140001cd8:	48 8b 3d 49 76 00 00 	mov    0x7649(%rip),%rdi        # 140009328 <__imp_VirtualProtect>
   140001cdf:	85 c0                	test   %eax,%eax
   140001ce1:	0f 8e 48 fe ff ff    	jle    140001b2f <_pei386_runtime_relocator+0x1f>
   140001ce7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001cee:	00 00 
   140001cf0:	48 8b 05 b1 63 00 00 	mov    0x63b1(%rip),%rax        # 1400080a8 <the_secs>
   140001cf7:	48 01 d8             	add    %rbx,%rax
   140001cfa:	44 8b 00             	mov    (%rax),%r8d
   140001cfd:	45 85 c0             	test   %r8d,%r8d
   140001d00:	74 0d                	je     140001d0f <_pei386_runtime_relocator+0x1ff>
   140001d02:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001d06:	4d 89 f9             	mov    %r15,%r9
   140001d09:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001d0d:	ff d7                	call   *%rdi
   140001d0f:	83 c6 01             	add    $0x1,%esi
   140001d12:	48 83 c3 28          	add    $0x28,%rbx
   140001d16:	3b 35 88 63 00 00    	cmp    0x6388(%rip),%esi        # 1400080a4 <maxSections>
   140001d1c:	7c d2                	jl     140001cf0 <_pei386_runtime_relocator+0x1e0>
   140001d1e:	e9 0c fe ff ff       	jmp    140001b2f <_pei386_runtime_relocator+0x1f>
   140001d23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001d28:	8b 13                	mov    (%rbx),%edx
   140001d2a:	85 d2                	test   %edx,%edx
   140001d2c:	0f 85 ee 00 00 00    	jne    140001e20 <_pei386_runtime_relocator+0x310>
   140001d32:	8b 43 04             	mov    0x4(%rbx),%eax
   140001d35:	89 c7                	mov    %eax,%edi
   140001d37:	0b 7b 08             	or     0x8(%rbx),%edi
   140001d3a:	0f 85 70 fe ff ff    	jne    140001bb0 <_pei386_runtime_relocator+0xa0>
   140001d40:	48 83 c3 0c          	add    $0xc,%rbx
   140001d44:	e9 5a fe ff ff       	jmp    140001ba3 <_pei386_runtime_relocator+0x93>
   140001d49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001d50:	41 8b 45 00          	mov    0x0(%r13),%eax
   140001d54:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140001d5b:	85 c0                	test   %eax,%eax
   140001d5d:	79 0d                	jns    140001d6c <_pei386_runtime_relocator+0x25c>
   140001d5f:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
   140001d66:	ff ff ff 
   140001d69:	48 09 c8             	or     %rcx,%rax
   140001d6c:	4c 29 d0             	sub    %r10,%rax
   140001d6f:	4c 01 c8             	add    %r9,%rax
   140001d72:	45 85 c0             	test   %r8d,%r8d
   140001d75:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001d79:	75 1c                	jne    140001d97 <_pei386_runtime_relocator+0x287>
   140001d7b:	4c 39 f0             	cmp    %r14,%rax
   140001d7e:	0f 8f fd 00 00 00    	jg     140001e81 <_pei386_runtime_relocator+0x371>
   140001d84:	48 b9 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rcx
   140001d8b:	ff ff ff 
   140001d8e:	48 39 c8             	cmp    %rcx,%rax
   140001d91:	0f 8e ea 00 00 00    	jle    140001e81 <_pei386_runtime_relocator+0x371>
   140001d97:	4c 8d 7d f8          	lea    -0x8(%rbp),%r15
   140001d9b:	4c 89 e9             	mov    %r13,%rcx
   140001d9e:	e8 fd fb ff ff       	call   1400019a0 <mark_section_writable>
   140001da3:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001da9:	4c 89 fa             	mov    %r15,%rdx
   140001dac:	4c 89 e9             	mov    %r13,%rcx
   140001daf:	e8 04 0c 00 00       	call   1400029b8 <memcpy>
   140001db4:	e9 94 fe ff ff       	jmp    140001c4d <_pei386_runtime_relocator+0x13d>
   140001db9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001dc0:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
   140001dc5:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140001dcc:	84 c0                	test   %al,%al
   140001dce:	79 06                	jns    140001dd6 <_pei386_runtime_relocator+0x2c6>
   140001dd0:	48 0d 00 ff ff ff    	or     $0xffffffffffffff00,%rax
   140001dd6:	4c 29 d0             	sub    %r10,%rax
   140001dd9:	4c 01 c8             	add    %r9,%rax
   140001ddc:	45 85 c0             	test   %r8d,%r8d
   140001ddf:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140001de3:	75 16                	jne    140001dfb <_pei386_runtime_relocator+0x2eb>
   140001de5:	48 3d ff 00 00 00    	cmp    $0xff,%rax
   140001deb:	0f 8f 90 00 00 00    	jg     140001e81 <_pei386_runtime_relocator+0x371>
   140001df1:	48 83 f8 80          	cmp    $0xffffffffffffff80,%rax
   140001df5:	0f 8c 86 00 00 00    	jl     140001e81 <_pei386_runtime_relocator+0x371>
   140001dfb:	4c 8d 7d f8          	lea    -0x8(%rbp),%r15
   140001dff:	4c 89 e9             	mov    %r13,%rcx
   140001e02:	e8 99 fb ff ff       	call   1400019a0 <mark_section_writable>
   140001e07:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140001e0d:	4c 89 fa             	mov    %r15,%rdx
   140001e10:	4c 89 e9             	mov    %r13,%rcx
   140001e13:	e8 a0 0b 00 00       	call   1400029b8 <memcpy>
   140001e18:	e9 30 fe ff ff       	jmp    140001c4d <_pei386_runtime_relocator+0x13d>
   140001e1d:	0f 1f 00             	nopl   (%rax)
   140001e20:	4c 39 e3             	cmp    %r12,%rbx
   140001e23:	0f 83 06 fd ff ff    	jae    140001b2f <_pei386_runtime_relocator+0x1f>
   140001e29:	4c 8b 2d 40 37 00 00 	mov    0x3740(%rip),%r13        # 140005570 <.refptr.__ImageBase>
   140001e30:	4c 8d 7d f8          	lea    -0x8(%rbp),%r15
   140001e34:	0f 1f 40 00          	nopl   0x0(%rax)
   140001e38:	8b 7b 04             	mov    0x4(%rbx),%edi
   140001e3b:	48 83 c3 08          	add    $0x8,%rbx
   140001e3f:	8b 43 f8             	mov    -0x8(%rbx),%eax
   140001e42:	4c 01 ef             	add    %r13,%rdi
   140001e45:	03 07                	add    (%rdi),%eax
   140001e47:	48 89 f9             	mov    %rdi,%rcx
   140001e4a:	89 45 f8             	mov    %eax,-0x8(%rbp)
   140001e4d:	e8 4e fb ff ff       	call   1400019a0 <mark_section_writable>
   140001e52:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001e58:	4c 89 fa             	mov    %r15,%rdx
   140001e5b:	48 89 f9             	mov    %rdi,%rcx
   140001e5e:	e8 55 0b 00 00       	call   1400029b8 <memcpy>
   140001e63:	4c 39 e3             	cmp    %r12,%rbx
   140001e66:	72 d0                	jb     140001e38 <_pei386_runtime_relocator+0x328>
   140001e68:	e9 63 fe ff ff       	jmp    140001cd0 <_pei386_runtime_relocator+0x1c0>
   140001e6d:	48 8d 0d c4 35 00 00 	lea    0x35c4(%rip),%rcx        # 140005438 <.rdata+0xd8>
   140001e74:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   140001e7b:	00 
   140001e7c:	e8 bf fa ff ff       	call   140001940 <__report_error>
   140001e81:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001e86:	48 8d 0d db 35 00 00 	lea    0x35db(%rip),%rcx        # 140005468 <.rdata+0x108>
   140001e8d:	4d 89 e8             	mov    %r13,%r8
   140001e90:	e8 ab fa ff ff       	call   140001940 <__report_error>
   140001e95:	48 8d 0d 64 35 00 00 	lea    0x3564(%rip),%rcx        # 140005400 <.rdata+0xa0>
   140001e9c:	e8 9f fa ff ff       	call   140001940 <__report_error>
   140001ea1:	90                   	nop
   140001ea2:	90                   	nop
   140001ea3:	90                   	nop
   140001ea4:	90                   	nop
   140001ea5:	90                   	nop
   140001ea6:	90                   	nop
   140001ea7:	90                   	nop
   140001ea8:	90                   	nop
   140001ea9:	90                   	nop
   140001eaa:	90                   	nop
   140001eab:	90                   	nop
   140001eac:	90                   	nop
   140001ead:	90                   	nop
   140001eae:	90                   	nop
   140001eaf:	90                   	nop

0000000140001eb0 <__mingw_raise_matherr>:
   140001eb0:	48 83 ec 58          	sub    $0x58,%rsp
   140001eb4:	48 8b 05 f5 61 00 00 	mov    0x61f5(%rip),%rax        # 1400080b0 <stUserMathErr>
   140001ebb:	48 85 c0             	test   %rax,%rax
   140001ebe:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   140001ec2:	74 25                	je     140001ee9 <__mingw_raise_matherr+0x39>
   140001ec4:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001ecb:	00 00 
   140001ecd:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001ed1:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001ed6:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001edb:	0f 29 54 24 30       	movaps %xmm2,0x30(%rsp)
   140001ee0:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001ee6:	ff d0                	call   *%rax
   140001ee8:	90                   	nop
   140001ee9:	48 83 c4 58          	add    $0x58,%rsp
   140001eed:	c3                   	ret
   140001eee:	66 90                	xchg   %ax,%ax

0000000140001ef0 <__mingw_setusermatherr>:
   140001ef0:	48 89 0d b9 61 00 00 	mov    %rcx,0x61b9(%rip)        # 1400080b0 <stUserMathErr>
   140001ef7:	e9 c4 0a 00 00       	jmp    1400029c0 <__setusermatherr>
   140001efc:	90                   	nop
   140001efd:	90                   	nop
   140001efe:	90                   	nop
   140001eff:	90                   	nop

0000000140001f00 <_gnu_exception_handler>:
   140001f00:	53                   	push   %rbx
   140001f01:	48 83 ec 20          	sub    $0x20,%rsp
   140001f05:	48 8b 11             	mov    (%rcx),%rdx
   140001f08:	8b 02                	mov    (%rdx),%eax
   140001f0a:	48 89 cb             	mov    %rcx,%rbx
   140001f0d:	89 c1                	mov    %eax,%ecx
   140001f0f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001f15:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001f1b:	0f 84 8f 00 00 00    	je     140001fb0 <_gnu_exception_handler+0xb0>
   140001f21:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001f26:	77 47                	ja     140001f6f <_gnu_exception_handler+0x6f>
   140001f28:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001f2d:	76 61                	jbe    140001f90 <_gnu_exception_handler+0x90>
   140001f2f:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001f34:	83 f8 09             	cmp    $0x9,%eax
   140001f37:	77 6b                	ja     140001fa4 <_gnu_exception_handler+0xa4>
   140001f39:	48 8d 15 80 35 00 00 	lea    0x3580(%rip),%rdx        # 1400054c0 <.rdata>
   140001f40:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001f44:	48 01 d0             	add    %rdx,%rax
   140001f47:	ff e0                	jmp    *%rax
   140001f49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001f50:	31 d2                	xor    %edx,%edx
   140001f52:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001f57:	e8 4c 0a 00 00       	call   1400029a8 <signal>
   140001f5c:	48 83 f8 01          	cmp    $0x1,%rax
   140001f60:	0f 84 3e 01 00 00    	je     1400020a4 <_gnu_exception_handler+0x1a4>
   140001f66:	48 85 c0             	test   %rax,%rax
   140001f69:	0f 85 01 01 00 00    	jne    140002070 <_gnu_exception_handler+0x170>
   140001f6f:	48 8b 05 5a 61 00 00 	mov    0x615a(%rip),%rax        # 1400080d0 <__mingw_oldexcpt_handler>
   140001f76:	48 85 c0             	test   %rax,%rax
   140001f79:	74 45                	je     140001fc0 <_gnu_exception_handler+0xc0>
   140001f7b:	48 89 d9             	mov    %rbx,%rcx
   140001f7e:	48 83 c4 20          	add    $0x20,%rsp
   140001f82:	5b                   	pop    %rbx
   140001f83:	48 ff e0             	rex.W jmp *%rax
   140001f86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001f8d:	00 00 00 
   140001f90:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001f95:	0f 84 a5 00 00 00    	je     140002040 <_gnu_exception_handler+0x140>
   140001f9b:	77 33                	ja     140001fd0 <_gnu_exception_handler+0xd0>
   140001f9d:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001fa2:	75 cb                	jne    140001f6f <_gnu_exception_handler+0x6f>
   140001fa4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001fa9:	48 83 c4 20          	add    $0x20,%rsp
   140001fad:	5b                   	pop    %rbx
   140001fae:	c3                   	ret
   140001faf:	90                   	nop
   140001fb0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001fb4:	0f 85 67 ff ff ff    	jne    140001f21 <_gnu_exception_handler+0x21>
   140001fba:	eb e8                	jmp    140001fa4 <_gnu_exception_handler+0xa4>
   140001fbc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001fc0:	31 c0                	xor    %eax,%eax
   140001fc2:	48 83 c4 20          	add    $0x20,%rsp
   140001fc6:	5b                   	pop    %rbx
   140001fc7:	c3                   	ret
   140001fc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001fcf:	00 
   140001fd0:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001fd5:	74 cd                	je     140001fa4 <_gnu_exception_handler+0xa4>
   140001fd7:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001fdc:	75 91                	jne    140001f6f <_gnu_exception_handler+0x6f>
   140001fde:	31 d2                	xor    %edx,%edx
   140001fe0:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001fe5:	e8 be 09 00 00       	call   1400029a8 <signal>
   140001fea:	48 83 f8 01          	cmp    $0x1,%rax
   140001fee:	0f 84 9c 00 00 00    	je     140002090 <_gnu_exception_handler+0x190>
   140001ff4:	48 85 c0             	test   %rax,%rax
   140001ff7:	0f 84 72 ff ff ff    	je     140001f6f <_gnu_exception_handler+0x6f>
   140001ffd:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002002:	ff d0                	call   *%rax
   140002004:	eb 9e                	jmp    140001fa4 <_gnu_exception_handler+0xa4>
   140002006:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000200d:	00 00 00 
   140002010:	31 d2                	xor    %edx,%edx
   140002012:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002017:	e8 8c 09 00 00       	call   1400029a8 <signal>
   14000201c:	48 83 f8 01          	cmp    $0x1,%rax
   140002020:	0f 85 40 ff ff ff    	jne    140001f66 <_gnu_exception_handler+0x66>
   140002026:	ba 01 00 00 00       	mov    $0x1,%edx
   14000202b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002030:	e8 73 09 00 00       	call   1400029a8 <signal>
   140002035:	e9 6a ff ff ff       	jmp    140001fa4 <_gnu_exception_handler+0xa4>
   14000203a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002040:	31 d2                	xor    %edx,%edx
   140002042:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002047:	e8 5c 09 00 00       	call   1400029a8 <signal>
   14000204c:	48 83 f8 01          	cmp    $0x1,%rax
   140002050:	74 2a                	je     14000207c <_gnu_exception_handler+0x17c>
   140002052:	48 85 c0             	test   %rax,%rax
   140002055:	0f 84 14 ff ff ff    	je     140001f6f <_gnu_exception_handler+0x6f>
   14000205b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002060:	ff d0                	call   *%rax
   140002062:	e9 3d ff ff ff       	jmp    140001fa4 <_gnu_exception_handler+0xa4>
   140002067:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000206e:	00 00 
   140002070:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002075:	ff d0                	call   *%rax
   140002077:	e9 28 ff ff ff       	jmp    140001fa4 <_gnu_exception_handler+0xa4>
   14000207c:	ba 01 00 00 00       	mov    $0x1,%edx
   140002081:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002086:	e8 1d 09 00 00       	call   1400029a8 <signal>
   14000208b:	e9 14 ff ff ff       	jmp    140001fa4 <_gnu_exception_handler+0xa4>
   140002090:	ba 01 00 00 00       	mov    $0x1,%edx
   140002095:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000209a:	e8 09 09 00 00       	call   1400029a8 <signal>
   14000209f:	e9 00 ff ff ff       	jmp    140001fa4 <_gnu_exception_handler+0xa4>
   1400020a4:	ba 01 00 00 00       	mov    $0x1,%edx
   1400020a9:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400020ae:	e8 f5 08 00 00       	call   1400029a8 <signal>
   1400020b3:	e8 c8 02 00 00       	call   140002380 <_fpreset>
   1400020b8:	e9 e7 fe ff ff       	jmp    140001fa4 <_gnu_exception_handler+0xa4>
   1400020bd:	90                   	nop
   1400020be:	90                   	nop
   1400020bf:	90                   	nop

00000001400020c0 <__mingwthr_run_key_dtors.part.0>:
   1400020c0:	41 54                	push   %r12
   1400020c2:	55                   	push   %rbp
   1400020c3:	57                   	push   %rdi
   1400020c4:	56                   	push   %rsi
   1400020c5:	53                   	push   %rbx
   1400020c6:	48 83 ec 20          	sub    $0x20,%rsp
   1400020ca:	4c 8d 25 2f 60 00 00 	lea    0x602f(%rip),%r12        # 140008100 <__mingwthr_cs>
   1400020d1:	4c 89 e1             	mov    %r12,%rcx
   1400020d4:	ff 15 16 72 00 00    	call   *0x7216(%rip)        # 1400092f0 <__imp_EnterCriticalSection>
   1400020da:	48 8b 1d ff 5f 00 00 	mov    0x5fff(%rip),%rbx        # 1400080e0 <key_dtor_list>
   1400020e1:	48 85 db             	test   %rbx,%rbx
   1400020e4:	74 36                	je     14000211c <__mingwthr_run_key_dtors.part.0+0x5c>
   1400020e6:	48 8b 2d 33 72 00 00 	mov    0x7233(%rip),%rbp        # 140009320 <__imp_TlsGetValue>
   1400020ed:	48 8b 3d 04 72 00 00 	mov    0x7204(%rip),%rdi        # 1400092f8 <__imp_GetLastError>
   1400020f4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400020f8:	8b 0b                	mov    (%rbx),%ecx
   1400020fa:	ff d5                	call   *%rbp
   1400020fc:	48 89 c6             	mov    %rax,%rsi
   1400020ff:	ff d7                	call   *%rdi
   140002101:	48 85 f6             	test   %rsi,%rsi
   140002104:	74 0d                	je     140002113 <__mingwthr_run_key_dtors.part.0+0x53>
   140002106:	85 c0                	test   %eax,%eax
   140002108:	75 09                	jne    140002113 <__mingwthr_run_key_dtors.part.0+0x53>
   14000210a:	48 8b 43 08          	mov    0x8(%rbx),%rax
   14000210e:	48 89 f1             	mov    %rsi,%rcx
   140002111:	ff d0                	call   *%rax
   140002113:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140002117:	48 85 db             	test   %rbx,%rbx
   14000211a:	75 dc                	jne    1400020f8 <__mingwthr_run_key_dtors.part.0+0x38>
   14000211c:	4c 89 e1             	mov    %r12,%rcx
   14000211f:	48 83 c4 20          	add    $0x20,%rsp
   140002123:	5b                   	pop    %rbx
   140002124:	5e                   	pop    %rsi
   140002125:	5f                   	pop    %rdi
   140002126:	5d                   	pop    %rbp
   140002127:	41 5c                	pop    %r12
   140002129:	48 ff 25 d8 71 00 00 	rex.W jmp *0x71d8(%rip)        # 140009308 <__imp_LeaveCriticalSection>

0000000140002130 <___w64_mingwthr_add_key_dtor>:
   140002130:	57                   	push   %rdi
   140002131:	56                   	push   %rsi
   140002132:	53                   	push   %rbx
   140002133:	48 83 ec 20          	sub    $0x20,%rsp
   140002137:	8b 05 ab 5f 00 00    	mov    0x5fab(%rip),%eax        # 1400080e8 <__mingwthr_cs_init>
   14000213d:	85 c0                	test   %eax,%eax
   14000213f:	89 cf                	mov    %ecx,%edi
   140002141:	48 89 d6             	mov    %rdx,%rsi
   140002144:	75 0a                	jne    140002150 <___w64_mingwthr_add_key_dtor+0x20>
   140002146:	31 c0                	xor    %eax,%eax
   140002148:	48 83 c4 20          	add    $0x20,%rsp
   14000214c:	5b                   	pop    %rbx
   14000214d:	5e                   	pop    %rsi
   14000214e:	5f                   	pop    %rdi
   14000214f:	c3                   	ret
   140002150:	ba 18 00 00 00       	mov    $0x18,%edx
   140002155:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000215a:	e8 89 08 00 00       	call   1400029e8 <calloc>
   14000215f:	48 85 c0             	test   %rax,%rax
   140002162:	48 89 c3             	mov    %rax,%rbx
   140002165:	74 33                	je     14000219a <___w64_mingwthr_add_key_dtor+0x6a>
   140002167:	48 89 70 08          	mov    %rsi,0x8(%rax)
   14000216b:	48 8d 35 8e 5f 00 00 	lea    0x5f8e(%rip),%rsi        # 140008100 <__mingwthr_cs>
   140002172:	89 38                	mov    %edi,(%rax)
   140002174:	48 89 f1             	mov    %rsi,%rcx
   140002177:	ff 15 73 71 00 00    	call   *0x7173(%rip)        # 1400092f0 <__imp_EnterCriticalSection>
   14000217d:	48 8b 05 5c 5f 00 00 	mov    0x5f5c(%rip),%rax        # 1400080e0 <key_dtor_list>
   140002184:	48 89 f1             	mov    %rsi,%rcx
   140002187:	48 89 1d 52 5f 00 00 	mov    %rbx,0x5f52(%rip)        # 1400080e0 <key_dtor_list>
   14000218e:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140002192:	ff 15 70 71 00 00    	call   *0x7170(%rip)        # 140009308 <__imp_LeaveCriticalSection>
   140002198:	eb ac                	jmp    140002146 <___w64_mingwthr_add_key_dtor+0x16>
   14000219a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000219f:	eb a7                	jmp    140002148 <___w64_mingwthr_add_key_dtor+0x18>
   1400021a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400021a8:	00 00 00 00 
   1400021ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400021b0 <___w64_mingwthr_remove_key_dtor>:
   1400021b0:	56                   	push   %rsi
   1400021b1:	53                   	push   %rbx
   1400021b2:	48 83 ec 28          	sub    $0x28,%rsp
   1400021b6:	8b 05 2c 5f 00 00    	mov    0x5f2c(%rip),%eax        # 1400080e8 <__mingwthr_cs_init>
   1400021bc:	85 c0                	test   %eax,%eax
   1400021be:	89 cb                	mov    %ecx,%ebx
   1400021c0:	75 0e                	jne    1400021d0 <___w64_mingwthr_remove_key_dtor+0x20>
   1400021c2:	31 c0                	xor    %eax,%eax
   1400021c4:	48 83 c4 28          	add    $0x28,%rsp
   1400021c8:	5b                   	pop    %rbx
   1400021c9:	5e                   	pop    %rsi
   1400021ca:	c3                   	ret
   1400021cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400021d0:	48 8d 35 29 5f 00 00 	lea    0x5f29(%rip),%rsi        # 140008100 <__mingwthr_cs>
   1400021d7:	48 89 f1             	mov    %rsi,%rcx
   1400021da:	ff 15 10 71 00 00    	call   *0x7110(%rip)        # 1400092f0 <__imp_EnterCriticalSection>
   1400021e0:	48 8b 0d f9 5e 00 00 	mov    0x5ef9(%rip),%rcx        # 1400080e0 <key_dtor_list>
   1400021e7:	48 85 c9             	test   %rcx,%rcx
   1400021ea:	74 37                	je     140002223 <___w64_mingwthr_remove_key_dtor+0x73>
   1400021ec:	31 d2                	xor    %edx,%edx
   1400021ee:	eb 1b                	jmp    14000220b <___w64_mingwthr_remove_key_dtor+0x5b>
   1400021f0:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400021f7:	00 00 00 00 
   1400021fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002200:	48 85 c0             	test   %rax,%rax
   140002203:	48 89 ca             	mov    %rcx,%rdx
   140002206:	74 1b                	je     140002223 <___w64_mingwthr_remove_key_dtor+0x73>
   140002208:	48 89 c1             	mov    %rax,%rcx
   14000220b:	8b 01                	mov    (%rcx),%eax
   14000220d:	39 d8                	cmp    %ebx,%eax
   14000220f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002213:	75 eb                	jne    140002200 <___w64_mingwthr_remove_key_dtor+0x50>
   140002215:	48 85 d2             	test   %rdx,%rdx
   140002218:	74 1e                	je     140002238 <___w64_mingwthr_remove_key_dtor+0x88>
   14000221a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   14000221e:	e8 cd 07 00 00       	call   1400029f0 <free>
   140002223:	48 89 f1             	mov    %rsi,%rcx
   140002226:	ff 15 dc 70 00 00    	call   *0x70dc(%rip)        # 140009308 <__imp_LeaveCriticalSection>
   14000222c:	31 c0                	xor    %eax,%eax
   14000222e:	48 83 c4 28          	add    $0x28,%rsp
   140002232:	5b                   	pop    %rbx
   140002233:	5e                   	pop    %rsi
   140002234:	c3                   	ret
   140002235:	0f 1f 00             	nopl   (%rax)
   140002238:	48 89 05 a1 5e 00 00 	mov    %rax,0x5ea1(%rip)        # 1400080e0 <key_dtor_list>
   14000223f:	eb dd                	jmp    14000221e <___w64_mingwthr_remove_key_dtor+0x6e>
   140002241:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002248:	00 00 00 00 
   14000224c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002250 <__mingw_TLScallback>:
   140002250:	53                   	push   %rbx
   140002251:	48 83 ec 20          	sub    $0x20,%rsp
   140002255:	83 fa 02             	cmp    $0x2,%edx
   140002258:	0f 84 b2 00 00 00    	je     140002310 <__mingw_TLScallback+0xc0>
   14000225e:	77 30                	ja     140002290 <__mingw_TLScallback+0x40>
   140002260:	85 d2                	test   %edx,%edx
   140002262:	74 4c                	je     1400022b0 <__mingw_TLScallback+0x60>
   140002264:	8b 05 7e 5e 00 00    	mov    0x5e7e(%rip),%eax        # 1400080e8 <__mingwthr_cs_init>
   14000226a:	85 c0                	test   %eax,%eax
   14000226c:	0f 84 be 00 00 00    	je     140002330 <__mingw_TLScallback+0xe0>
   140002272:	c7 05 6c 5e 00 00 01 	movl   $0x1,0x5e6c(%rip)        # 1400080e8 <__mingwthr_cs_init>
   140002279:	00 00 00 
   14000227c:	b8 01 00 00 00       	mov    $0x1,%eax
   140002281:	48 83 c4 20          	add    $0x20,%rsp
   140002285:	5b                   	pop    %rbx
   140002286:	c3                   	ret
   140002287:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000228e:	00 00 
   140002290:	83 fa 03             	cmp    $0x3,%edx
   140002293:	75 e7                	jne    14000227c <__mingw_TLScallback+0x2c>
   140002295:	8b 05 4d 5e 00 00    	mov    0x5e4d(%rip),%eax        # 1400080e8 <__mingwthr_cs_init>
   14000229b:	85 c0                	test   %eax,%eax
   14000229d:	74 dd                	je     14000227c <__mingw_TLScallback+0x2c>
   14000229f:	e8 1c fe ff ff       	call   1400020c0 <__mingwthr_run_key_dtors.part.0>
   1400022a4:	eb d6                	jmp    14000227c <__mingw_TLScallback+0x2c>
   1400022a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400022ad:	00 00 00 
   1400022b0:	8b 05 32 5e 00 00    	mov    0x5e32(%rip),%eax        # 1400080e8 <__mingwthr_cs_init>
   1400022b6:	85 c0                	test   %eax,%eax
   1400022b8:	75 66                	jne    140002320 <__mingw_TLScallback+0xd0>
   1400022ba:	8b 05 28 5e 00 00    	mov    0x5e28(%rip),%eax        # 1400080e8 <__mingwthr_cs_init>
   1400022c0:	83 f8 01             	cmp    $0x1,%eax
   1400022c3:	75 b7                	jne    14000227c <__mingw_TLScallback+0x2c>
   1400022c5:	48 8b 1d 14 5e 00 00 	mov    0x5e14(%rip),%rbx        # 1400080e0 <key_dtor_list>
   1400022cc:	48 85 db             	test   %rbx,%rbx
   1400022cf:	74 18                	je     1400022e9 <__mingw_TLScallback+0x99>
   1400022d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400022d8:	48 89 d9             	mov    %rbx,%rcx
   1400022db:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   1400022df:	e8 0c 07 00 00       	call   1400029f0 <free>
   1400022e4:	48 85 db             	test   %rbx,%rbx
   1400022e7:	75 ef                	jne    1400022d8 <__mingw_TLScallback+0x88>
   1400022e9:	48 8d 0d 10 5e 00 00 	lea    0x5e10(%rip),%rcx        # 140008100 <__mingwthr_cs>
   1400022f0:	48 c7 05 e5 5d 00 00 	movq   $0x0,0x5de5(%rip)        # 1400080e0 <key_dtor_list>
   1400022f7:	00 00 00 00 
   1400022fb:	c7 05 e3 5d 00 00 00 	movl   $0x0,0x5de3(%rip)        # 1400080e8 <__mingwthr_cs_init>
   140002302:	00 00 00 
   140002305:	ff 15 dd 6f 00 00    	call   *0x6fdd(%rip)        # 1400092e8 <__imp_DeleteCriticalSection>
   14000230b:	e9 6c ff ff ff       	jmp    14000227c <__mingw_TLScallback+0x2c>
   140002310:	e8 6b 00 00 00       	call   140002380 <_fpreset>
   140002315:	b8 01 00 00 00       	mov    $0x1,%eax
   14000231a:	48 83 c4 20          	add    $0x20,%rsp
   14000231e:	5b                   	pop    %rbx
   14000231f:	c3                   	ret
   140002320:	e8 9b fd ff ff       	call   1400020c0 <__mingwthr_run_key_dtors.part.0>
   140002325:	eb 93                	jmp    1400022ba <__mingw_TLScallback+0x6a>
   140002327:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000232e:	00 00 
   140002330:	48 8d 0d c9 5d 00 00 	lea    0x5dc9(%rip),%rcx        # 140008100 <__mingwthr_cs>
   140002337:	ff 15 c3 6f 00 00    	call   *0x6fc3(%rip)        # 140009300 <__imp_InitializeCriticalSection>
   14000233d:	e9 30 ff ff ff       	jmp    140002272 <__mingw_TLScallback+0x22>
   140002342:	90                   	nop
   140002343:	90                   	nop
   140002344:	90                   	nop
   140002345:	90                   	nop
   140002346:	90                   	nop
   140002347:	90                   	nop
   140002348:	90                   	nop
   140002349:	90                   	nop
   14000234a:	90                   	nop
   14000234b:	90                   	nop
   14000234c:	90                   	nop
   14000234d:	90                   	nop
   14000234e:	90                   	nop
   14000234f:	90                   	nop
   140002350:	90                   	nop
   140002351:	90                   	nop
   140002352:	90                   	nop
   140002353:	90                   	nop
   140002354:	90                   	nop
   140002355:	90                   	nop
   140002356:	90                   	nop
   140002357:	90                   	nop
   140002358:	90                   	nop
   140002359:	90                   	nop
   14000235a:	90                   	nop
   14000235b:	90                   	nop
   14000235c:	90                   	nop
   14000235d:	90                   	nop
   14000235e:	90                   	nop
   14000235f:	90                   	nop

0000000140002360 <exit>:
   140002360:	48 83 ec 28          	sub    $0x28,%rsp
   140002364:	48 8b 05 75 32 00 00 	mov    0x3275(%rip),%rax        # 1400055e0 <.refptr.__imp_exit>
   14000236b:	ff 10                	call   *(%rax)
   14000236d:	90                   	nop
   14000236e:	66 90                	xchg   %ax,%ax

0000000140002370 <_exit>:
   140002370:	48 83 ec 28          	sub    $0x28,%rsp
   140002374:	48 8b 05 55 32 00 00 	mov    0x3255(%rip),%rax        # 1400055d0 <.refptr.__imp__exit>
   14000237b:	ff 10                	call   *(%rax)
   14000237d:	90                   	nop
   14000237e:	90                   	nop
   14000237f:	90                   	nop

0000000140002380 <_fpreset>:
   140002380:	db e3                	fninit
   140002382:	c3                   	ret
   140002383:	90                   	nop
   140002384:	90                   	nop
   140002385:	90                   	nop
   140002386:	90                   	nop
   140002387:	90                   	nop
   140002388:	90                   	nop
   140002389:	90                   	nop
   14000238a:	90                   	nop
   14000238b:	90                   	nop
   14000238c:	90                   	nop
   14000238d:	90                   	nop
   14000238e:	90                   	nop
   14000238f:	90                   	nop

0000000140002390 <_ValidateImageBase>:
   140002390:	31 c0                	xor    %eax,%eax
   140002392:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002397:	75 0f                	jne    1400023a8 <_ValidateImageBase+0x18>
   140002399:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   14000239d:	48 01 d1             	add    %rdx,%rcx
   1400023a0:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   1400023a6:	74 08                	je     1400023b0 <_ValidateImageBase+0x20>
   1400023a8:	c3                   	ret
   1400023a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400023b0:	31 c0                	xor    %eax,%eax
   1400023b2:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   1400023b8:	0f 94 c0             	sete   %al
   1400023bb:	c3                   	ret
   1400023bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400023c0 <_FindPESection>:
   1400023c0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   1400023c4:	48 01 c1             	add    %rax,%rcx
   1400023c7:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   1400023cc:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   1400023d0:	66 45 85 c0          	test   %r8w,%r8w
   1400023d4:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   1400023d9:	74 32                	je     14000240d <_FindPESection+0x4d>
   1400023db:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   1400023df:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   1400023e3:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   1400023e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400023ef:	00 
   1400023f0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400023f4:	4c 39 c2             	cmp    %r8,%rdx
   1400023f7:	4c 89 c1             	mov    %r8,%rcx
   1400023fa:	72 08                	jb     140002404 <_FindPESection+0x44>
   1400023fc:	03 48 08             	add    0x8(%rax),%ecx
   1400023ff:	48 39 ca             	cmp    %rcx,%rdx
   140002402:	72 0b                	jb     14000240f <_FindPESection+0x4f>
   140002404:	48 83 c0 28          	add    $0x28,%rax
   140002408:	4c 39 c8             	cmp    %r9,%rax
   14000240b:	75 e3                	jne    1400023f0 <_FindPESection+0x30>
   14000240d:	31 c0                	xor    %eax,%eax
   14000240f:	c3                   	ret

0000000140002410 <_FindPESectionByName>:
   140002410:	55                   	push   %rbp
   140002411:	57                   	push   %rdi
   140002412:	56                   	push   %rsi
   140002413:	53                   	push   %rbx
   140002414:	48 83 ec 28          	sub    $0x28,%rsp
   140002418:	48 89 cf             	mov    %rcx,%rdi
   14000241b:	e8 00 05 00 00       	call   140002920 <strlen>
   140002420:	48 83 f8 08          	cmp    $0x8,%rax
   140002424:	77 0e                	ja     140002434 <_FindPESectionByName+0x24>
   140002426:	48 8b 05 43 31 00 00 	mov    0x3143(%rip),%rax        # 140005570 <.refptr.__ImageBase>
   14000242d:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140002432:	74 14                	je     140002448 <_FindPESectionByName+0x38>
   140002434:	31 db                	xor    %ebx,%ebx
   140002436:	48 89 d8             	mov    %rbx,%rax
   140002439:	48 83 c4 28          	add    $0x28,%rsp
   14000243d:	5b                   	pop    %rbx
   14000243e:	5e                   	pop    %rsi
   14000243f:	5f                   	pop    %rdi
   140002440:	5d                   	pop    %rbp
   140002441:	c3                   	ret
   140002442:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002448:	48 63 68 3c          	movslq 0x3c(%rax),%rbp
   14000244c:	48 01 c5             	add    %rax,%rbp
   14000244f:	81 7d 00 50 45 00 00 	cmpl   $0x4550,0x0(%rbp)
   140002456:	75 dc                	jne    140002434 <_FindPESectionByName+0x24>
   140002458:	66 81 7d 18 0b 02    	cmpw   $0x20b,0x18(%rbp)
   14000245e:	75 d4                	jne    140002434 <_FindPESectionByName+0x24>
   140002460:	0f b7 45 14          	movzwl 0x14(%rbp),%eax
   140002464:	66 83 7d 06 00       	cmpw   $0x0,0x6(%rbp)
   140002469:	48 8d 5c 05 18       	lea    0x18(%rbp,%rax,1),%rbx
   14000246e:	74 c4                	je     140002434 <_FindPESectionByName+0x24>
   140002470:	31 f6                	xor    %esi,%esi
   140002472:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002478:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000247e:	48 89 fa             	mov    %rdi,%rdx
   140002481:	48 89 d9             	mov    %rbx,%rcx
   140002484:	e8 9f 04 00 00       	call   140002928 <strncmp>
   140002489:	85 c0                	test   %eax,%eax
   14000248b:	74 a9                	je     140002436 <_FindPESectionByName+0x26>
   14000248d:	0f b7 45 06          	movzwl 0x6(%rbp),%eax
   140002491:	83 c6 01             	add    $0x1,%esi
   140002494:	48 83 c3 28          	add    $0x28,%rbx
   140002498:	39 c6                	cmp    %eax,%esi
   14000249a:	72 dc                	jb     140002478 <_FindPESectionByName+0x68>
   14000249c:	eb 96                	jmp    140002434 <_FindPESectionByName+0x24>
   14000249e:	66 90                	xchg   %ax,%ax

00000001400024a0 <__mingw_GetSectionForAddress>:
   1400024a0:	48 8b 15 c9 30 00 00 	mov    0x30c9(%rip),%rdx        # 140005570 <.refptr.__ImageBase>
   1400024a7:	31 c0                	xor    %eax,%eax
   1400024a9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400024ae:	75 10                	jne    1400024c0 <__mingw_GetSectionForAddress+0x20>
   1400024b0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400024b4:	49 01 d0             	add    %rdx,%r8
   1400024b7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400024be:	74 08                	je     1400024c8 <__mingw_GetSectionForAddress+0x28>
   1400024c0:	c3                   	ret
   1400024c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400024c8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400024cf:	75 ef                	jne    1400024c0 <__mingw_GetSectionForAddress+0x20>
   1400024d1:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   1400024d6:	48 29 d1             	sub    %rdx,%rcx
   1400024d9:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   1400024de:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   1400024e3:	66 45 85 c0          	test   %r8w,%r8w
   1400024e7:	74 34                	je     14000251d <__mingw_GetSectionForAddress+0x7d>
   1400024e9:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   1400024ed:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400024f1:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   1400024f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400024fd:	00 00 00 
   140002500:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002504:	4c 39 c1             	cmp    %r8,%rcx
   140002507:	4c 89 c2             	mov    %r8,%rdx
   14000250a:	72 08                	jb     140002514 <__mingw_GetSectionForAddress+0x74>
   14000250c:	03 50 08             	add    0x8(%rax),%edx
   14000250f:	48 39 d1             	cmp    %rdx,%rcx
   140002512:	72 ac                	jb     1400024c0 <__mingw_GetSectionForAddress+0x20>
   140002514:	48 83 c0 28          	add    $0x28,%rax
   140002518:	4c 39 c8             	cmp    %r9,%rax
   14000251b:	75 e3                	jne    140002500 <__mingw_GetSectionForAddress+0x60>
   14000251d:	31 c0                	xor    %eax,%eax
   14000251f:	c3                   	ret

0000000140002520 <__mingw_GetSectionCount>:
   140002520:	48 8b 05 49 30 00 00 	mov    0x3049(%rip),%rax        # 140005570 <.refptr.__ImageBase>
   140002527:	31 c9                	xor    %ecx,%ecx
   140002529:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000252e:	75 0f                	jne    14000253f <__mingw_GetSectionCount+0x1f>
   140002530:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002534:	48 01 d0             	add    %rdx,%rax
   140002537:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   14000253d:	74 09                	je     140002548 <__mingw_GetSectionCount+0x28>
   14000253f:	89 c8                	mov    %ecx,%eax
   140002541:	c3                   	ret
   140002542:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002548:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000254e:	75 ef                	jne    14000253f <__mingw_GetSectionCount+0x1f>
   140002550:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   140002554:	89 c8                	mov    %ecx,%eax
   140002556:	c3                   	ret
   140002557:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000255e:	00 00 

0000000140002560 <_FindPESectionExec>:
   140002560:	4c 8b 05 09 30 00 00 	mov    0x3009(%rip),%r8        # 140005570 <.refptr.__ImageBase>
   140002567:	31 c0                	xor    %eax,%eax
   140002569:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   14000256f:	75 0f                	jne    140002580 <_FindPESectionExec+0x20>
   140002571:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002575:	4c 01 c2             	add    %r8,%rdx
   140002578:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000257e:	74 08                	je     140002588 <_FindPESectionExec+0x28>
   140002580:	c3                   	ret
   140002581:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002588:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000258e:	75 f0                	jne    140002580 <_FindPESectionExec+0x20>
   140002590:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   140002595:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002599:	66 45 85 c0          	test   %r8w,%r8w
   14000259d:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   1400025a2:	74 2c                	je     1400025d0 <_FindPESectionExec+0x70>
   1400025a4:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   1400025a8:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400025ac:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   1400025b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400025b8:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   1400025bc:	74 09                	je     1400025c7 <_FindPESectionExec+0x67>
   1400025be:	48 85 c9             	test   %rcx,%rcx
   1400025c1:	74 bd                	je     140002580 <_FindPESectionExec+0x20>
   1400025c3:	48 83 e9 01          	sub    $0x1,%rcx
   1400025c7:	48 83 c0 28          	add    $0x28,%rax
   1400025cb:	48 39 c2             	cmp    %rax,%rdx
   1400025ce:	75 e8                	jne    1400025b8 <_FindPESectionExec+0x58>
   1400025d0:	31 c0                	xor    %eax,%eax
   1400025d2:	c3                   	ret
   1400025d3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400025da:	00 00 00 00 
   1400025de:	66 90                	xchg   %ax,%ax

00000001400025e0 <_GetPEImageBase>:
   1400025e0:	48 8b 05 89 2f 00 00 	mov    0x2f89(%rip),%rax        # 140005570 <.refptr.__ImageBase>
   1400025e7:	31 d2                	xor    %edx,%edx
   1400025e9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400025ee:	75 0f                	jne    1400025ff <_GetPEImageBase+0x1f>
   1400025f0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   1400025f4:	48 01 c1             	add    %rax,%rcx
   1400025f7:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   1400025fd:	74 09                	je     140002608 <_GetPEImageBase+0x28>
   1400025ff:	48 89 d0             	mov    %rdx,%rax
   140002602:	c3                   	ret
   140002603:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002608:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   14000260e:	48 0f 44 d0          	cmove  %rax,%rdx
   140002612:	48 89 d0             	mov    %rdx,%rax
   140002615:	c3                   	ret
   140002616:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000261d:	00 00 00 

0000000140002620 <_IsNonwritableInCurrentImage>:
   140002620:	48 8b 15 49 2f 00 00 	mov    0x2f49(%rip),%rdx        # 140005570 <.refptr.__ImageBase>
   140002627:	31 c0                	xor    %eax,%eax
   140002629:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000262e:	75 10                	jne    140002640 <_IsNonwritableInCurrentImage+0x20>
   140002630:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002634:	49 01 d0             	add    %rdx,%r8
   140002637:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000263e:	74 08                	je     140002648 <_IsNonwritableInCurrentImage+0x28>
   140002640:	c3                   	ret
   140002641:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002648:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000264f:	75 ef                	jne    140002640 <_IsNonwritableInCurrentImage+0x20>
   140002651:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   140002656:	48 29 d1             	sub    %rdx,%rcx
   140002659:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   14000265e:	66 45 85 c9          	test   %r9w,%r9w
   140002662:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002667:	74 d7                	je     140002640 <_IsNonwritableInCurrentImage+0x20>
   140002669:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   14000266d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002671:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140002676:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000267d:	00 00 00 
   140002680:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140002684:	4c 39 c1             	cmp    %r8,%rcx
   140002687:	4c 89 c0             	mov    %r8,%rax
   14000268a:	72 08                	jb     140002694 <_IsNonwritableInCurrentImage+0x74>
   14000268c:	03 42 08             	add    0x8(%rdx),%eax
   14000268f:	48 39 c1             	cmp    %rax,%rcx
   140002692:	72 0c                	jb     1400026a0 <_IsNonwritableInCurrentImage+0x80>
   140002694:	48 83 c2 28          	add    $0x28,%rdx
   140002698:	49 39 d1             	cmp    %rdx,%r9
   14000269b:	75 e3                	jne    140002680 <_IsNonwritableInCurrentImage+0x60>
   14000269d:	31 c0                	xor    %eax,%eax
   14000269f:	c3                   	ret
   1400026a0:	8b 42 24             	mov    0x24(%rdx),%eax
   1400026a3:	f7 d0                	not    %eax
   1400026a5:	c1 e8 1f             	shr    $0x1f,%eax
   1400026a8:	c3                   	ret
   1400026a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400026b0 <__mingw_enum_import_library_names>:
   1400026b0:	4c 8b 1d b9 2e 00 00 	mov    0x2eb9(%rip),%r11        # 140005570 <.refptr.__ImageBase>
   1400026b7:	45 31 c9             	xor    %r9d,%r9d
   1400026ba:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   1400026c0:	75 10                	jne    1400026d2 <__mingw_enum_import_library_names+0x22>
   1400026c2:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   1400026c6:	4d 01 d8             	add    %r11,%r8
   1400026c9:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400026d0:	74 0e                	je     1400026e0 <__mingw_enum_import_library_names+0x30>
   1400026d2:	4c 89 c8             	mov    %r9,%rax
   1400026d5:	c3                   	ret
   1400026d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400026dd:	00 00 00 
   1400026e0:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400026e7:	75 e9                	jne    1400026d2 <__mingw_enum_import_library_names+0x22>
   1400026e9:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   1400026f0:	85 c0                	test   %eax,%eax
   1400026f2:	74 de                	je     1400026d2 <__mingw_enum_import_library_names+0x22>
   1400026f4:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   1400026f9:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400026fe:	66 45 85 d2          	test   %r10w,%r10w
   140002702:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002707:	74 c9                	je     1400026d2 <__mingw_enum_import_library_names+0x22>
   140002709:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   14000270d:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140002711:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140002716:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000271d:	00 00 00 
   140002720:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   140002724:	4c 39 c8             	cmp    %r9,%rax
   140002727:	4d 89 c8             	mov    %r9,%r8
   14000272a:	72 09                	jb     140002735 <__mingw_enum_import_library_names+0x85>
   14000272c:	44 03 42 08          	add    0x8(%rdx),%r8d
   140002730:	4c 39 c0             	cmp    %r8,%rax
   140002733:	72 13                	jb     140002748 <__mingw_enum_import_library_names+0x98>
   140002735:	48 83 c2 28          	add    $0x28,%rdx
   140002739:	49 39 d2             	cmp    %rdx,%r10
   14000273c:	75 e2                	jne    140002720 <__mingw_enum_import_library_names+0x70>
   14000273e:	45 31 c9             	xor    %r9d,%r9d
   140002741:	4c 89 c8             	mov    %r9,%rax
   140002744:	c3                   	ret
   140002745:	0f 1f 00             	nopl   (%rax)
   140002748:	4c 01 d8             	add    %r11,%rax
   14000274b:	eb 0a                	jmp    140002757 <__mingw_enum_import_library_names+0xa7>
   14000274d:	0f 1f 00             	nopl   (%rax)
   140002750:	83 e9 01             	sub    $0x1,%ecx
   140002753:	48 83 c0 14          	add    $0x14,%rax
   140002757:	44 8b 40 04          	mov    0x4(%rax),%r8d
   14000275b:	45 85 c0             	test   %r8d,%r8d
   14000275e:	75 07                	jne    140002767 <__mingw_enum_import_library_names+0xb7>
   140002760:	8b 50 0c             	mov    0xc(%rax),%edx
   140002763:	85 d2                	test   %edx,%edx
   140002765:	74 d7                	je     14000273e <__mingw_enum_import_library_names+0x8e>
   140002767:	85 c9                	test   %ecx,%ecx
   140002769:	7f e5                	jg     140002750 <__mingw_enum_import_library_names+0xa0>
   14000276b:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   14000276f:	4d 01 d9             	add    %r11,%r9
   140002772:	4c 89 c8             	mov    %r9,%rax
   140002775:	c3                   	ret
   140002776:	90                   	nop
   140002777:	90                   	nop
   140002778:	90                   	nop
   140002779:	90                   	nop
   14000277a:	90                   	nop
   14000277b:	90                   	nop
   14000277c:	90                   	nop
   14000277d:	90                   	nop
   14000277e:	90                   	nop
   14000277f:	90                   	nop

0000000140002780 <_Unwind_Resume>:
   140002780:	ff 25 52 6b 00 00    	jmp    *0x6b52(%rip)        # 1400092d8 <__IAT_start__>
   140002786:	90                   	nop
   140002787:	90                   	nop
   140002788:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000278f:	00 

0000000140002790 <___chkstk_ms>:
   140002790:	51                   	push   %rcx
   140002791:	50                   	push   %rax
   140002792:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002798:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000279d:	72 19                	jb     1400027b8 <___chkstk_ms+0x28>
   14000279f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   1400027a6:	48 83 09 00          	orq    $0x0,(%rcx)
   1400027aa:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   1400027b0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   1400027b6:	77 e7                	ja     14000279f <___chkstk_ms+0xf>
   1400027b8:	48 29 c1             	sub    %rax,%rcx
   1400027bb:	48 83 09 00          	orq    $0x0,(%rcx)
   1400027bf:	58                   	pop    %rax
   1400027c0:	59                   	pop    %rcx
   1400027c1:	c3                   	ret
   1400027c2:	90                   	nop
   1400027c3:	90                   	nop
   1400027c4:	90                   	nop
   1400027c5:	90                   	nop
   1400027c6:	90                   	nop
   1400027c7:	90                   	nop
   1400027c8:	90                   	nop
   1400027c9:	90                   	nop
   1400027ca:	90                   	nop
   1400027cb:	90                   	nop
   1400027cc:	90                   	nop
   1400027cd:	90                   	nop
   1400027ce:	90                   	nop
   1400027cf:	90                   	nop

00000001400027d0 <vfprintf>:
   1400027d0:	57                   	push   %rdi
   1400027d1:	56                   	push   %rsi
   1400027d2:	53                   	push   %rbx
   1400027d3:	48 83 ec 30          	sub    $0x30,%rsp
   1400027d7:	48 89 cb             	mov    %rcx,%rbx
   1400027da:	48 89 d6             	mov    %rdx,%rsi
   1400027dd:	4c 89 c7             	mov    %r8,%rdi
   1400027e0:	e8 7b 00 00 00       	call   140002860 <__local_stdio_printf_options>
   1400027e5:	45 31 c9             	xor    %r9d,%r9d
   1400027e8:	49 89 f0             	mov    %rsi,%r8
   1400027eb:	48 89 da             	mov    %rbx,%rdx
   1400027ee:	48 8b 08             	mov    (%rax),%rcx
   1400027f1:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
   1400027f6:	e8 4d 01 00 00       	call   140002948 <__stdio_common_vfprintf>
   1400027fb:	48 83 c4 30          	add    $0x30,%rsp
   1400027ff:	5b                   	pop    %rbx
   140002800:	5e                   	pop    %rsi
   140002801:	5f                   	pop    %rdi
   140002802:	c3                   	ret
   140002803:	90                   	nop
   140002804:	90                   	nop
   140002805:	90                   	nop
   140002806:	90                   	nop
   140002807:	90                   	nop
   140002808:	90                   	nop
   140002809:	90                   	nop
   14000280a:	90                   	nop
   14000280b:	90                   	nop
   14000280c:	90                   	nop
   14000280d:	90                   	nop
   14000280e:	90                   	nop
   14000280f:	90                   	nop

0000000140002810 <fprintf>:
   140002810:	57                   	push   %rdi
   140002811:	56                   	push   %rsi
   140002812:	53                   	push   %rbx
   140002813:	48 83 ec 40          	sub    $0x40,%rsp
   140002817:	48 8d 7c 24 70       	lea    0x70(%rsp),%rdi
   14000281c:	48 89 cb             	mov    %rcx,%rbx
   14000281f:	48 89 d6             	mov    %rdx,%rsi
   140002822:	4c 89 44 24 70       	mov    %r8,0x70(%rsp)
   140002827:	4c 89 4c 24 78       	mov    %r9,0x78(%rsp)
   14000282c:	48 89 7c 24 38       	mov    %rdi,0x38(%rsp)
   140002831:	e8 2a 00 00 00       	call   140002860 <__local_stdio_printf_options>
   140002836:	45 31 c9             	xor    %r9d,%r9d
   140002839:	49 89 f0             	mov    %rsi,%r8
   14000283c:	48 89 da             	mov    %rbx,%rdx
   14000283f:	48 8b 08             	mov    (%rax),%rcx
   140002842:	48 89 7c 24 20       	mov    %rdi,0x20(%rsp)
   140002847:	e8 fc 00 00 00       	call   140002948 <__stdio_common_vfprintf>
   14000284c:	48 83 c4 40          	add    $0x40,%rsp
   140002850:	5b                   	pop    %rbx
   140002851:	5e                   	pop    %rsi
   140002852:	5f                   	pop    %rdi
   140002853:	c3                   	ret
   140002854:	90                   	nop
   140002855:	90                   	nop
   140002856:	90                   	nop
   140002857:	90                   	nop
   140002858:	90                   	nop
   140002859:	90                   	nop
   14000285a:	90                   	nop
   14000285b:	90                   	nop
   14000285c:	90                   	nop
   14000285d:	90                   	nop
   14000285e:	90                   	nop
   14000285f:	90                   	nop

0000000140002860 <__local_stdio_printf_options>:
   140002860:	48 8d 05 e9 17 00 00 	lea    0x17e9(%rip),%rax        # 140004050 <options>
   140002867:	c3                   	ret
   140002868:	90                   	nop
   140002869:	90                   	nop
   14000286a:	90                   	nop
   14000286b:	90                   	nop
   14000286c:	90                   	nop
   14000286d:	90                   	nop
   14000286e:	90                   	nop
   14000286f:	90                   	nop

0000000140002870 <__p___initenv>:
   140002870:	48 8b 05 49 2d 00 00 	mov    0x2d49(%rip),%rax        # 1400055c0 <.refptr.__imp___initenv>
   140002877:	48 8b 00             	mov    (%rax),%rax
   14000287a:	c3                   	ret
   14000287b:	90                   	nop
   14000287c:	90                   	nop
   14000287d:	90                   	nop
   14000287e:	90                   	nop
   14000287f:	90                   	nop

0000000140002880 <_amsg_exit>:
   140002880:	53                   	push   %rbx
   140002881:	48 83 ec 20          	sub    $0x20,%rsp
   140002885:	89 cb                	mov    %ecx,%ebx
   140002887:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000288c:	e8 9f 00 00 00       	call   140002930 <__acrt_iob_func>
   140002891:	48 8d 15 58 2c 00 00 	lea    0x2c58(%rip),%rdx        # 1400054f0 <.rdata>
   140002898:	41 89 d8             	mov    %ebx,%r8d
   14000289b:	48 89 c1             	mov    %rax,%rcx
   14000289e:	e8 6d ff ff ff       	call   140002810 <fprintf>
   1400028a3:	48 8b 05 26 2d 00 00 	mov    0x2d26(%rip),%rax        # 1400055d0 <.refptr.__imp__exit>
   1400028aa:	b9 ff 00 00 00       	mov    $0xff,%ecx
   1400028af:	ff 10                	call   *(%rax)
   1400028b1:	90                   	nop
   1400028b2:	90                   	nop
   1400028b3:	90                   	nop
   1400028b4:	90                   	nop
   1400028b5:	90                   	nop
   1400028b6:	90                   	nop
   1400028b7:	90                   	nop
   1400028b8:	90                   	nop
   1400028b9:	90                   	nop
   1400028ba:	90                   	nop
   1400028bb:	90                   	nop
   1400028bc:	90                   	nop
   1400028bd:	90                   	nop
   1400028be:	90                   	nop
   1400028bf:	90                   	nop

00000001400028c0 <__getmainargs>:
   1400028c0:	55                   	push   %rbp
   1400028c1:	57                   	push   %rdi
   1400028c2:	56                   	push   %rsi
   1400028c3:	53                   	push   %rbx
   1400028c4:	48 83 ec 28          	sub    $0x28,%rsp
   1400028c8:	44 89 cd             	mov    %r9d,%ebp
   1400028cb:	48 89 d6             	mov    %rdx,%rsi
   1400028ce:	4c 89 c3             	mov    %r8,%rbx
   1400028d1:	48 89 cf             	mov    %rcx,%rdi
   1400028d4:	e8 9f 00 00 00       	call   140002978 <_initialize_narrow_environment>
   1400028d9:	83 fd 01             	cmp    $0x1,%ebp
   1400028dc:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400028e1:	83 d9 ff             	sbb    $0xffffffff,%ecx
   1400028e4:	e8 7f 00 00 00       	call   140002968 <_configure_narrow_argv>
   1400028e9:	e8 62 00 00 00       	call   140002950 <__p___argc>
   1400028ee:	8b 00                	mov    (%rax),%eax
   1400028f0:	89 07                	mov    %eax,(%rdi)
   1400028f2:	e8 61 00 00 00       	call   140002958 <__p___argv>
   1400028f7:	48 8b 00             	mov    (%rax),%rax
   1400028fa:	48 89 06             	mov    %rax,(%rsi)
   1400028fd:	e8 fe 00 00 00       	call   140002a00 <__p__environ>
   140002902:	48 8b 00             	mov    (%rax),%rax
   140002905:	48 89 03             	mov    %rax,(%rbx)
   140002908:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
   14000290d:	8b 08                	mov    (%rax),%ecx
   14000290f:	e8 cc 00 00 00       	call   1400029e0 <_set_new_mode>
   140002914:	31 c0                	xor    %eax,%eax
   140002916:	48 83 c4 28          	add    $0x28,%rsp
   14000291a:	5b                   	pop    %rbx
   14000291b:	5e                   	pop    %rsi
   14000291c:	5f                   	pop    %rdi
   14000291d:	5d                   	pop    %rbp
   14000291e:	c3                   	ret
   14000291f:	90                   	nop

0000000140002920 <strlen>:
   140002920:	ff 25 2a 6b 00 00    	jmp    *0x6b2a(%rip)        # 140009450 <__imp_strlen>
   140002926:	90                   	nop
   140002927:	90                   	nop

0000000140002928 <strncmp>:
   140002928:	ff 25 2a 6b 00 00    	jmp    *0x6b2a(%rip)        # 140009458 <__imp_strncmp>
   14000292e:	90                   	nop
   14000292f:	90                   	nop

0000000140002930 <__acrt_iob_func>:
   140002930:	ff 25 f2 6a 00 00    	jmp    *0x6af2(%rip)        # 140009428 <__imp___acrt_iob_func>
   140002936:	90                   	nop
   140002937:	90                   	nop

0000000140002938 <__p__commode>:
   140002938:	ff 25 f2 6a 00 00    	jmp    *0x6af2(%rip)        # 140009430 <__imp___p__commode>
   14000293e:	90                   	nop
   14000293f:	90                   	nop

0000000140002940 <__p__fmode>:
   140002940:	ff 25 f2 6a 00 00    	jmp    *0x6af2(%rip)        # 140009438 <__imp___p__fmode>
   140002946:	90                   	nop
   140002947:	90                   	nop

0000000140002948 <__stdio_common_vfprintf>:
   140002948:	ff 25 f2 6a 00 00    	jmp    *0x6af2(%rip)        # 140009440 <__imp___stdio_common_vfprintf>
   14000294e:	90                   	nop
   14000294f:	90                   	nop

0000000140002950 <__p___argc>:
   140002950:	ff 25 5a 6a 00 00    	jmp    *0x6a5a(%rip)        # 1400093b0 <__imp___p___argc>
   140002956:	90                   	nop
   140002957:	90                   	nop

0000000140002958 <__p___argv>:
   140002958:	ff 25 5a 6a 00 00    	jmp    *0x6a5a(%rip)        # 1400093b8 <__imp___p___argv>
   14000295e:	90                   	nop
   14000295f:	90                   	nop

0000000140002960 <_cexit>:
   140002960:	ff 25 5a 6a 00 00    	jmp    *0x6a5a(%rip)        # 1400093c0 <__imp__cexit>
   140002966:	90                   	nop
   140002967:	90                   	nop

0000000140002968 <_configure_narrow_argv>:
   140002968:	ff 25 5a 6a 00 00    	jmp    *0x6a5a(%rip)        # 1400093c8 <__imp__configure_narrow_argv>
   14000296e:	90                   	nop
   14000296f:	90                   	nop

0000000140002970 <_crt_atexit>:
   140002970:	ff 25 5a 6a 00 00    	jmp    *0x6a5a(%rip)        # 1400093d0 <__imp__crt_atexit>
   140002976:	90                   	nop
   140002977:	90                   	nop

0000000140002978 <_initialize_narrow_environment>:
   140002978:	ff 25 62 6a 00 00    	jmp    *0x6a62(%rip)        # 1400093e0 <__imp__initialize_narrow_environment>
   14000297e:	90                   	nop
   14000297f:	90                   	nop

0000000140002980 <__set_app_type>:
   140002980:	ff 25 62 6a 00 00    	jmp    *0x6a62(%rip)        # 1400093e8 <__imp___set_app_type>
   140002986:	90                   	nop
   140002987:	90                   	nop

0000000140002988 <_initterm>:
   140002988:	ff 25 62 6a 00 00    	jmp    *0x6a62(%rip)        # 1400093f0 <__imp__initterm>
   14000298e:	90                   	nop
   14000298f:	90                   	nop

0000000140002990 <_initterm_e>:
   140002990:	ff 25 62 6a 00 00    	jmp    *0x6a62(%rip)        # 1400093f8 <__imp__initterm_e>
   140002996:	90                   	nop
   140002997:	90                   	nop

0000000140002998 <_set_invalid_parameter_handler>:
   140002998:	ff 25 62 6a 00 00    	jmp    *0x6a62(%rip)        # 140009400 <__imp__set_invalid_parameter_handler>
   14000299e:	90                   	nop
   14000299f:	90                   	nop

00000001400029a0 <abort>:
   1400029a0:	ff 25 62 6a 00 00    	jmp    *0x6a62(%rip)        # 140009408 <__imp_abort>
   1400029a6:	90                   	nop
   1400029a7:	90                   	nop

00000001400029a8 <signal>:
   1400029a8:	ff 25 6a 6a 00 00    	jmp    *0x6a6a(%rip)        # 140009418 <__imp_signal>
   1400029ae:	90                   	nop
   1400029af:	90                   	nop

00000001400029b0 <__C_specific_handler>:
   1400029b0:	ff 25 e2 69 00 00    	jmp    *0x69e2(%rip)        # 140009398 <__imp___C_specific_handler>
   1400029b6:	90                   	nop
   1400029b7:	90                   	nop

00000001400029b8 <memcpy>:
   1400029b8:	ff 25 e2 69 00 00    	jmp    *0x69e2(%rip)        # 1400093a0 <__imp_memcpy>
   1400029be:	90                   	nop
   1400029bf:	90                   	nop

00000001400029c0 <__setusermatherr>:
   1400029c0:	ff 25 c2 69 00 00    	jmp    *0x69c2(%rip)        # 140009388 <__imp___setusermatherr>
   1400029c6:	90                   	nop
   1400029c7:	90                   	nop
   1400029c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400029cf:	00 

00000001400029d0 <_configthreadlocale>:
   1400029d0:	ff 25 a2 69 00 00    	jmp    *0x69a2(%rip)        # 140009378 <__imp__configthreadlocale>
   1400029d6:	90                   	nop
   1400029d7:	90                   	nop
   1400029d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400029df:	00 

00000001400029e0 <_set_new_mode>:
   1400029e0:	ff 25 6a 69 00 00    	jmp    *0x696a(%rip)        # 140009350 <__imp__set_new_mode>
   1400029e6:	90                   	nop
   1400029e7:	90                   	nop

00000001400029e8 <calloc>:
   1400029e8:	ff 25 6a 69 00 00    	jmp    *0x696a(%rip)        # 140009358 <__imp_calloc>
   1400029ee:	90                   	nop
   1400029ef:	90                   	nop

00000001400029f0 <free>:
   1400029f0:	ff 25 6a 69 00 00    	jmp    *0x696a(%rip)        # 140009360 <__imp_free>
   1400029f6:	90                   	nop
   1400029f7:	90                   	nop

00000001400029f8 <malloc>:
   1400029f8:	ff 25 6a 69 00 00    	jmp    *0x696a(%rip)        # 140009368 <__imp_malloc>
   1400029fe:	90                   	nop
   1400029ff:	90                   	nop

0000000140002a00 <__p__environ>:
   140002a00:	ff 25 3a 69 00 00    	jmp    *0x693a(%rip)        # 140009340 <__imp___p__environ>
   140002a06:	90                   	nop
   140002a07:	90                   	nop
   140002a08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002a0f:	00 

0000000140002a10 <VirtualQuery>:
   140002a10:	ff 25 1a 69 00 00    	jmp    *0x691a(%rip)        # 140009330 <__imp_VirtualQuery>
   140002a16:	90                   	nop
   140002a17:	90                   	nop

0000000140002a18 <VirtualProtect>:
   140002a18:	ff 25 0a 69 00 00    	jmp    *0x690a(%rip)        # 140009328 <__imp_VirtualProtect>
   140002a1e:	90                   	nop
   140002a1f:	90                   	nop

0000000140002a20 <TlsGetValue>:
   140002a20:	ff 25 fa 68 00 00    	jmp    *0x68fa(%rip)        # 140009320 <__imp_TlsGetValue>
   140002a26:	90                   	nop
   140002a27:	90                   	nop

0000000140002a28 <Sleep>:
   140002a28:	ff 25 ea 68 00 00    	jmp    *0x68ea(%rip)        # 140009318 <__imp_Sleep>
   140002a2e:	90                   	nop
   140002a2f:	90                   	nop

0000000140002a30 <SetUnhandledExceptionFilter>:
   140002a30:	ff 25 da 68 00 00    	jmp    *0x68da(%rip)        # 140009310 <__imp_SetUnhandledExceptionFilter>
   140002a36:	90                   	nop
   140002a37:	90                   	nop

0000000140002a38 <LeaveCriticalSection>:
   140002a38:	ff 25 ca 68 00 00    	jmp    *0x68ca(%rip)        # 140009308 <__imp_LeaveCriticalSection>
   140002a3e:	90                   	nop
   140002a3f:	90                   	nop

0000000140002a40 <InitializeCriticalSection>:
   140002a40:	ff 25 ba 68 00 00    	jmp    *0x68ba(%rip)        # 140009300 <__imp_InitializeCriticalSection>
   140002a46:	90                   	nop
   140002a47:	90                   	nop

0000000140002a48 <GetLastError>:
   140002a48:	ff 25 aa 68 00 00    	jmp    *0x68aa(%rip)        # 1400092f8 <__imp_GetLastError>
   140002a4e:	90                   	nop
   140002a4f:	90                   	nop

0000000140002a50 <EnterCriticalSection>:
   140002a50:	ff 25 9a 68 00 00    	jmp    *0x689a(%rip)        # 1400092f0 <__imp_EnterCriticalSection>
   140002a56:	90                   	nop
   140002a57:	90                   	nop

0000000140002a58 <DeleteCriticalSection>:
   140002a58:	ff 25 8a 68 00 00    	jmp    *0x688a(%rip)        # 1400092e8 <__imp_DeleteCriticalSection>
   140002a5e:	90                   	nop
   140002a5f:	90                   	nop

0000000140002a60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv>:
   140002a60:	55                   	push   %rbp
   140002a61:	53                   	push   %rbx
   140002a62:	48 83 ec 28          	sub    $0x28,%rsp
   140002a66:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   140002a6b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140002a6f:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002a73:	48 89 c1             	mov    %rax,%rcx
   140002a76:	e8 e5 00 00 00       	call   140002b60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
   140002a7b:	48 89 c3             	mov    %rax,%rbx
   140002a7e:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002a82:	48 89 c1             	mov    %rax,%rcx
   140002a85:	e8 36 00 00 00       	call   140002ac0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
   140002a8a:	48 39 c3             	cmp    %rax,%rbx
   140002a8d:	0f 94 c0             	sete   %al
   140002a90:	84 c0                	test   %al,%al
   140002a92:	74 13                	je     140002aa7 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv+0x47>
   140002a94:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002a98:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002a9c:	48 83 f8 0f          	cmp    $0xf,%rax
   140002aa0:	b8 01 00 00 00       	mov    $0x1,%eax
   140002aa5:	eb 05                	jmp    140002aac <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv+0x4c>
   140002aa7:	b8 00 00 00 00       	mov    $0x0,%eax
   140002aac:	48 83 c4 28          	add    $0x28,%rsp
   140002ab0:	5b                   	pop    %rbx
   140002ab1:	5d                   	pop    %rbp
   140002ab2:	c3                   	ret
   140002ab3:	90                   	nop
   140002ab4:	90                   	nop
   140002ab5:	90                   	nop
   140002ab6:	90                   	nop
   140002ab7:	90                   	nop
   140002ab8:	90                   	nop
   140002ab9:	90                   	nop
   140002aba:	90                   	nop
   140002abb:	90                   	nop
   140002abc:	90                   	nop
   140002abd:	90                   	nop
   140002abe:	90                   	nop
   140002abf:	90                   	nop

0000000140002ac0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>:
   140002ac0:	55                   	push   %rbp
   140002ac1:	48 89 e5             	mov    %rsp,%rbp
   140002ac4:	48 83 ec 20          	sub    $0x20,%rsp
   140002ac8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002acc:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002ad0:	48 83 c0 10          	add    $0x10,%rax
   140002ad4:	48 89 c1             	mov    %rax,%rcx
   140002ad7:	e8 24 02 00 00       	call   140002d00 <_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_>
   140002adc:	48 83 c4 20          	add    $0x20,%rsp
   140002ae0:	5d                   	pop    %rbp
   140002ae1:	c3                   	ret
   140002ae2:	90                   	nop
   140002ae3:	90                   	nop
   140002ae4:	90                   	nop
   140002ae5:	90                   	nop
   140002ae6:	90                   	nop
   140002ae7:	90                   	nop
   140002ae8:	90                   	nop
   140002ae9:	90                   	nop
   140002aea:	90                   	nop
   140002aeb:	90                   	nop
   140002aec:	90                   	nop
   140002aed:	90                   	nop
   140002aee:	90                   	nop
   140002aef:	90                   	nop

0000000140002af0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>:
   140002af0:	55                   	push   %rbp
   140002af1:	48 89 e5             	mov    %rsp,%rbp
   140002af4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002af8:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002afc:	5d                   	pop    %rbp
   140002afd:	c3                   	ret
   140002afe:	90                   	nop
   140002aff:	90                   	nop

0000000140002b00 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>:
   140002b00:	55                   	push   %rbp
   140002b01:	48 89 e5             	mov    %rsp,%rbp
   140002b04:	48 83 ec 30          	sub    $0x30,%rsp
   140002b08:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002b0c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002b10:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002b14:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002b18:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002b1c:	48 89 c1             	mov    %rax,%rcx
   140002b1f:	e8 5c 00 00 00       	call   140002b80 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv>
   140002b24:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
   140002b28:	0f 92 c0             	setb   %al
   140002b2b:	84 c0                	test   %al,%al
   140002b2d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002b31:	48 83 c4 30          	add    $0x30,%rsp
   140002b35:	5d                   	pop    %rbp
   140002b36:	c3                   	ret
   140002b37:	90                   	nop
   140002b38:	90                   	nop
   140002b39:	90                   	nop
   140002b3a:	90                   	nop
   140002b3b:	90                   	nop
   140002b3c:	90                   	nop
   140002b3d:	90                   	nop
   140002b3e:	90                   	nop
   140002b3f:	90                   	nop

0000000140002b40 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv>:
   140002b40:	55                   	push   %rbp
   140002b41:	48 89 e5             	mov    %rsp,%rbp
   140002b44:	48 83 ec 20          	sub    $0x20,%rsp
   140002b48:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002b4c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002b50:	48 89 c1             	mov    %rax,%rcx
   140002b53:	e8 a8 ff ff ff       	call   140002b00 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
   140002b58:	48 83 c4 20          	add    $0x20,%rsp
   140002b5c:	5d                   	pop    %rbp
   140002b5d:	c3                   	ret
   140002b5e:	90                   	nop
   140002b5f:	90                   	nop

0000000140002b60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>:
   140002b60:	55                   	push   %rbp
   140002b61:	48 89 e5             	mov    %rsp,%rbp
   140002b64:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002b68:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002b6c:	48 8b 00             	mov    (%rax),%rax
   140002b6f:	5d                   	pop    %rbp
   140002b70:	c3                   	ret
   140002b71:	90                   	nop
   140002b72:	90                   	nop
   140002b73:	90                   	nop
   140002b74:	90                   	nop
   140002b75:	90                   	nop
   140002b76:	90                   	nop
   140002b77:	90                   	nop
   140002b78:	90                   	nop
   140002b79:	90                   	nop
   140002b7a:	90                   	nop
   140002b7b:	90                   	nop
   140002b7c:	90                   	nop
   140002b7d:	90                   	nop
   140002b7e:	90                   	nop
   140002b7f:	90                   	nop

0000000140002b80 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv>:
   140002b80:	55                   	push   %rbp
   140002b81:	48 89 e5             	mov    %rsp,%rbp
   140002b84:	48 83 ec 50          	sub    $0x50,%rsp
   140002b88:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002b8c:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
   140002b93:	ff ff 7f 
   140002b96:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140002b9a:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002b9e:	48 89 c1             	mov    %rax,%rcx
   140002ba1:	e8 4a ff ff ff       	call   140002af0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>
   140002ba6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002baa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002bae:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002bb2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002bb6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002bba:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
   140002bc1:	ff ff 7f 
   140002bc4:	90                   	nop
   140002bc5:	90                   	nop
   140002bc6:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   140002bca:	48 8d 55 d8          	lea    -0x28(%rbp),%rdx
   140002bce:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   140002bd2:	48 89 c1             	mov    %rax,%rcx
   140002bd5:	e8 96 07 00 00       	call   140003370 <_ZSt3minIyERKT_S2_S2_>
   140002bda:	48 8b 00             	mov    (%rax),%rax
   140002bdd:	48 83 e8 01          	sub    $0x1,%rax
   140002be1:	48 83 c4 50          	add    $0x50,%rsp
   140002be5:	5d                   	pop    %rbp
   140002be6:	c3                   	ret
   140002be7:	90                   	nop
   140002be8:	90                   	nop
   140002be9:	90                   	nop
   140002bea:	90                   	nop
   140002beb:	90                   	nop
   140002bec:	90                   	nop
   140002bed:	90                   	nop
   140002bee:	90                   	nop
   140002bef:	90                   	nop

0000000140002bf0 <_ZNSt11char_traitsIcE4copyEPcPKcy>:
   140002bf0:	55                   	push   %rbp
   140002bf1:	48 89 e5             	mov    %rsp,%rbp
   140002bf4:	48 83 ec 20          	sub    $0x20,%rsp
   140002bf8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002bfc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140002c00:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140002c04:	48 83 7d 20 00       	cmpq   $0x0,0x20(%rbp)
   140002c09:	75 06                	jne    140002c11 <_ZNSt11char_traitsIcE4copyEPcPKcy+0x21>
   140002c0b:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002c0f:	eb 1b                	jmp    140002c2c <_ZNSt11char_traitsIcE4copyEPcPKcy+0x3c>
   140002c11:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   140002c15:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140002c19:	48 89 d1             	mov    %rdx,%rcx
   140002c1c:	48 89 c2             	mov    %rax,%rdx
   140002c1f:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002c23:	49 89 c0             	mov    %rax,%r8
   140002c26:	e8 8d fd ff ff       	call   1400029b8 <memcpy>
   140002c2b:	90                   	nop
   140002c2c:	48 83 c4 20          	add    $0x20,%rsp
   140002c30:	5d                   	pop    %rbp
   140002c31:	c3                   	ret
   140002c32:	90                   	nop
   140002c33:	90                   	nop
   140002c34:	90                   	nop
   140002c35:	90                   	nop
   140002c36:	90                   	nop
   140002c37:	90                   	nop
   140002c38:	90                   	nop
   140002c39:	90                   	nop
   140002c3a:	90                   	nop
   140002c3b:	90                   	nop
   140002c3c:	90                   	nop
   140002c3d:	90                   	nop
   140002c3e:	90                   	nop
   140002c3f:	90                   	nop

0000000140002c40 <_ZNSt11char_traitsIcE6assignERcRKc>:
   140002c40:	55                   	push   %rbp
   140002c41:	48 89 e5             	mov    %rsp,%rbp
   140002c44:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002c48:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140002c4c:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140002c50:	0f b6 00             	movzbl (%rax),%eax
   140002c53:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   140002c57:	88 02                	mov    %al,(%rdx)
   140002c59:	90                   	nop
   140002c5a:	5d                   	pop    %rbp
   140002c5b:	c3                   	ret
   140002c5c:	90                   	nop
   140002c5d:	90                   	nop
   140002c5e:	90                   	nop
   140002c5f:	90                   	nop

0000000140002c60 <_ZNSt15__new_allocatorIcE10deallocateEPcy>:
   140002c60:	55                   	push   %rbp
   140002c61:	48 89 e5             	mov    %rsp,%rbp
   140002c64:	48 83 ec 20          	sub    $0x20,%rsp
   140002c68:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002c6c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140002c70:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140002c74:	48 8b 55 20          	mov    0x20(%rbp),%rdx
   140002c78:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140002c7c:	48 89 c1             	mov    %rax,%rcx
   140002c7f:	e8 ec e9 ff ff       	call   140001670 <_ZdlPvy>
   140002c84:	90                   	nop
   140002c85:	48 83 c4 20          	add    $0x20,%rsp
   140002c89:	5d                   	pop    %rbp
   140002c8a:	c3                   	ret
   140002c8b:	90                   	nop
   140002c8c:	90                   	nop
   140002c8d:	90                   	nop
   140002c8e:	90                   	nop
   140002c8f:	90                   	nop

0000000140002c90 <_ZNSt15__new_allocatorIcE8allocateEyPKv>:
   140002c90:	55                   	push   %rbp
   140002c91:	48 89 e5             	mov    %rsp,%rbp
   140002c94:	48 83 ec 30          	sub    $0x30,%rsp
   140002c98:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002c9c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140002ca0:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140002ca4:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002ca8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002cac:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rax
   140002cb3:	ff ff 7f 
   140002cb6:	48 3b 45 18          	cmp    0x18(%rbp),%rax
   140002cba:	0f 92 c0             	setb   %al
   140002cbd:	0f b6 c0             	movzbl %al,%eax
   140002cc0:	85 c0                	test   %eax,%eax
   140002cc2:	0f 95 c0             	setne  %al
   140002cc5:	84 c0                	test   %al,%al
   140002cc7:	74 05                	je     140002cce <_ZNSt15__new_allocatorIcE8allocateEyPKv+0x3e>
   140002cc9:	e8 ca e9 ff ff       	call   140001698 <_ZSt17__throw_bad_allocv>
   140002cce:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140002cd2:	48 89 c1             	mov    %rax,%rcx
   140002cd5:	e8 8e e9 ff ff       	call   140001668 <_Znwy>
   140002cda:	90                   	nop
   140002cdb:	48 83 c4 30          	add    $0x30,%rsp
   140002cdf:	5d                   	pop    %rbp
   140002ce0:	c3                   	ret
   140002ce1:	90                   	nop
   140002ce2:	90                   	nop
   140002ce3:	90                   	nop
   140002ce4:	90                   	nop
   140002ce5:	90                   	nop
   140002ce6:	90                   	nop
   140002ce7:	90                   	nop
   140002ce8:	90                   	nop
   140002ce9:	90                   	nop
   140002cea:	90                   	nop
   140002ceb:	90                   	nop
   140002cec:	90                   	nop
   140002ced:	90                   	nop
   140002cee:	90                   	nop
   140002cef:	90                   	nop

0000000140002cf0 <_ZNSt15__new_allocatorIcED2Ev>:
   140002cf0:	55                   	push   %rbp
   140002cf1:	48 89 e5             	mov    %rsp,%rbp
   140002cf4:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002cf8:	90                   	nop
   140002cf9:	5d                   	pop    %rbp
   140002cfa:	c3                   	ret
   140002cfb:	90                   	nop
   140002cfc:	90                   	nop
   140002cfd:	90                   	nop
   140002cfe:	90                   	nop
   140002cff:	90                   	nop

0000000140002d00 <_ZNSt19__ptr_traits_ptr_toIPKcS0_Lb0EE10pointer_toERS0_>:
   140002d00:	55                   	push   %rbp
   140002d01:	48 89 e5             	mov    %rsp,%rbp
   140002d04:	48 83 ec 10          	sub    $0x10,%rsp
   140002d08:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002d0c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002d10:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002d14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002d18:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002d1c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002d20:	90                   	nop
   140002d21:	48 83 c4 10          	add    $0x10,%rsp
   140002d25:	5d                   	pop    %rbp
   140002d26:	c3                   	ret
   140002d27:	90                   	nop
   140002d28:	90                   	nop
   140002d29:	90                   	nop
   140002d2a:	90                   	nop
   140002d2b:	90                   	nop
   140002d2c:	90                   	nop
   140002d2d:	90                   	nop
   140002d2e:	90                   	nop
   140002d2f:	90                   	nop

0000000140002d30 <_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc>:
   140002d30:	55                   	push   %rbp
   140002d31:	48 89 e5             	mov    %rsp,%rbp
   140002d34:	48 83 ec 10          	sub    $0x10,%rsp
   140002d38:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002d3c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002d40:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002d44:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002d48:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002d4c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002d50:	90                   	nop
   140002d51:	48 83 c4 10          	add    $0x10,%rsp
   140002d55:	5d                   	pop    %rbp
   140002d56:	c3                   	ret
   140002d57:	90                   	nop
   140002d58:	90                   	nop
   140002d59:	90                   	nop
   140002d5a:	90                   	nop
   140002d5b:	90                   	nop
   140002d5c:	90                   	nop
   140002d5d:	90                   	nop
   140002d5e:	90                   	nop
   140002d5f:	90                   	nop

0000000140002d60 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy>:
   140002d60:	55                   	push   %rbp
   140002d61:	56                   	push   %rsi
   140002d62:	53                   	push   %rbx
   140002d63:	48 83 ec 40          	sub    $0x40,%rsp
   140002d67:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140002d6c:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140002d70:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140002d74:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140002d78:	48 8d 70 01          	lea    0x1(%rax),%rsi
   140002d7c:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002d80:	48 89 c1             	mov    %rax,%rcx
   140002d83:	e8 d8 fd ff ff       	call   140002b60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
   140002d88:	48 89 c3             	mov    %rax,%rbx
   140002d8b:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002d8f:	48 89 c1             	mov    %rax,%rcx
   140002d92:	e8 89 02 00 00       	call   140003020 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>
   140002d97:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002d9b:	48 89 5d f0          	mov    %rbx,-0x10(%rbp)
   140002d9f:	48 89 75 e8          	mov    %rsi,-0x18(%rbp)
   140002da3:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
   140002da7:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
   140002dab:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002daf:	49 89 c8             	mov    %rcx,%r8
   140002db2:	48 89 c1             	mov    %rax,%rcx
   140002db5:	e8 a6 fe ff ff       	call   140002c60 <_ZNSt15__new_allocatorIcE10deallocateEPcy>
   140002dba:	90                   	nop
   140002dbb:	90                   	nop
   140002dbc:	48 83 c4 40          	add    $0x40,%rsp
   140002dc0:	5b                   	pop    %rbx
   140002dc1:	5e                   	pop    %rsi
   140002dc2:	5d                   	pop    %rbp
   140002dc3:	c3                   	ret
   140002dc4:	90                   	nop
   140002dc5:	90                   	nop
   140002dc6:	90                   	nop
   140002dc7:	90                   	nop
   140002dc8:	90                   	nop
   140002dc9:	90                   	nop
   140002dca:	90                   	nop
   140002dcb:	90                   	nop
   140002dcc:	90                   	nop
   140002dcd:	90                   	nop
   140002dce:	90                   	nop
   140002dcf:	90                   	nop

0000000140002dd0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>:
   140002dd0:	55                   	push   %rbp
   140002dd1:	48 89 e5             	mov    %rsp,%rbp
   140002dd4:	48 83 ec 20          	sub    $0x20,%rsp
   140002dd8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002ddc:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002de0:	48 89 c1             	mov    %rax,%rcx
   140002de3:	e8 78 fc ff ff       	call   140002a60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv>
   140002de8:	83 f0 01             	xor    $0x1,%eax
   140002deb:	84 c0                	test   %al,%al
   140002ded:	74 14                	je     140002e03 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv+0x33>
   140002def:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002df3:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140002df7:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002dfb:	48 89 c1             	mov    %rax,%rcx
   140002dfe:	e8 5d ff ff ff       	call   140002d60 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_destroyEy>
   140002e03:	90                   	nop
   140002e04:	48 83 c4 20          	add    $0x20,%rsp
   140002e08:	5d                   	pop    %rbp
   140002e09:	c3                   	ret
   140002e0a:	90                   	nop
   140002e0b:	90                   	nop
   140002e0c:	90                   	nop
   140002e0d:	90                   	nop
   140002e0e:	90                   	nop
   140002e0f:	90                   	nop

0000000140002e10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy>:
   140002e10:	55                   	push   %rbp
   140002e11:	48 89 e5             	mov    %rsp,%rbp
   140002e14:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002e18:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140002e1c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002e20:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140002e24:	48 89 50 10          	mov    %rdx,0x10(%rax)
   140002e28:	90                   	nop
   140002e29:	5d                   	pop    %rbp
   140002e2a:	c3                   	ret
   140002e2b:	90                   	nop
   140002e2c:	90                   	nop
   140002e2d:	90                   	nop
   140002e2e:	90                   	nop
   140002e2f:	90                   	nop

0000000140002e30 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_y>:
   140002e30:	55                   	push   %rbp
   140002e31:	48 89 e5             	mov    %rsp,%rbp
   140002e34:	48 83 ec 40          	sub    $0x40,%rsp
   140002e38:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002e3c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140002e40:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002e44:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002e48:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140002e4c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002e50:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
   140002e54:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002e58:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   140002e5e:	48 89 c1             	mov    %rax,%rcx
   140002e61:	e8 2a fe ff ff       	call   140002c90 <_ZNSt15__new_allocatorIcE8allocateEyPKv>
   140002e66:	90                   	nop
   140002e67:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002e6b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002e6f:	48 83 c4 40          	add    $0x40,%rsp
   140002e73:	5d                   	pop    %rbp
   140002e74:	c3                   	ret
   140002e75:	90                   	nop
   140002e76:	90                   	nop
   140002e77:	90                   	nop
   140002e78:	90                   	nop
   140002e79:	90                   	nop
   140002e7a:	90                   	nop
   140002e7b:	90                   	nop
   140002e7c:	90                   	nop
   140002e7d:	90                   	nop
   140002e7e:	90                   	nop
   140002e7f:	90                   	nop

0000000140002e80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_>:
   140002e80:	55                   	push   %rbp
   140002e81:	48 89 e5             	mov    %rsp,%rbp
   140002e84:	48 83 ec 30          	sub    $0x30,%rsp
   140002e88:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002e8c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140002e90:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140002e94:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002e98:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   140002e9c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   140002ea0:	48 8b 55 10          	mov    0x10(%rbp),%rdx
   140002ea4:	48 89 55 f8          	mov    %rdx,-0x8(%rbp)
   140002ea8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   140002eac:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002eb0:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   140002eb4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   140002eb8:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   140002ebc:	90                   	nop
   140002ebd:	90                   	nop
   140002ebe:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002ec2:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140002ec6:	48 89 10             	mov    %rdx,(%rax)
   140002ec9:	90                   	nop
   140002eca:	48 83 c4 30          	add    $0x30,%rsp
   140002ece:	5d                   	pop    %rbp
   140002ecf:	c3                   	ret

0000000140002ed0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>:
   140002ed0:	55                   	push   %rbp
   140002ed1:	48 89 e5             	mov    %rsp,%rbp
   140002ed4:	48 83 ec 30          	sub    $0x30,%rsp
   140002ed8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002edc:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002ee0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002ee4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140002ee8:	48 89 c1             	mov    %rax,%rcx
   140002eeb:	e8 00 fe ff ff       	call   140002cf0 <_ZNSt15__new_allocatorIcED2Ev>
   140002ef0:	90                   	nop
   140002ef1:	90                   	nop
   140002ef2:	48 83 c4 30          	add    $0x30,%rsp
   140002ef6:	5d                   	pop    %rbp
   140002ef7:	c3                   	ret
   140002ef8:	90                   	nop
   140002ef9:	90                   	nop
   140002efa:	90                   	nop
   140002efb:	90                   	nop
   140002efc:	90                   	nop
   140002efd:	90                   	nop
   140002efe:	90                   	nop
   140002eff:	90                   	nop

0000000140002f00 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcy>:
   140002f00:	55                   	push   %rbp
   140002f01:	53                   	push   %rbx
   140002f02:	48 83 ec 38          	sub    $0x38,%rsp
   140002f06:	48 8d 6c 24 30       	lea    0x30(%rsp),%rbp
   140002f0b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   140002f0f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   140002f13:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   140002f17:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140002f1b:	48 83 f8 0f          	cmp    $0xf,%rax
   140002f1f:	76 37                	jbe    140002f58 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcy+0x58>
   140002f21:	48 8d 45 30          	lea    0x30(%rbp),%rax
   140002f25:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   140002f29:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   140002f2f:	48 89 c2             	mov    %rax,%rdx
   140002f32:	e8 69 01 00 00       	call   1400030a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy>
   140002f37:	48 89 c2             	mov    %rax,%rdx
   140002f3a:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002f3e:	48 89 c1             	mov    %rax,%rcx
   140002f41:	e8 ea 00 00 00       	call   140003030 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>
   140002f46:	48 8b 55 30          	mov    0x30(%rbp),%rdx
   140002f4a:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002f4e:	48 89 c1             	mov    %rax,%rcx
   140002f51:	e8 ba fe ff ff       	call   140002e10 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEy>
   140002f56:	eb 09                	jmp    140002f61 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcy+0x61>
   140002f58:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002f5c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   140002f60:	90                   	nop
   140002f61:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140002f65:	48 8d 58 01          	lea    0x1(%rax),%rbx
   140002f69:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002f6d:	48 89 c1             	mov    %rax,%rcx
   140002f70:	e8 eb fb ff ff       	call   140002b60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
   140002f75:	48 89 c1             	mov    %rax,%rcx
   140002f78:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140002f7c:	49 89 d8             	mov    %rbx,%r8
   140002f7f:	48 89 c2             	mov    %rax,%rdx
   140002f82:	e8 c9 00 00 00       	call   140003050 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy>
   140002f87:	48 8b 55 30          	mov    0x30(%rbp),%rdx
   140002f8b:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140002f8f:	48 89 c1             	mov    %rax,%rcx
   140002f92:	e8 d9 01 00 00       	call   140003170 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEy>
   140002f97:	90                   	nop
   140002f98:	48 83 c4 38          	add    $0x38,%rsp
   140002f9c:	5b                   	pop    %rbx
   140002f9d:	5d                   	pop    %rbp
   140002f9e:	c3                   	ret
   140002f9f:	90                   	nop

0000000140002fa0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>:
   140002fa0:	55                   	push   %rbp
   140002fa1:	48 89 e5             	mov    %rsp,%rbp
   140002fa4:	48 83 ec 20          	sub    $0x20,%rsp
   140002fa8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002fac:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002fb0:	48 83 c0 10          	add    $0x10,%rax
   140002fb4:	48 89 c1             	mov    %rax,%rcx
   140002fb7:	e8 74 fd ff ff       	call   140002d30 <_ZNSt19__ptr_traits_ptr_toIPccLb0EE10pointer_toERc>
   140002fbc:	48 83 c4 20          	add    $0x20,%rsp
   140002fc0:	5d                   	pop    %rbp
   140002fc1:	c3                   	ret
   140002fc2:	90                   	nop
   140002fc3:	90                   	nop
   140002fc4:	90                   	nop
   140002fc5:	90                   	nop
   140002fc6:	90                   	nop
   140002fc7:	90                   	nop
   140002fc8:	90                   	nop
   140002fc9:	90                   	nop
   140002fca:	90                   	nop
   140002fcb:	90                   	nop
   140002fcc:	90                   	nop
   140002fcd:	90                   	nop
   140002fce:	90                   	nop
   140002fcf:	90                   	nop

0000000140002fd0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy>:
   140002fd0:	55                   	push   %rbp
   140002fd1:	48 89 e5             	mov    %rsp,%rbp
   140002fd4:	48 83 ec 30          	sub    $0x30,%rsp
   140002fd8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140002fdc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140002fe0:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140002fe4:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002fe8:	48 89 c1             	mov    %rax,%rcx
   140002feb:	e8 80 01 00 00       	call   140003170 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEy>
   140002ff0:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
   140002ff4:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140002ff8:	48 89 c1             	mov    %rax,%rcx
   140002ffb:	e8 60 fb ff ff       	call   140002b60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
   140003000:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140003004:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   140003008:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
   14000300c:	48 89 c2             	mov    %rax,%rdx
   14000300f:	e8 2c fc ff ff       	call   140002c40 <_ZNSt11char_traitsIcE6assignERcRKc>
   140003014:	90                   	nop
   140003015:	48 83 c4 30          	add    $0x30,%rsp
   140003019:	5d                   	pop    %rbp
   14000301a:	c3                   	ret
   14000301b:	90                   	nop
   14000301c:	90                   	nop
   14000301d:	90                   	nop
   14000301e:	90                   	nop
   14000301f:	90                   	nop

0000000140003020 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>:
   140003020:	55                   	push   %rbp
   140003021:	48 89 e5             	mov    %rsp,%rbp
   140003024:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003028:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000302c:	5d                   	pop    %rbp
   14000302d:	c3                   	ret
   14000302e:	90                   	nop
   14000302f:	90                   	nop

0000000140003030 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc>:
   140003030:	55                   	push   %rbp
   140003031:	48 89 e5             	mov    %rsp,%rbp
   140003034:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003038:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000303c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003040:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140003044:	48 89 10             	mov    %rdx,(%rax)
   140003047:	90                   	nop
   140003048:	5d                   	pop    %rbp
   140003049:	c3                   	ret
   14000304a:	90                   	nop
   14000304b:	90                   	nop
   14000304c:	90                   	nop
   14000304d:	90                   	nop
   14000304e:	90                   	nop
   14000304f:	90                   	nop

0000000140003050 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy>:
   140003050:	55                   	push   %rbp
   140003051:	48 89 e5             	mov    %rsp,%rbp
   140003054:	48 83 ec 20          	sub    $0x20,%rsp
   140003058:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000305c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140003060:	4c 89 45 20          	mov    %r8,0x20(%rbp)
   140003064:	48 83 7d 20 01       	cmpq   $0x1,0x20(%rbp)
   140003069:	75 12                	jne    14000307d <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy+0x2d>
   14000306b:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   14000306f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003073:	48 89 c1             	mov    %rax,%rcx
   140003076:	e8 c5 fb ff ff       	call   140002c40 <_ZNSt11char_traitsIcE6assignERcRKc>
   14000307b:	eb 17                	jmp    140003094 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcy+0x44>
   14000307d:	48 8b 4d 20          	mov    0x20(%rbp),%rcx
   140003081:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140003085:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003089:	49 89 c8             	mov    %rcx,%r8
   14000308c:	48 89 c1             	mov    %rax,%rcx
   14000308f:	e8 5c fb ff ff       	call   140002bf0 <_ZNSt11char_traitsIcE4copyEPcPKcy>
   140003094:	90                   	nop
   140003095:	48 83 c4 20          	add    $0x20,%rsp
   140003099:	5d                   	pop    %rbp
   14000309a:	c3                   	ret
   14000309b:	90                   	nop
   14000309c:	90                   	nop
   14000309d:	90                   	nop
   14000309e:	90                   	nop
   14000309f:	90                   	nop

00000001400030a0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy>:
   1400030a0:	55                   	push   %rbp
   1400030a1:	53                   	push   %rbx
   1400030a2:	48 83 ec 28          	sub    $0x28,%rsp
   1400030a6:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   1400030ab:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   1400030af:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   1400030b3:	4c 89 45 30          	mov    %r8,0x30(%rbp)
   1400030b7:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400030bb:	48 8b 18             	mov    (%rax),%rbx
   1400030be:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400030c2:	48 89 c1             	mov    %rax,%rcx
   1400030c5:	e8 b6 fa ff ff       	call   140002b80 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv>
   1400030ca:	48 39 d8             	cmp    %rbx,%rax
   1400030cd:	0f 92 c0             	setb   %al
   1400030d0:	84 c0                	test   %al,%al
   1400030d2:	74 0f                	je     1400030e3 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy+0x43>
   1400030d4:	48 8d 05 cd 20 00 00 	lea    0x20cd(%rip),%rax        # 1400051a8 <.rdata+0x1a8>
   1400030db:	48 89 c1             	mov    %rax,%rcx
   1400030de:	e8 ad e5 ff ff       	call   140001690 <_ZSt20__throw_length_errorPKc>
   1400030e3:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400030e7:	48 8b 00             	mov    (%rax),%rax
   1400030ea:	48 39 45 30          	cmp    %rax,0x30(%rbp)
   1400030ee:	73 52                	jae    140003142 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy+0xa2>
   1400030f0:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400030f4:	48 8b 10             	mov    (%rax),%rdx
   1400030f7:	48 8b 45 30          	mov    0x30(%rbp),%rax
   1400030fb:	48 01 c0             	add    %rax,%rax
   1400030fe:	48 39 c2             	cmp    %rax,%rdx
   140003101:	73 3f                	jae    140003142 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy+0xa2>
   140003103:	48 8b 45 30          	mov    0x30(%rbp),%rax
   140003107:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
   14000310b:	48 8b 45 28          	mov    0x28(%rbp),%rax
   14000310f:	48 89 10             	mov    %rdx,(%rax)
   140003112:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003116:	48 8b 18             	mov    (%rax),%rbx
   140003119:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000311d:	48 89 c1             	mov    %rax,%rcx
   140003120:	e8 5b fa ff ff       	call   140002b80 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv>
   140003125:	48 39 d8             	cmp    %rbx,%rax
   140003128:	0f 92 c0             	setb   %al
   14000312b:	84 c0                	test   %al,%al
   14000312d:	74 13                	je     140003142 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERyy+0xa2>
   14000312f:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003133:	48 89 c1             	mov    %rax,%rcx
   140003136:	e8 45 fa ff ff       	call   140002b80 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8max_sizeEv>
   14000313b:	48 8b 55 28          	mov    0x28(%rbp),%rdx
   14000313f:	48 89 02             	mov    %rax,(%rdx)
   140003142:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003146:	48 8b 00             	mov    (%rax),%rax
   140003149:	48 8d 58 01          	lea    0x1(%rax),%rbx
   14000314d:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003151:	48 89 c1             	mov    %rax,%rcx
   140003154:	e8 c7 fe ff ff       	call   140003020 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>
   140003159:	48 89 da             	mov    %rbx,%rdx
   14000315c:	48 89 c1             	mov    %rax,%rcx
   14000315f:	e8 cc fc ff ff       	call   140002e30 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_S_allocateERS3_y>
   140003164:	48 83 c4 28          	add    $0x28,%rsp
   140003168:	5b                   	pop    %rbx
   140003169:	5d                   	pop    %rbp
   14000316a:	c3                   	ret
   14000316b:	90                   	nop
   14000316c:	90                   	nop
   14000316d:	90                   	nop
   14000316e:	90                   	nop
   14000316f:	90                   	nop

0000000140003170 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEy>:
   140003170:	55                   	push   %rbp
   140003171:	48 89 e5             	mov    %rsp,%rbp
   140003174:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003178:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000317c:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003180:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140003184:	48 89 50 08          	mov    %rdx,0x8(%rax)
   140003188:	90                   	nop
   140003189:	5d                   	pop    %rbp
   14000318a:	c3                   	ret
   14000318b:	90                   	nop
   14000318c:	90                   	nop
   14000318d:	90                   	nop
   14000318e:	90                   	nop
   14000318f:	90                   	nop

0000000140003190 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_>:
   140003190:	55                   	push   %rbp
   140003191:	53                   	push   %rbx
   140003192:	48 83 ec 68          	sub    $0x68,%rsp
   140003196:	48 8d 6c 24 60       	lea    0x60(%rsp),%rbp
   14000319b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000319f:	48 89 55 28          	mov    %rdx,0x28(%rbp)
   1400031a3:	48 8b 5d 20          	mov    0x20(%rbp),%rbx
   1400031a7:	48 8b 45 28          	mov    0x28(%rbp),%rax
   1400031ab:	48 89 c1             	mov    %rax,%rcx
   1400031ae:	e8 3d f9 ff ff       	call   140002af0 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv>
   1400031b3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400031b7:	48 8d 45 cf          	lea    -0x31(%rbp),%rax
   1400031bb:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
   1400031bf:	48 89 55 f0          	mov    %rdx,-0x10(%rbp)
   1400031c3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
   1400031c7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
   1400031cb:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
   1400031cf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   1400031d3:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   1400031d7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
   1400031db:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   1400031df:	90                   	nop
   1400031e0:	90                   	nop
   1400031e1:	90                   	nop
   1400031e2:	90                   	nop
   1400031e3:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400031e7:	48 89 c1             	mov    %rax,%rcx
   1400031ea:	e8 b1 fd ff ff       	call   140002fa0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
   1400031ef:	48 8d 55 cf          	lea    -0x31(%rbp),%rdx
   1400031f3:	49 89 d0             	mov    %rdx,%r8
   1400031f6:	48 89 c2             	mov    %rax,%rdx
   1400031f9:	48 89 d9             	mov    %rbx,%rcx
   1400031fc:	e8 7f fc ff ff       	call   140002e80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_>
   140003201:	48 8d 45 cf          	lea    -0x31(%rbp),%rax
   140003205:	48 89 c1             	mov    %rax,%rcx
   140003208:	e8 e3 fa ff ff       	call   140002cf0 <_ZNSt15__new_allocatorIcED2Ev>
   14000320d:	90                   	nop
   14000320e:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003212:	48 89 c1             	mov    %rax,%rcx
   140003215:	e8 26 f9 ff ff       	call   140002b40 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv>
   14000321a:	48 89 c3             	mov    %rax,%rbx
   14000321d:	48 8b 45 28          	mov    0x28(%rbp),%rax
   140003221:	48 89 c1             	mov    %rax,%rcx
   140003224:	e8 37 f9 ff ff       	call   140002b60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
   140003229:	48 89 c2             	mov    %rax,%rdx
   14000322c:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003230:	49 89 d8             	mov    %rbx,%r8
   140003233:	48 89 c1             	mov    %rax,%rcx
   140003236:	e8 c5 fc ff ff       	call   140002f00 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructILb1EEEvPKcy>
   14000323b:	eb 1b                	jmp    140003258 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_+0xc8>
   14000323d:	48 89 c3             	mov    %rax,%rbx
   140003240:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003244:	48 89 c1             	mov    %rax,%rcx
   140003247:	e8 84 fc ff ff       	call   140002ed0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>
   14000324c:	48 89 d8             	mov    %rbx,%rax
   14000324f:	48 89 c1             	mov    %rax,%rcx
   140003252:	e8 29 f5 ff ff       	call   140002780 <_Unwind_Resume>
   140003257:	90                   	nop
   140003258:	48 83 c4 68          	add    $0x68,%rsp
   14000325c:	5b                   	pop    %rbx
   14000325d:	5d                   	pop    %rbp
   14000325e:	c3                   	ret
   14000325f:	90                   	nop

0000000140003260 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>:
   140003260:	55                   	push   %rbp
   140003261:	53                   	push   %rbx
   140003262:	48 83 ec 48          	sub    $0x48,%rsp
   140003266:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   14000326b:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   14000326f:	48 8b 5d 20          	mov    0x20(%rbp),%rbx
   140003273:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
   140003277:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
   14000327b:	90                   	nop
   14000327c:	90                   	nop
   14000327d:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140003281:	48 89 c1             	mov    %rax,%rcx
   140003284:	e8 17 fd ff ff       	call   140002fa0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv>
   140003289:	48 8d 55 ef          	lea    -0x11(%rbp),%rdx
   14000328d:	49 89 d0             	mov    %rdx,%r8
   140003290:	48 89 c2             	mov    %rax,%rdx
   140003293:	48 89 d9             	mov    %rbx,%rcx
   140003296:	e8 e5 fb ff ff       	call   140002e80 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_>
   14000329b:	48 8d 45 ef          	lea    -0x11(%rbp),%rax
   14000329f:	48 89 c1             	mov    %rax,%rcx
   1400032a2:	e8 49 fa ff ff       	call   140002cf0 <_ZNSt15__new_allocatorIcED2Ev>
   1400032a7:	90                   	nop
   1400032a8:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400032ac:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
   1400032b0:	90                   	nop
   1400032b1:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400032b5:	ba 00 00 00 00       	mov    $0x0,%edx
   1400032ba:	48 89 c1             	mov    %rax,%rcx
   1400032bd:	e8 0e fd ff ff       	call   140002fd0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEy>
   1400032c2:	90                   	nop
   1400032c3:	48 83 c4 48          	add    $0x48,%rsp
   1400032c7:	5b                   	pop    %rbx
   1400032c8:	5d                   	pop    %rbp
   1400032c9:	c3                   	ret
   1400032ca:	90                   	nop
   1400032cb:	90                   	nop
   1400032cc:	90                   	nop
   1400032cd:	90                   	nop
   1400032ce:	90                   	nop
   1400032cf:	90                   	nop

00000001400032d0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>:
   1400032d0:	55                   	push   %rbp
   1400032d1:	48 89 e5             	mov    %rsp,%rbp
   1400032d4:	48 83 ec 20          	sub    $0x20,%rsp
   1400032d8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400032dc:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400032e0:	48 89 c1             	mov    %rax,%rcx
   1400032e3:	e8 e8 fa ff ff       	call   140002dd0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv>
   1400032e8:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400032ec:	48 89 c1             	mov    %rax,%rcx
   1400032ef:	e8 dc fb ff ff       	call   140002ed0 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev>
   1400032f4:	90                   	nop
   1400032f5:	48 83 c4 20          	add    $0x20,%rsp
   1400032f9:	5d                   	pop    %rbp
   1400032fa:	c3                   	ret
   1400032fb:	90                   	nop
   1400032fc:	90                   	nop
   1400032fd:	90                   	nop
   1400032fe:	90                   	nop
   1400032ff:	90                   	nop

0000000140003300 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy>:
   140003300:	55                   	push   %rbp
   140003301:	48 89 e5             	mov    %rsp,%rbp
   140003304:	48 83 ec 20          	sub    $0x20,%rsp
   140003308:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000330c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   140003310:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003314:	48 89 c1             	mov    %rax,%rcx
   140003317:	e8 e4 f7 ff ff       	call   140002b00 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv>
   14000331c:	48 3b 45 18          	cmp    0x18(%rbp),%rax
   140003320:	0f 92 c0             	setb   %al
   140003323:	0f b6 c0             	movzbl %al,%eax
   140003326:	85 c0                	test   %eax,%eax
   140003328:	0f 95 c0             	setne  %al
   14000332b:	84 c0                	test   %al,%al
   14000332d:	74 28                	je     140003357 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEy+0x57>
   14000332f:	48 8d 0d ed 1c 00 00 	lea    0x1ced(%rip),%rcx        # 140005023 <.rdata+0x23>
   140003336:	48 8d 15 fb 1c 00 00 	lea    0x1cfb(%rip),%rdx        # 140005038 <.rdata+0x38>
   14000333d:	48 8d 05 0c 1e 00 00 	lea    0x1e0c(%rip),%rax        # 140005150 <.rdata+0x150>
   140003344:	49 89 c9             	mov    %rcx,%r9
   140003347:	49 89 d0             	mov    %rdx,%r8
   14000334a:	ba 59 05 00 00       	mov    $0x559,%edx
   14000334f:	48 89 c1             	mov    %rax,%rcx
   140003352:	e8 31 e3 ff ff       	call   140001688 <_ZSt21__glibcxx_assert_failPKciS0_S0_>
   140003357:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000335b:	48 89 c1             	mov    %rax,%rcx
   14000335e:	e8 fd f7 ff ff       	call   140002b60 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv>
   140003363:	48 8b 55 18          	mov    0x18(%rbp),%rdx
   140003367:	48 01 d0             	add    %rdx,%rax
   14000336a:	48 83 c4 20          	add    $0x20,%rsp
   14000336e:	5d                   	pop    %rbp
   14000336f:	c3                   	ret

0000000140003370 <_ZSt3minIyERKT_S2_S2_>:
   140003370:	55                   	push   %rbp
   140003371:	48 89 e5             	mov    %rsp,%rbp
   140003374:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140003378:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000337c:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003380:	48 8b 10             	mov    (%rax),%rdx
   140003383:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003387:	48 8b 00             	mov    (%rax),%rax
   14000338a:	48 39 c2             	cmp    %rax,%rdx
   14000338d:	73 06                	jae    140003395 <_ZSt3minIyERKT_S2_S2_+0x25>
   14000338f:	48 8b 45 18          	mov    0x18(%rbp),%rax
   140003393:	eb 04                	jmp    140003399 <_ZSt3minIyERKT_S2_S2_+0x29>
   140003395:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140003399:	5d                   	pop    %rbp
   14000339a:	c3                   	ret
   14000339b:	90                   	nop
   14000339c:	90                   	nop
   14000339d:	90                   	nop
   14000339e:	90                   	nop
   14000339f:	90                   	nop

00000001400033a0 <register_frame_ctor>:
   1400033a0:	e9 7b e0 ff ff       	jmp    140001420 <__gcc_register_frame>
   1400033a5:	90                   	nop
   1400033a6:	90                   	nop
   1400033a7:	90                   	nop
   1400033a8:	90                   	nop
   1400033a9:	90                   	nop
   1400033aa:	90                   	nop
   1400033ab:	90                   	nop
   1400033ac:	90                   	nop
   1400033ad:	90                   	nop
   1400033ae:	90                   	nop
   1400033af:	90                   	nop

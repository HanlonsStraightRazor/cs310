load Larc.hdl,

// function call NOT
set RAM4K[0]  %X8AFA,    // li  R10 -6                    1.
set RAM4K[1]  %X9D08,    // lui R13 2048(dec)             2.
set RAM4K[2]  %X0000,    // nop                           3.
set RAM4K[3]  %X0000,    // nop                           4.
set RAM4K[4]  %X0000,    // nop                           5. R10 <-- -6
set RAM4K[5]  %XE9D0,    // jal R9 R13  (call NOT fn)     6. R13 <-- 2048
set RAM4K[6]  %X0000,    // nop                           7. 
set RAM4K[7]  %X0000,    // nop                           8. 

// function call OR
set RAM4K[8]   %X8AFE,   // li  R10 -2                   18. fetch 8
set RAM4K[9]   %X8B03,   // li  R11 3                    19.
set RAM4K[10]  %X9D09,   // lui R13  2304(dec)           20.
set RAM4K[11]  %X0000,   // nop                          21.
set RAM4K[12]  %X0000,   // nop                          22. R10 <-- -2
set RAM4K[13]  %X0000,   // nop                          23. R11 <-- 3
set RAM4K[14]  %XE9D0,   // jal R9 R13  (call OR fn)     24. R13 <-- 2304
set RAM4K[15]  %X0000,   // nop                          25.
set RAM4K[16]  %X0000,   // nop                          26.

// function call AND
set RAM4K[17]  %X8AFA,   // li  R10 -6                   39. fetch 17
set RAM4K[18]  %X8B35,   // li  R11 53                   40.
set RAM4K[19]  %X9D0A,   // lui R13 2560(dec)            41.
set RAM4K[20]  %X0000,   // nop                          42.
set RAM4K[21]  %X0000,   // nop                          43. R10 <-- -6
set RAM4K[22]  %X0000,   // nop                          44. R11 <-- 53
set RAM4K[23]  %XE9D0,   // jal R9 R13  (call AND fn)    45. R13 <-- 2560
set RAM4K[24]  %X0000,   // nop                          46.
set RAM4K[25]  %X0000,   // nop                          47.

// function call MULT
set RAM4K[26]  %X8A10,   // li  R10 16                   61. fetch 26
set RAM4K[27]  %X8B0D,   // li  R11 13                   62.
set RAM4K[28]  %X9D0B,   // lui R13 2816(dec)            63.
set RAM4K[29]  %X0000,   // nop                          64.
set RAM4K[30]  %X0000,   // nop                          65. R10 <-- 16
set RAM4K[31]  %X0000,   // nop                          66. R11 <-- 13
set RAM4K[32]  %XE9D0,   // jal R9 R13  (call MULT fn)   67. R13 <-- 2816
set RAM4K[33]  %X0000,   // nop                          68.
set RAM4K[34]  %X0000,   // nop                          69.

set RAM4K[35]  %XF000,   // halt                        617. fetch 35  
                         // halt with 208 in R12

// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

// subroutine  R12 <- NOT(R10)                             
// address %X0800
set RAM4K[2048] %X6CAA,  // not R12 R10 R10               9. fetch 2048
set RAM4K[2049] %X0000,  // nop                          10. R9 <-- 6 
set RAM4K[2050] %X0000,  // nop                          11. 
set RAM4K[2051] %X0000,  // nop                          12.
set RAM4K[2052] %XE090,  // jal R0 R9                    13. R12 <-- 5
set RAM4K[2053] %X0000,  // nop                          14.
set RAM4K[2054] %X0000,  // nop                          15.
set RAM4K[2055] %X0000,  // nop                          16. fetch 6
                         //                              17. R0 (unchanged)
                                                        
// subroutine  R12 <- OR(R10,R11)
// address %X0900
set RAM4K[2304] %X6CAB,  // nor R12 R10 R11              27. fetch 2304
set RAM4K[2305] %X0000,  // nop                          28. R9 <-- 15
set RAM4K[2306] %X0000,  // nop                          29. 
set RAM4K[2307] %X0000,  // nop                          30.
set RAM4K[2308] %X6CCC,  // nor R12 R12 R12              31. R12 <-- 0
set RAM4K[2309] %X0000,  // nop                          32. 
set RAM4K[2310] %X0000,  // nop                          33.
set RAM4K[2311] %XE090,  // jal R0 R9                    34.
set RAM4K[2312] %X0000,  // nop                          35. R12 <-- -1
set RAM4K[2313] %X0000,  // nop                          36.
                         //                              37. fetch 15
                         //                              38. fetch 16

// subroutine  R12 <- AND(R10,R11)
// address %X0A00
set RAM4K[2560] %X6AAA,  // nor R10 R10 R10              48. fetch 2560
set RAM4K[2561] %X6BBB,  // nor R11 R11 R11              49. 
set RAM4K[2562] %X0000,  // nop                          50.
set RAM4K[2563] %X0000,  // nop                          51.
set RAM4K[2564] %X0000,  // nop                          52. R10 <-- 5
set RAM4K[2565] %X6CAB,  // nor R12 R10 R11              53. R11 <-- -54
set RAM4K[2566] %X0000,  // nop                          54.
set RAM4K[2567] %X0000,  // nop                          55.
set RAM4K[2568] %XE090,  // jal R0 R9                    56.
set RAM4K[2569] %X0000,  // nop                          57. R12 <-- 48
set RAM4K[2570] %X0000,  // nop                          58.
                         //                              59. fetch 24
                         //                              60. fetch 25

// subroutine  R12 <- MULT(R10,R11)
// address %X0B00
set RAM4K[2816] %X8C00,  // li R12 0                     70.
set RAM4K[2817] %X8F00,  // li R15 0                     71.
set RAM4K[2818] %X8E01,  // li R14 1                     72.
set RAM4K[2819] %X0000,  //                              73.
set RAM4K[2820] %X0000,  //                              74. R12 <-- 0
set RAM4K[2821] %X0000,  //                              75. R15 <-- 0
set RAM4K[2822] %X0000,  //                              76. R14 <-- 1
set RAM4K[2823] %X6EEE,  // nor R14 R14 R14              77.
set RAM4K[2824] %X6BBB,  //                              78.
set RAM4K[2825] %X0000,  //                              79.
set RAM4K[2826] %X0000,  //                              80.
set RAM4K[2827] %X0000,  //                              81. R14 <-- -2
set RAM4K[2828] %X0000,  //
set RAM4K[2829] %X6DEB,  //                                   etc.
set RAM4K[2830] %X6EEE,
set RAM4K[2831] %X6BBB,  //                             615. fetch 33
set RAM4K[2832] %X0000,  //                             616. fetch 34
set RAM4K[2833] %X0000,
set RAM4K[2834] %X0000,
set RAM4K[2835] %XA04D,
set RAM4K[2836] %X0000,
set RAM4K[2837] %X0000,
set RAM4K[2838] %X0000,
set RAM4K[2839] %X0CCA,
set RAM4K[2840] %X0AAA,
set RAM4K[2841] %X0EEE,
set RAM4K[2842] %X8D01,
set RAM4K[2843] %X0000,
set RAM4K[2844] %X0000,
set RAM4K[2845] %X0000,
set RAM4K[2846] %X0FFD,
set RAM4K[2847] %X8D10,
set RAM4K[2848] %X0000,
set RAM4K[2849] %X0000,
set RAM4K[2850] %X0000,
set RAM4K[2851] %X1DFD,
set RAM4K[2852] %X0000,
set RAM4K[2853] %X0000,
set RAM4K[2854] %X0000,
set RAM4K[2855] %XBDFD,
set RAM4K[2856] %X0000,
set RAM4K[2857] %X0000,
set RAM4K[2858] %X0000,
set RAM4K[2859] %XE090,
set RAM4K[2860] %X0000,
set RAM4K[2861] %X0000
;

repeat 650 { tick, tock; }

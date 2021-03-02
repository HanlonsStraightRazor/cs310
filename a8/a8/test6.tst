load Larc.hdl,
                                                   // with  and  w/o forwarding
set RAM4K[0]  %X8101,   // M[0]:  li  R1 1         // 1.
set RAM4K[1]  %X8303,   // M[1]:  li  R3 3         // 2.
set RAM4K[2]  %X0000,   // M[2]:  nop              // 3.
set RAM4K[3]  %X0000,   // M[3]:  nop              // 4.
set RAM4K[4]  %X0000,   // M[4]:  nop              // 5. R1 <- 1
set RAM4K[5]  %X0211,   // M[5]:  add R2 R1 R1     // 6. R3 <- 3
set RAM4K[6]  %X0322,   // M[6]:  add R3 R2 R2     // 7.
set RAM4K[7]  %X1322,   // M[7]:  sub R3 R2 R2     // 8. 
set RAM4K[8]  %X6322,   // M[8]:  nor R3 R2 R2     // 9.           
set RAM4K[9]  %X7322,   // M[9]:  slt R3 R2 R2     // 10. R2 <- 2
set RAM4K[10] %XF000    // M[10]: halt             // 11. R3 <- 4     R3 <- 0
                                                   // 12. R3 <- 0     R3 <- 0
                                                   // 13. R3 <- -3    R3 <- -1
                                                   // 14. R3 <- 0     R3 <- 0
;                                                  // 15. halt

repeat 30 { 
  tick, tock;
}

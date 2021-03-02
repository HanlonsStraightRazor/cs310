load Larc.hdl,
                                            // with    and    w/o forwarding
set RAM4K[0]  %X8101,   // li  R1 1         // 1.
set RAM4K[1]  %X8202,   // li  R2 2         // 2.
set RAM4K[2]  %X8303,   // li  R3 3         // 3.
set RAM4K[3]  %X8404,   // li  R4 4         // 4.
set RAM4K[4]  %X8505,   // li  R5 5         // 5.  R1 <-- 1
set RAM4K[5]  %X0661,   // add R6 R6 R1     // 6.  R2 <-- 2
set RAM4K[6]  %X0662,   // add R6 R6 R2     // 7.  R3 <-- 3
set RAM4K[7]  %X0663,   // add R6 R6 R3     // 8.  R4 <-- 4
set RAM4K[8]  %X0664,   // add R6 R6 R4     // 9.  R5 <-- 5
set RAM4K[9]  %X0665,   // add R6 R6 R5     // 10. R6 <-- 1
set RAM4K[10] %XF000    // halt             // 11. R6 <-- 3      R6 <-- 2
                                            // 12. R6 <-- 6      R6 <-- 3
                                            // 13. R6 <-- 10     R6 <-- 4
                                            // 14. R6 <-- 15     R6 <-- 6
;                                           // 15. halt

repeat 20 { 
  tick, tock;
}

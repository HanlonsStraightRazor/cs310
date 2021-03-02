load Larc.hdl,

set RAM4K[0]  %X8101,   // 1.  li  R1 1                    
set RAM4K[1]  %X8202,   // 2.  li  R2 2 
set RAM4K[2]  %X9FFF,   // 3.  lui R15 -1
set RAM4K[3]  %X0000,   // 4.  nop
set RAM4K[4]  %X0000,   // 5.  nop              R1  <-- 1 
set RAM4K[5]  %X0312,   // 6.  add R3 R1 R2     R2  <-- 2 
set RAM4K[6]  %X141F,   // 7.  sub R4 R1 R15    R15 <-- -256                 
set RAM4K[7]  %X6512,   // 8.  nor R5 R1 R2     
set RAM4K[8]  %X7612,   // 9.  slt R6 R1 R2
set RAM4K[9]  %X7621,   // 10. slt R6 R2 R1     R3  <-- 3
set RAM4K[10] %XF000    // 11. halt             R4  <-- 257
                        // 12.                  R5  <-- -4
                        // 13.                  R6  <-- 1
                        // 14.                  R6  <-- 0
;
repeat 20 { tick, tock; }

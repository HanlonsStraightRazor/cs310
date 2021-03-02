load Larc.hdl,

set RAM4K[0]  %X8101,   // 1.  li  R1 1                
set RAM4K[1]  %X8202,   // 2.  li  R2 2 
set RAM4K[2]  %X0000,   // 3.  nop
set RAM4K[3]  %X0000,   // 4.  nop
set RAM4K[4]  %X0000,   // 5.  nop              R1  <-- 1
set RAM4K[5]  %XD512,   // 6.  sw  5(R1) R2     R2  <-- 2 
set RAM4K[6]  %XC324,   // 7.  lw R3 4(R2)                   
set RAM4K[7]  %XF000    // 8.  halt             
                        // 9.                   MEM[6] <-- 2  
                        // 10.
                        // 11.                  R3  <-- 2

;
repeat 20 { tick, tock; }

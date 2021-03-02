load Larc.hdl,

set RAM4K[0]  %X8101,   // 1. li R1 1
set RAM4K[1]  %XA070,   // 2. beq R0 7      (jump to address 9)                
set RAM4K[2]  %X0000,   // 3. nop
set RAM4K[3]  %X0000,   // 4. nop           (jump is decided here)
set RAM4K[4]  %X0111,   // 5. add R1 R1 R1  (R1 <- 2 should not be executed)
set RAM4K[5]  %X0000,   // 6. nop
set RAM4K[6]  %X0000,   // 7. nop
set RAM4K[7]  %X0000,   // 8. nop
set RAM4K[8]  %X0000,   // 9. nop
set RAM4K[9]  %XBF71,   // 10. bne R1 -9 (jump back to address 1: inf. loop)
set RAM4K[10] %X0000,   // 11. nop
set RAM4K[11] %X0000,   // 12. nop
set RAM4K[12] %XF000    // 13. halt (if the previous nop is deleted, then 
                        // the program does NOT enter the infinite loop
                        // because the HALT prevents the loading of a new PC
                        // value: true?)
;
repeat 200{ tick, tock; }

/*
timeline:

at the end of
  time step     event

   4            the branch is taken
   5            R1 <-- 1
   7            the branch back is taken

*/

load Larc.hdl,

set RAM4K[0] %X8101,            // 1.
set RAM4K[1] %X8202,            // 2.
set RAM4K[2] %X8303,            // 3.
set RAM4K[3] %X9FFF,            // 4.
set RAM4K[4] %XF000;            // 5.  R1 <- 1
                                // 6.  R2 <- 2
                                // 7.  R3 <- 3
                                // 8.  R15 <- -256
                                // 9.  halt


repeat 10 { tick, tock; }

load Larc.hdl,

set RAM4K[0]  %X8101,   // 1.  li R1 1                
set RAM4K[1]  %X8202,   // 2.  li R2 2 
set RAM4K[2]  %XD512,   // 3.  sw 5(R1) R2     MEM[6] <-- 2  
set RAM4K[3]  %XC324,   // 4.  lw R3 4(R2)     R3     <-- MEM[6]             
set RAM4K[4]  %XF000,    // 5.  halt         

set ROM32K[0]  %B0000000001000000,
set ROM32K[1]  %B0100100000100001,
set ROM32K[2]  %B0000100000000010,
set ROM32K[3]  %B1000000000000011,
set ROM32K[4]  %B0000100010000100,
set ROM32K[5]  %B1000000000000101,
set ROM32K[6]  %B0000100100000110,
set ROM32K[7]  %B1000000000000111,
set ROM32K[8]  %B0000100110001000,
set ROM32K[9]  %B1000000000001001,
set ROM32K[10]  %B1000000000001010,
set ROM32K[11]  %B1000000000001011,
set ROM32K[12]  %B1000110000001100,
set ROM32K[13]  %B1000101000001101,
set ROM32K[14]  %B0000100000101110,
set ROM32K[15]  %B0000000000001111,
set ROM32K[16]  %B1000000000010000,
set ROM32K[17]  %B0000100000110001,
set ROM32K[18]  %B1000000000010010,
set ROM32K[19]  %B1001000000010011,
set ROM32K[20]  %B1100000000010100
;
repeat 100 { tick, tock; }

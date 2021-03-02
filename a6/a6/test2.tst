load BoothMultiplier.hdl,

set reset 1,
set initM %D101,
set initQ %D34;

tick, tock,
set reset 0;


repeat 100 { 
  tick, tock;
}




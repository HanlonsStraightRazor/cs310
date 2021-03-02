load BoothMultiplier.hdl,

set reset 1,
set initM %D2,
set initQ %D4;

tick, tock,
set reset 0;


repeat 100 { 
  tick, tock;
}




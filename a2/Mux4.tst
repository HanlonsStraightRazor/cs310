load Mux4.hdl,
output-file Mux4.out,
compare-to Mux4.cmp,
output-list a%B1.4.1 b%B1.4.1 sel%B2.1.2 out%B1.4.1;

set a 0,
set b 0,
set sel 0,
eval,
output;

set sel 1,
eval,
output;

set a %B0000,
set b %B0001,
set sel 0,
eval,
output;

set sel 1,
eval,
output;

set a %B0010,
set b %B0100,
set sel 0,
eval,
output;

set sel 1,
eval,
output;

set a %B1111,
set b %B1010,
set sel 0,
eval,
output;

set sel 1,
eval,
output;

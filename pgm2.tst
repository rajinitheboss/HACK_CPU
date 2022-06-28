load Hackcomputer.hdl,
output-file pgm2.out,
compare-to pgm2.cmp,
output-list time%S1.4.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1  RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1;

ROM32K load pgm2.hack,  
set RAM64[18] 100,
output;

// First run (at the beginning PC=0)
repeat 1400 {
    tick, tock, output;
}


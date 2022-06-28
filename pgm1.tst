load Hackcomputer.hdl,
output-file pgm1.out,
compare-to pgm1.cmp,
output-list time%S1.4.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1 RAM64[16]%D1.7.1 RAM64[17]%D1.7.1 RAM64[18]%D1.7.1;

ROM32K load pgm1.hack,
set RAM64[16] 25,
set RAM64[17] 45,  
output;

// First run (at the beginning PC=0)
repeat 15 {
    tick, tock, output;
}

// Reset the PC
set reset 1,
set RAM64[16] 100,
set RAM64[17] 50, 
set RAM64[18] 0,
tick, tock, output;


// Second run, to check that the PC was reset correctly.
set reset 0,

repeat 12 {
    tick, tock, output;
}
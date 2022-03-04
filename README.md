# 8-bit_CPU using Logisim


   To Download Logisim : https://github.com/pedrinhofss/logisim-evolution-pedrinhofss
   
   Logisim is an educational tool for designing and simulating digital logic circuits. With its simple toolbar interface and simulation of circuits as you build them, it is simple enough to facilitate learning the most basic concepts related to logic circuits. With the capacity to build larger circuits from smaller subcircuits, and to draw bundles of wires with a single mouse drag, Logisim can be used (and is used) to design and simulate entire CPUs for educational purposes.

#
8-bit_CPU (running the code to generate "fibonacci numbers")
![main](https://user-images.githubusercontent.com/84563214/156820617-2b45e625-6a95-4226-86e9-9f51d3a3f689.png)

This is a simple 8-bit CPU, only supports 5 instructions

    1. LDA = loads a value into the A-register from the address specified.

    2. ADD = loads a value into the B-register from the address specified, 
             adds the contents of register A and B and place the result in A-register. 
             (A <- A + B)
    
    3. OUT = displays the content present in the A-register using hex-digit display
    
    4. SUB = substracts the contents of register A & B and place the result in B-register.
             (B <- A - B)
    
    5. JMP = uncoditional jump to address specified

# ALU-Verilog
ALU Created using Verilog code with different computational functionalities

This documentation will cover the designing process of operations in an 8-bit ALU written in Verilog programming language. An arithmetic logic unit (ALU) is a digital circuit that performs arithmetic and bit-wise logical operations on integer binary numbers.
This ALU should be able to perform arithmetic functions with two 8-bit operands, each operation will be selected through a selection register in the main ALU module, each function was written in a separate (.v) file with its own testbench.
The main ALU file takes two inputs to specify the operands & the operation to execute and outputs two values, the Result & the Status which detects overflow & determines whether the result equals to zero.
All modules were implemented using structural models only, except for the Main ALU module.

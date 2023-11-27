@echo off

REM Navigate to the directory
cd path\to\03-write-smart-contract\code-01

REM Compile the Solidity file
solc --bin --abi --include-path node_modules --base-path . example.sol -o .

REM Rename the output files
move example_sol_example.bin example.bytecode.bin
move example_sol_example.abi example.abi.json


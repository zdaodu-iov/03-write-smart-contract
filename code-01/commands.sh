#!/bin/bash

# Navigate to the directory
cd path/to/03-write-smart-contract/code-01

# Compile the Solidity file
solc --bin --abi --include-path node_modules --base-path . example.sol -o .

# Rename the output files
mv example_sol_example.bin example.bytecode.bin
mv example_sol_example.abi example.abi.json

## Overview
This project focuses on the development of a Solidity-based smart contract named `OneMilNftPixels`, part of a larger initiative to explore blockchain technologies, specifically within the context of Non-Fungible Tokens (NFTs). The contract is built using Solidity and integrates OpenZeppelin's ERC721 and Ownable contracts.

## Structure
The project is divided into three main parts:

### `code-01`
- **Description**: This directory contains the initial setup for the Solidity environment, including the compilation of the provided `example.sol` file.
- **Key Components**:
  - Solidity source file (`example.sol`).
  - Compiled ABI and bytecode (`example.abi.json` and `example.bytecode.bin`).
  - NPM configuration files and `node_modules` directory.
  - Compilation commands (`commands.sh` for Linux/Mac, `commands.bat` for Windows).

### `code-02`
- **Description**: Contains the updated Solidity contract `OneMilNftPixels`, which demonstrates functionalities related to an NFT marketplace.
- **Key Components**:
  - Updated Solidity source file (`example.sol`) with defined contract, including functions for buying and updating pixels.

### `code-03`
- **Description**: Features the Hardhat project setup for advanced development and testing.
- **Key Components**:
  - Hardhat configuration file (`hardhat.config.js`).
  - `.secret` file for secure management of test accounts.

## Setup and Installation
To set up the project, follow these steps:

1. Clone the repository to your local machine.
2. Navigate to each directory (`code-01`, `code-02`, `code-03`) and perform the necessary installation steps:
   - For `code-01` and `code-02`: Ensure Node.js and NPM are installed, then run `npm install` to install dependencies.
   - For `code-03`: Install Hardhat using `npm install --save-dev hardhat`.

## Compiling and Running
- **`code-01`**:
  - Run `commands.sh` or `commands.bat` depending on your operating system to compile the Solidity file.
- **`code-02`**:
  - Review and test the `example.sol` file using Solidity tools or integrated development environments like Remix.
- **`code-03`**:
  - Use Hardhat commands like `npx hardhat compile` for compiling contracts within this setup.
  - Test network configuration and smart contract deployment using Hardhat's network management features.

## Additional Information
- Be sure to review and test the smart contracts thoroughly before considering deployment on a live network.
- For detailed documentation on Solidity and Hardhat, refer to their respective official documentation.


require("@nomiclabs/hardhat-waffle");

// Should be a secure BIP-39 seed phrase for testing purposes only
const mnemonic = fs.readFileSync(".secret").toString().trim();

module.exports = {
  solidity: "0.8.13",
  networks: {
    hardhat: {
      chainId: 33 // RSK Regtest chain ID
    },
    testnet: {
      url: "https://public-node.testnet.rsk.co",
      accounts: { mnemonic: mnemonic },
      chainId: 31 // RSK Testnet chain ID
    }
  }
};

/** @type import('hardhat/config').HardhatUserConfig */
require("@nomiclabs/hardhat-ethers");
module.exports = {
  solidity: "0.8.18",
};
require("@nomiclabs/hardhat-waffle");
require("dotenv").config();

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  networks: {
    mumbai: {
      url: "https://rpc-mumbai.maticvigil.com",
      accounts: [process.env.PRIVATE_KEY],
    },
    goerli: {
      url: "https://eth-goerli.g.alchemy.com/v2/daljpGy0g0KvSpFDwXMZbtOEpmexryq3",
      accounts: [process.env.PRIVATE_KEY],
      
    },
  },
};

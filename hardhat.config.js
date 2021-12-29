require("@nomiclabs/hardhat-waffle");

/**
 * @type import('hardhat/config').HardhatUserConfig
 */

module.exports = {
  solidity: "0.8.7",
  networks: {
    rinkeby: {
      url: "https://rinkeby.infura.io/v3/f76c0e8e7ec844da8440f7a02b09762a", //Infura url with projectId
      accounts: [
        "655fec56c52a0eb0453b8f22a4e074bd0b1d1c31f94eca3616aaf8a313d04481",
      ], // add the account that will deploy the contract (private key)
    },
  },
};

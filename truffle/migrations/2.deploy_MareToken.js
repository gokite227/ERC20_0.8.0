const MareToken = artifacts.require("MareToken");
const MareTokenSale = artifacts.require("MareTokenSale")

module.exports = async function (deployer) {
    await deployer.deploy(MareToken, 1000000000);
    await deployer.deploy(MareTokenSale, MareToken.address);
    const tokenInstance = await MareToken.deployed();
    await tokenInstance.transfer(MareTokenSale.address, 1000000000);
  };

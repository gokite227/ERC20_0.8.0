const MareToken = artifacts.require("MareToken");

module.exports = function (deployer) {
    deployer.deploy(MareToken, 1000000000);
  };

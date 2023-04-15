const { ethers } = require("hardhat");
async function main() {
  const whitelistcontract = await ethers.getContractFactory("Whiltlist");
  const deployedWhitelistContract = await whitelistcontract.deploy(10);
  await deployedWhitelistContract.deployed();
  console.log("Whitelisted Adress = ", deployedWhitelistContract.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

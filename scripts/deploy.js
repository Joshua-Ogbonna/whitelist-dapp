const { ethers } = require("hardhat")

async function main() {
  const whitelistContract = await ethers.getContractFactory("Whitelist")

  const deployedContract = await whitelistContract.deploy(10)

  await deployedContract.deployed()

  console.log(`Contract deployed at: ${deployedContract.address}`)

  // 0xd3dD9c625D03C911deA005Eb3FE06e847C9EE941
}

main().then(() => process.exit(0))
.catch(error=> {
  console.error(error)
  process.exit(1)
})
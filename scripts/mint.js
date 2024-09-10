// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
// will compile your contracts, add the Hardhat Runtime Environment's members to the
// global scope, and execute the script.
const hre = require("hardhat");
const nftContractJSON = require("../artifacts/contracts/Foxxy.sol/Foxxy.json");
require('dotenv').config()

const nftAddress = "0xd909bEE4241d7ce07cecfa8557eA16C2AD3B9F8d"; // place your erc20 contract address here
const nftABI = nftContractJSON.abi;
const walletAddress = "0xc206C2E5BD8234aA500173b626ffEE0d1920946c"; // place your public address for your wallet here

async function main() {

    const nft = await hre.ethers.getContractAt(nftABI, nftAddress);
  
    const tx = await nft.mint(5);
    await tx.wait();

    console.log("You now have: " + await nft.balanceOf(walletAddress) + " Foxxy minted !!!");
  }
  
  // We recommend this pattern to be able to use async/await everywhere
  // and properly handle errors.
  main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });
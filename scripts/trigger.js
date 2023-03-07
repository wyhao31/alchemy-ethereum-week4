require("dotenv").config();

async function main() {
  const contract = await hre.ethers.getContractAt("Contract", process.env.CONTRACT_ADDR);

  const tx = await contract.trigger();
  await tx.wait();
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

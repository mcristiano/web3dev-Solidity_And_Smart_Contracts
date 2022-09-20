/* eslint-disable no-undef */
/* eslint-disable no-process-exit */
const main = async () => {
  const [deployer] = await hre.ethers.getSigners();
  const accountBalance = await deployer.getBalance();

  console.log("Deploying contracts with account: ", deployer.address);
  console.log("Account balance: ", accountBalance.toString());

  const Token = await hre.ethers.getContractFactory("WavePortal");
  const portal = await Token.deploy();
  await portal.deployed();

  console.log("WavePortal address: ", portal.address);

  // #console.log("---------------------------------------------------");
  // console.log(process.env.ALCHEMY_PRIVATE_API_URL);
  // console.log(process.env.PRIVATE_GOERLI_ACCOUNT_KEY);
};

const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.error(error);
    process.exit(1);
  }
};

runMain();
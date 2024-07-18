import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const LockModule = buildModule("WorkshopNFTModule", (m) => {

    const workshopNFT = m.contract("WorkshopNFT",);
    // console.log("WorkshopNFT", workshopNFT)
    return { workshopNFT };
});

export default LockModule;

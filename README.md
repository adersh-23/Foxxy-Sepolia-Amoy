## Foxxy-Sepolia-Amoy

This is a comprehensive guide for transferring NFTs from the Sepolia network to the Amoy POLYOGn network using the FxPortal Bridge. Here’s a streamlined overview to help you follow the process more easily:

## Overview

### Key Steps

1. **Create and Deploy NFTs on Sepolia:**
   - Use [Midjourney](https://www.midjourney.com/) or [Firefly](https://www.adobe.com) to generate NFT images.
   - Deploy NFTs on the Sepolia network.

2. **Develop and Deploy ERC271A Contract:**
   - Write and deploy an ERC271A contract on Sepolia.

3. **Mint NFTs:**
   - Mint NFTs in batches and transfer them to your wallet.

4. **Bridge Approval and Transfer:**
   - Approve your contract for interaction with the FxBridge and connect to Amoy.
   - Transfer NFTs to the Amoy network.

5. **Verify Transfer and Check Balance:**
   - Check the balance on the Amoy network using Polyscan.

## Getting Started

### Prerequisites

1. **Set Up Development Environment:**
   - Install [VSCode](https://code.visualstudio.com/).
   - Install [Node.js](https://nodejs.org/en/download/current) and [HardHat](https://hardhat.org/hardhat-runner/docs/getting-started).

2. **Prepare NFT Images:**
   - Generate images and upload them to [Pinata](https://www.pinata.cloud/). Get IPFS URLs for your ERC271A contract.

3. **Obtain SepoliaETH:**
   - Get SepoliaETH from [SepoliaPoW](https://sepolia-faucet.pk910.de/) for deployment.

### Installation

1. **Install Dependencies:**
   ```bash
   npm install
   npm install @openzeppelin/contracts
   ```

2. **Setup Private Key:**
   - Add your private key to `.env.example`:
     ```plaintext
     PRIVATE_KEY='Your Key Here'
     ```

### Execution

1. **Deploy ERC271A Contract:**
   ```bash
   npx hardhat run scripts/deploy.js --network sepolia
   ```
   - Update `tokenAddress` in `mint.js` and `approveDeposit.js` scripts with the deployed contract address.

2. **Mint NFTs:**
   ```bash
   npx hardhat run scripts/mint.js --network sepolia
   ```

3. **Approve and Deposit NFTs:**
   ```bash
   npx hardhat run scripts/approveDeposit.js --network sepolia
   ```

4. **Wait for Transfer:**
   - Allow 20 to 30 minutes for the NFTs to appear on the Amoy network.
   - Verify the transaction and contract address on Polyscan.

5. **Check Amoy Network Balance:**
   ```bash
   npx hardhat run scripts/getBalance.js --network amoy
   ```

## Troubleshooting

- **SepoliaETH Issues:**
  - Ensure you have SepoliaETH from [SepoliaPoW](https://sepolia-faucet.pk910.de/). Contact [Adersh](mailto:adershanand003@gmail.com) if issues persist.

## Authors

- **adersh**
- **Contact:** [ADERSH](mailto:adershanand003@gmail.com)

## License

- This project is licensed under the [adersh] License. For more details, see the LICENSE.md file.

Feel free to reach out for further assistance!
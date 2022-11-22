Our FEVM powered solution will enable better coordination, enable safety at residential societies and real estate properties to be more effective, proactive, help in early prediction and prevention of accidents/ incidents. Please find the details of Filecoin/IPFS powered solution with smart contracts compiled in EVM and FEVM:

Property Registration and Transfer Management using smart contracts compiled using EVM (title transfer.sol) and FEVM (house_tax.sol). The workflow of the app and deployment of smart contracts on EVM and FEVM at Registration Management Module (please visit https://drive.google.com/drive/u/3/folders/18mAiA9L8UItb_BgW4w47lnc5K4xgLDxm).      

We are using Filecoin based FEVM lending pool library to enable third party administrators to issue mortgage loans and their reimbursement/claims to the home buyers in financial distress.                                  

We are also using Filecoin for storing a variety of offchain data like incident snapshots, alarm metadata and object types at the time of incident. Please find the demo video at  (demo.mp4 under Monitoring demo directory at https://drive.google.com/drive/u/0/folders/18mAiA9L8UItb_BgW4w47lnc5K4xgLDxm). We are storing Alarm metadata using NFT.Storage. Also, Saving/deleting alarm metadata and image to/from IPFS using NFT.Storage. We are also storing the hash returned from IPFS to FEVM. Further we are using Filecoin for: Video analytics configuration using Filecoin/IPFS; Camera Management: Add/edit/delete cameras with integration with oss streaming; Live streaming with Object Detection Video Analytics, and NFT.Storage for snapshots.


```
git clone https://github.com/filecoin-project/FEVM-Hardhat-Kit.git
cd FEVM-hardhat-kit
yarn install
```


This will clone the hardhat kit onto your computer, switch directories into the newly installed kit, and install the dependencies the kit needs to work.


## Get a Private Key

You can get a private key from a wallet provider [such as Metamask](https://metamask.zendesk.com/hc/en-us/articles/360015289632-How-to-export-an-account-s-private-key).


## Add your Private Key as an Environment Variable

Add your private key as an environment variable by running this command: 
 
 ```
export PRIVATE_KEY='abcdef'
```

 \
If you use a .env file, don't commit and push any changes to .env files that may contain sensitive information, such as a private key! If this information reaches a public GitHub repository, someone can use it to check if you have any Mainnet funds in that wallet address, and steal them!


## Get the Deployer Address

Run this command:
```
yarn hardhat get-address
```

The f4address is the filecoin representation of your Ethereum address. This will be needed for the faucet in the next step.

The Ethereum address will be used otherwise.


## Fund the Deployer Address

Go to the [Wallaby faucet](https://wallaby.network/#faucet), and paste in the f4 address we copied in the previous step. This will send some wallaby testnet FIL to the account.


## Deploy the SimpleCoin Contract

Type in the following command in the terminal: 
 
 ```
yarn hardhat deploy
```

This will compile the contract and deploy it to the Wallaby network automatically!

Keep note of the deployed contract address for the next step.

If you read the Solidity code for SimpleCoin, you will see in the constructor our deployer account automatically gets assigned 10000 SimpleCoin when the contract is deployed.


## Read your SimpleCoin balance

Type in the following command in the terminal: 
 
 ```
yarn hardhat get-balance --contract 'THE DEPLOYED CONTRACT ADDRESS HERE' --account 'YOUR Ethereum ADDRESS HERE'
```

The console should read that your account has 10000 SimpleCoin!

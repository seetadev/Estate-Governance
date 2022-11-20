NFT is originally minted at Polygon source chain and shared with Fantom destination chain. Please find the link to send the NFT that was originally minted at Polygon source-chain to Fantom destination-chain at https://github.com/seetadev/ethopsud/tree/main/PropTech-Modules/NFT-Linker-Polygon-Fantom/nft-linker

## Instructions

```sh
# copy .env
cp .env.example .env

# install dependencies
yarn

# 1st terminal: launch local cross-chain development
yarn local-dev:start

# compile contracts with hardhat
yarn contracts:build

# 2nd terminal: deploy contracts
yarn contracts:deploy

# start the ui
yarn dev
```

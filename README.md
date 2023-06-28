# Wormhole Local Validator

This repository contains a set of scripts to get started using Wormhole. It provides scripts to spin up local EVM, Solana, and other Environment validators and monitor them via `pm2`. Additionally it provides a script to start a local Guardin to monitor the local validators and produce VAAs. 


## Dependencies

You will need at least Docker; you can get either [Docker Desktop](https://docs.docker.com/get-docker/) if you're developing on your computer or if you're in a headless vm, install [Docker Engine](https://docs.docker.com/engine/). Make sure to have Docker running before you run any of the following commands.

For other dependencies, see the specific details for the environments you wish to run.

- [EVM](#evm)
- [Solana](#solana)
- [Algorand](#algorand)
- [Aptos](#aptos)
- [Sui](#sui)
- [CosmWasm](#cosmwasm)
- [Near](#near)


## Environments

### EVM 

#### Dependencies

To run EVM chains you will need [Ganache](https://github.com/trufflesuite/ganache#command-line-use).  

#### Run it

To Start a local EVM validator, run:

```sh
npm run evm
```

This will start up two EVM chains with Wormhole Chain ID 2 (like ETH) and Wormhole Chain ID 4 (like BSC) and deploy Wormhole contracts.

<details>
<summary>
Details
</summary>

- The Core Bridge: (`0xC89Ce4735882C9F0f0FE26686c53074E09B0D550`)
- The Token Bridge: (`0x0290FB167208Af455bB137780163b7B7a9a10C16`)
- The NFT Bridge: (`0x26b4afb60d6c903165150c6f0aa14f8016be4aec`) 

Additionally it will deploy some tokens

- A Test Token: (TKN at `0x2D8BE6BF0baA74e0A907016679CaE9190e80dD0A`)
- A test NFT: (`0x5b9b42d6e4B2e4Bf8d42Eba32D46918e10899B66`)
- A WETH Contract: (`0xDDb64fE46a91D46ee29420539FC25FD07c5FEa3E`)


The deployment scripts use the standard Wormhole test mnemonic key

```
myth like bonus scare over problem client lizard pioneer submit female collect
``` 

The first key for this mnemonic is used for deployment and payment.

- *Public Key:* `0x90F8bf6A479f320ead074411a4B0e7944Ea8c9C1`
- *Private Key:* `0x4f3edf983ac636a65a842ce7c78d9aa706d3b113bce9c46f30d7d21715b23b1d`

</details>

### Solana

#### Dependencies

To run Solana chains you will need [Solana](https://docs.solana.com/cli/install-solana-cli-tools) installed. 

#### Run it

To start a local Solana validator, run:
```sh
npm run solana
```

This will start up a Solana chain and load in the Wormhole programs. 

<details>
<summary> Details </summary>

- The Core Bridge (`Bridge1p5gheXUvJ6jGWGeCsgPKgnE3YgdGKRVCMY9o`) 
- The Token Bridge (`B6RHG3mfcckmrYN1UhmJzyS1XX3fZKbkeUcpJe9Sy3FE`)

</details>


### Aptos

...

### Algorand

...


### Sui

...


### CosmWasm

...

## Run a Guardian 

After you have the dependencies installed and the chains running, you can run the guardian.

To start a local guardian, run:

```sh
npm run wormhole 
```

This will build the guardiand binary in a docker container.

> Note: The first time you run this command, it might take a while (up to 10 minutes on a modern laptop). Subsequent restarts should be much faster. 


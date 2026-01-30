# TrustedChain EVM Smart Contract

MINT (Mobile Integrated Network of Trust) by Staex is the world’s first decentralized public transport network, enabling companies to leverage web3 tools for secure, transparent, and efficient mobility operations. 

By leveraging decentralized trust networks, smart contracts, and secure telemetry, MINT ensures trusted data exchange, automated invoicing, and seamless audits, empowering partners to collaborate effortlessly while unlocking new revenue models and operational efficiencies.

https://staex.io/mint

### Smart contracts

- [Celo](https://celoscan.io/address/0xeC36E2C45C3EB7E9DBa1Df42c39024EFD17743C7)
- [Celo Sepolia](https://sepolia.celoscan.io/address/0xeC36E2C45C3EB7E9DBa1Df42c39024EFD17743C7)
  - [Txs per day](https://dune.com/lavrstaex/trusted-data-chain)
- [Optimism Sepolia](https://sepolia-optimism.etherscan.io/address/0x3eecb3e57fae39a0d9f1330f4a04f70ea07749a7)
- [U2U](https://u2uscan.xyz/address/0x06d14dA5Bca3e787f25B2E539d7A40676588d1cB)

## Usage

```shell
make build
make test
make coverage
```

## Update Solidity and Forge std lib

- Update `foundry.lock` with new Forge std lib version
- Update Solidity version in `foundry.toml`
- Update Solidity version in all `.sol` files

```shell
forge clean
forge update
```

## Execute smart contract

```shell
cast send "$CONTRACT_ADDRESS" \
  "claimTelemetry(string,string)" \
  "<hash>" "<signature>" \
  --rpc-url "$RPC_URL" \
  --private-key "$PRIVATE_KEY"
```

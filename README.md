# TrustedChain EVM Smart Contract

<!-- todo: use case? -->

## Smart contracts

- [Celo](https://celoscan.io/address/0xeC36E2C45C3EB7E9DBa1Df42c39024EFD17743C7)
- [Celo Sepolia](https://sepolia.celoscan.io/address/0xeC36E2C45C3EB7E9DBa1Df42c39024EFD17743C7)

## Usage

```shell
make build
make test
make coverage
```

## Update Solidity and std lib

```shell
# Update foundry.lock
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

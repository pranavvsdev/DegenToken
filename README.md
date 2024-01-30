# Degen Token

DegenToken is an ERC-20 token on the Avalanche Fuji Testnet that allows users to redeem various items by burning specific amounts of tokens. It also supports discount codes for lower redemption costs. It contains an in-game which displays the redeemable items.

## Description

- ERC-20 compliant token with burning capabilities.
- Owner can mint new tokens.
- Users can redeem items with specific burn amounts, with optional discount codes.

## Shop Items

- Degen Drink
- Degen Fan
- Degen Outfit
- Degen Shades

## Discounts

- Use discount code `4712` for a special discount.

## Getting Started

### Installing

- Git clone
- Export as ZIP

### Executing program

* Deploy contract to fuji network 
```
npx hardhat run scripts/deploy.js --network fuji
```

* Verify contract in fuji network
```
npx hardhat verify {address} --network fuji
```

## Help
Visit [core.app/tools/testnet-faucet/?subnet=c&token=c] to get avalanche tokens.


## Authors

Pranav S Devang

[@pranavssdevang@gmail.com]


## License

This project is licensed under the [MIT] License 

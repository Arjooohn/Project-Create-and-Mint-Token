# Project-Create-and-Mint-Token
Types-of-Functions-ETH-AVAX
Overview This is a simple ERC20 token smart contract called CustomToken implemented in Solidity. The contract allows for minting, burning, and transferring tokens. It inherits from the OpenZeppelin ERC20 contract.

# Requirements
Solidity compiler version 0.8.25 or later/newer
OpenZeppelin contracts library

# Usage
To use this smart contract, follow these steps:
1. Deploy the CustomToken contract, providing the desired name, symbol, and initial supply.
2. Use the createTokens function to mint tokens and distribute them.
3. Use the destroyTokens function to burn tokens.
4. Use the standard ERC20 sendTokens function to transfer tokens between addresses.

# Smart Contract Details
- CustomToken: The main contract implementing the ERC20 token functionality.
- constructor: Initializes the token with a name, symbol, and initial supply.
- onlyAdmin: Modifier to restrict access to certain functions to only the contract owner/admin.
- createTokens: Function to mint new tokens, accessible only by the contract owner.
- destroyTokens: Function to burn tokens.
- sendTokens: Overridden ERC20 function to transfer tokens between addresses.

# Authors
John Armand V. Yabut

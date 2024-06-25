// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CustomToken is ERC20 {
    address private _admin;

    constructor(string memory tokenName, string memory tokenSymbol, uint256 initialAmount) ERC20(tokenName, tokenSymbol) {
        _mint(msg.sender, initialAmount);
        _admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == _admin, "Only admin can call this function");
        _;
    }

    function createTokens(address recipient, uint256 amount) public onlyAdmin {
        _mint(recipient, amount);
    }

    function destroyTokens(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function sendTokens(address recipient, uint256 amount) public returns (bool) {
        require(recipient != address(0), "ERC20: transfer to the zero address");
        _transfer(msg.sender, recipient, amount);
        return true;
    }
}


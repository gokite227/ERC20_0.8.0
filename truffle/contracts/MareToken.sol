// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MareToken is ERC20 {

    event MarePurchased(address indexed receiver, address indexed buyer);
    constructor(uint256 initialSupply) ERC20("BlueMare", "Mare") {
        _mint(msg.sender, initialSupply);
    }

    function buyOneMare() public {
        _burn(_msgSender(), 1);
        emit MarePurchased(_msgSender(), _msgSender());

    }

    function buyOneMareFrom(address account) public {
        _spendAllowance(account, _msgSender(), 1);
        _burn(account, 1);
        emit MarePurchased(_msgSender(), account);
    }
}

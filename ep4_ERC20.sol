// SPDX-License-Identifier: MIT
// BlockchainJunkiez : https://www.youtube.com/channel/UCEV2dnVVEe5bDB0JKVU330A/
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TH_Token is ERC20 {
    constructor() ERC20("TH Coin", "THC ") {
        _mint(msg.sender, 100 * 10 ** decimals());
    }
}

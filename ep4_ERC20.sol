// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TH_Token is ERC20 {
    constructor() ERC20("HING coin", "HING ") {
        _mint(msg.sender, 100 * 10 ** decimals());
    }
}
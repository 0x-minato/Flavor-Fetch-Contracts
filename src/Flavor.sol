// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Flavor is ERC4626 {
    uint withdraw_duration;
    constructor(
        ERC20 _asset, 
        uint256 _withdraw_duration,
        string memory _name,
        string memory _symbol
    )
        ERC4626(_asset)
        ERC20(_name, _symbol)
    {
        withdraw_duration = _withdraw_duration;
    }

    function buy() external {
        //call deposit fn of ERC4626 and mint flETH to msg.sender
        //mint NFT to msg.sender
    }
}

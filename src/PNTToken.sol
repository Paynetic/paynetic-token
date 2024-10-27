// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "./Ownable.sol";
import "./zeppelin/ERC20Burnable.sol";
import "./zeppelin/SafeMath.sol";

/// @title Paynetic Token
/// @author Paynetic
/// @notice Paynetic ERC20 token (PNT)
contract PNTToken is Ownable, ERC20Burnable {
    constructor() ERC20("Paynetic", "PNT") {
        uint256 totalSupply = SafeMath.mul(SafeMath.pow(10, decimals()), 10000000000);
        _mint(msg.sender, totalSupply);

        transfer(0x0000000000000000000000000000000000000001, SafeMath.mul(SafeMath.pow(10, decimals()), 2000000000));
        transfer(0x0000000000000000000000000000000000000002, SafeMath.mul(SafeMath.pow(10, decimals()), 2000000000));
        transfer(0x0000000000000000000000000000000000000003, SafeMath.mul(SafeMath.pow(10, decimals()), 1500000000));
        transfer(0x0000000000000000000000000000000000000004, SafeMath.mul(SafeMath.pow(10, decimals()), 1000000000));
        transfer(0x0000000000000000000000000000000000000005, SafeMath.mul(SafeMath.pow(10, decimals()), 1000000000));
        transfer(0x0000000000000000000000000000000000000006, SafeMath.mul(SafeMath.pow(10, decimals()), 1000000000));
        transfer(0x0000000000000000000000000000000000000007, SafeMath.mul(SafeMath.pow(10, decimals()), 1000000000));
        transfer(0x0000000000000000000000000000000000000008, SafeMath.mul(SafeMath.pow(10, decimals()), 500000000));
    }
}

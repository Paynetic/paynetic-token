// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import "./Ownable.sol";
import "./zeppelin/ERC20Burnable.sol";
import "./zeppelin/SafeMath.sol";

/// @title Paynetic Token
/// @author Paynetic
/// @notice Paynetic ERC20 token (PNT)
contract PNTToken is Ownable, ERC20Burnable {
    constructor() ERC20("Paynetic", "PYN") {
        uint256 totalSupply = SafeMath.mul(SafeMath.pow(10, decimals()), 10000000000);
        _mint(msg.sender, totalSupply);

        // Ecosystem 4B
        transfer(0xc547C150dd3e8F3b4f949742a4B441867e829C87, SafeMath.mul(SafeMath.pow(10, decimals()), 4000000000));
        // Development 2B
        transfer(0xc5fE34430CDF8861dab272a71168f04A1d1582bC, SafeMath.mul(SafeMath.pow(10, decimals()), 2000000000));
        // Marketing 1.5B
        transfer(0x89Fc40968b939C32db0920824106cf027Cbe6E67, SafeMath.mul(SafeMath.pow(10, decimals()), 1500000000));
        // Strategic Investors and partners 1B
        transfer(0xB73dF268122b8ea595BBfB918c45e8060d6A348F, SafeMath.mul(SafeMath.pow(10, decimals()), 1000000000));
        // Escrow funds for protocol 500M
        transfer(0xeC6a8127f08f130F14CAf99bf37Dcb491FD06212, SafeMath.mul(SafeMath.pow(10, decimals()), 500000000));
        // Team and advisors 500M
        transfer(0x6d83f7C50efD4D9AC01546f1E42b88983CA86082, SafeMath.mul(SafeMath.pow(10, decimals()), 500000000));
        // Liquidity and reserve 500M
        transfer(0x8cA6779AB549912064B8E20066fDB8fFe158F2B4, SafeMath.mul(SafeMath.pow(10, decimals()), 500000000));
    }
}

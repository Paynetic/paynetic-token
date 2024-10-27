// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import {Script, console} from "forge-std/Script.sol";
import {PNTToken} from "../src/PNTToken.sol";

contract PNTTokenScript is Script {
    PNTToken public token;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        token = new PNTToken();

        vm.stopBroadcast();
    }
}

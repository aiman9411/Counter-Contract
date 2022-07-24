// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/Contract.sol";

contract MyScript is Script {
    function run() public {
        vm.startBroadcast();
        Counter counter = new Counter(10);
        vm.stopBroadcast();
    }
}
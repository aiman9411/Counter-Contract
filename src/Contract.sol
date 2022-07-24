// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint8 private count;

    constructor(uint8 _count) {
        count = _count;
    }

    function increment() public {
        count += 1;
    }

    function decrement() public {
        count -= 1;
    }

    function viewCount() public view returns (uint8) {
        return count;
    }
}

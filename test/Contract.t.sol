// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/Contract.sol";

contract ContractTest is Test {
    Counter counter;

    function setUp() public {
        counter = new Counter(10);
    }

    function testGetCount() public {
        uint8 value = counter.viewCount();
        assertEq(value, 10);
        emit log_named_uint("The value is", value);
    }

    function testIncrementCounter() public {
        counter.increment();
        uint8 value = counter.viewCount();
        assertEq(value, 11);
        emit log_named_uint("The value is", value);
    }
}

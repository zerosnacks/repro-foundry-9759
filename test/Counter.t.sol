// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

import {Test, console} from "forge-std/Test.sol";
import {UniswapV3Factory} from "v3-core/UniswapV3Factory.sol";
import {Counter} from "../src/Counter.sol";

contract CounterTest is Test {
    UniswapV3Factory public factory;
    Counter public counter;

    function setUp() public {
        factory = new UniswapV3Factory();
        counter = new Counter(factory);
        counter.setNumber(0);
    }

    function test_Increment() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function testFuzz_SetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}

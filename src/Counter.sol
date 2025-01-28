// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

import {UniswapV3Factory} from "v3-core/UniswapV3Factory.sol";

contract Counter {
    UniswapV3Factory public immutable FACTORY;
    uint256 public number;

    constructor(UniswapV3Factory factory) {
        FACTORY = factory;
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}

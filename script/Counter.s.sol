// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

import {Script, console} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";
import {UniswapV3Factory} from "v3-core/UniswapV3Factory.sol";

contract CounterScript is Script {
    Counter public counter;
    UniswapV3Factory public factory;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        factory = new UniswapV3Factory();
        counter = new Counter(factory);

        vm.stopBroadcast();
    }
}

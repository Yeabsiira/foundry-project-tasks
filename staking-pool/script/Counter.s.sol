// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {StakingPool} from "../src/StakingPool.sol";

contract StakingPoolScript is Script {
    StakingPool public stakingPool;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        // Example reward rate used for deployment scripts.
        stakingPool = new StakingPool(1);

        vm.stopBroadcast();
    }
}

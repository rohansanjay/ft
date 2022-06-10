// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.14;

import "src/Ft.sol";
import "forge-std/Script.sol";

contract Deploy is Script {
    function run() external {
        vm.startBroadcast();

        Ft ft = new Ft();
        ft.wave(1);

        vm.stopBroadcast();
    }
}
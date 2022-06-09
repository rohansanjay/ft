// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.14;

import { Ft } from "../src/Ft.sol";
import "forge-std/Test.sol";

contract FtTest is Test {
    Ft ft;

    function setUp() public {
        ft = new Ft();
    }

    function testWave() public {
        assertEq(0, ft.theWaves());

        ft.wave(1);

        assertEq(1, ft.theWaves());
    }
}

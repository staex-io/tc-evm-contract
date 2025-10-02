// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {TrustedChain} from "../src/TrustedChain.sol";

contract TrustedChainTest is Test {
    TrustedChain public trustedchain;

    function setUp() public {
        trustedchain = new TrustedChain();
    }

    function test_Mock() public {}
}

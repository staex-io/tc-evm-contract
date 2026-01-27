// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.33;

import {Script} from "forge-std/Script.sol";
import {TrustedChain} from "../src/TrustedChain.sol";

contract TrustedChainScript is Script {
    TrustedChain public trustedchain;

    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        new TrustedChain();
        vm.stopBroadcast();
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "forge-std/Test.sol";
import "../contracts/Example.sol";

contract GasAnalyzer is Script, Test {
    Example example;

    function setUp() public {
        example = new Example();
    }

    function run() public {
        vm.startBroadcast();

        uint256 gasStart = gasleft();
        example.increment();
        uint256 gasUsedIncrement = gasStart - gasleft();
        console.log("Gas used by increment():", gasUsedIncrement);

        gasStart = gasleft();
        example.add(10, 20);
        uint256 gasUsedAdd = gasStart - gasleft();
        console.log("Gas used by add():", gasUsedAdd);

        vm.stopBroadcast();
    }
}

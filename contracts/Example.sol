// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Example {
    uint256 public counter;

    function increment() public {
        counter += 1;
    }

    function add(uint256 x, uint256 y) public pure returns (uint256) {
        return x + y;
    }
}

// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract DeadMan {
    address private owner;
    uint256 public balance;

    constructor() {
        // if not called in last 10 functions
        transfer();
    }

    function transfer() public {

    }

    function stillAlive() external {
        // mark alive
    }
}

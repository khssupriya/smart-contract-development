// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "../contracts/1_Storage.sol";

contract StorageTest {

    Storage storageToTest;
    function beforeAll () public {
        storageToTest = new Storage();
    }

    function checkStore() public {
        storageToTest.store(0);
        Assert.equal(storageToTest.retrieve(), uint256(0), "number should be 0");
        storageToTest.store(2**256 - 1);
        Assert.equal(storageToTest.retrieve(), 2**256 - 1, "number should be 2**256 - 1");        
    }
}

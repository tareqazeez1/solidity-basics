pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 storedData;

    function set(uint256 x) public {
        storedData = x;
    }

    function get() public view returns (uint256) {
        return storedData;
    }
}

/* his contract demonstrates how to store and retrieve a variable on the Ethereum blockchain. The uint256 type specifies an unsigned integer with 256 bits of storage. The set function allows the value of storedData to be set to a new value, while the get function retrieves the current value of storedData. The view keyword indicates that the function does not modify the contract's state. */
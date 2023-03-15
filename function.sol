pragma solidity ^0.8.0;

contract HelloWorld {
    function hello() public pure returns (string memory) {
        return "Hello, World!";
    }
}

/* This is how a solidity function is made.
 This is a simple Solidity smart contract that contains a function called "hello" which returns the string "Hello, World!". The pragma solidity ^0.8.0; specifies the version of Solidity to be used for the contract. The public keyword makes the function accessible from outside the contract, while the pure keyword specifies that the function does not modify the contract's state. */
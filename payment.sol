pragma solidity ^0.8.0;

contract SimplePayment {
    address payable owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function pay() public payable {
        require(msg.value > 0);
        owner.transfer(msg.value);
    }
}

/* This contract demonstrates how to receive and transfer ether (the cryptocurrency used on the Ethereum blockchain). The address payable type specifies an Ethereum address that can receive ether and also has a transfer function to send ether to other addresses. The constructor function sets the owner variable to the address that deployed the contract. The pay function can be called by anyone and transfers any ether sent with the function call to the owner address. The require statement ensures that the function is only called with a non-zero value of ether. */
pragma solidity ^0.8.0;

contract SimpleToken {
    string public name = "My Token";
    string public symbol = "MTK";
    uint256 public totalSupply = 1000000;
    mapping(address => uint256) public balanceOf;

    constructor() {
        balanceOf[msg.sender] = totalSupply;
    }

    function transfer(address to, uint256 amount) public {
        require(balanceOf[msg.sender] >= amount);
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
    }
}

/* This contract demonstrates how to create a simple ERC-20 token. The string type specifies a string of characters. The uint256 type specifies an unsigned integer with 256 bits of storage. The totalSupply variable stores the total number of tokens in circulation. The mapping data structure maps addresses to token balances. The constructor function sets the balance of the contract deployer to the total supply of tokens. The transfer function allows the transfer of tokens from one address to another, provided that the sender has enough tokens to transfer. The require statement ensures that the sender has enough tokens before the transfer is made. */
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract destructorFunction{
    address payable owner;
    // The self-destruct function is used to destroy a contract and transfer any remaining Ether to a specified address.
    // It helps to clean up the blockchain by removing unnecessary contract code and releasing funds.

    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {} // added for the contract to directly receive funds
    
    // Example destructor function
    function close() public {
        require(msg.sender == owner, "Only the contract owner can call this function");
        selfdestruct(owner);
    }

}
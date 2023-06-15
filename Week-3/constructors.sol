// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract constructors{
    uint256 public value;

    // The constructor function is a special function in Solidity that is automatically executed 
    // when a contract is deployed.
    // It is used to initialize the state variables of the contract.
    // The constructor has the same name as the contract and does not have a return type.
    // Example contructor
    constructor(uint256 initialValue) {
        value = initialValue;
    }
}
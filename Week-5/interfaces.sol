// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Interfaces allow developers to specify a set of functions that a contract must implement. This can help enforce certain behaviors and make it easier to work with multiple contracts.
// It defines a set of functions that a contract can choose to implement.

// In the below example, the MyContract contract implements the MyInterface interface,
// which requires it to implement the myFunction function. The MyContract contract then 
// implements the myFunction function and returns the value 42.
interface MyInterface {
    function myFunction() external returns (uint);
}

contract MyContract is MyInterface {
    function myFunction() public pure override returns (uint) {
        return 42;
    }
}

// Interface example
interface Calculator {
   function getResult() external view returns(uint);
}

contract Test is Calculator {
   constructor() {}
   function getResult() external pure returns(uint){
      uint a = 1; 
      uint b = 2;
      uint result = a + b;
      return result;
   }
}

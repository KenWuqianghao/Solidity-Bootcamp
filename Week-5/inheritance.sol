// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

//In the below example, the Child contract inherits the public variable x 
// from the Parent contract. The Child contract can then access and modify 
// this variable.
contract Animal {
    uint public age;
    
    function birthday() public {
        age++;
    }
}

contract Dog is Animal {
    function bark() public pure returns(string memory) {
        return "Woof!";
    }
}

// When a contract derives from a parent contract, it inherits:
// Properties
// - parentData
// Methods
// - parentFunction

contract ParentContract {
  uint public parentData;

  function parentFunction() public pure returns(string memory) {
    return "Hello from parent function";
  }
}

contract ChildContract is ParentContract {
  uint public childData;

  function childFunction() public pure returns(string memory) {
    return "Hello from child function";
  }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract advancedDataTypes{
    // Enums in Solidity allow the creation of custom data types representing a set of named values.
    // They are useful for predefined options or states in variables.
    // Each enum value is assigned an underlying integer value starting from 0.
    // Example enum
    enum Status { Active, Inactive, Pending }
    Status public status = Status.Active;

    // In Solidity, an address is a 20-byte value that represents an Ethereum account or contract.
    // An address can hold and transfer Ether, interact with other contracts, and store data.
    // Addresses can be either externally owned accounts (EOAs) or contract accounts.
    // The address data type is used to declare variables or function parameters that store addresses.
    // Addresses can be used for sending and receiving Ether, querying account balances, and calling functions in other contracts.
    // Example address
    address public owner;
    function changeOwner(address _newOwner) external {
        require(msg.sender == owner, "Only the owner can change the owner");
        owner = _newOwner;
    }

    // In Solidity, the bytes data type is used to represent a dynamic array of bytes.
    // The bytes type is suitable for storing and manipulating binary data, such as raw bytes or encoded data.
    // The size of a bytes array is not fixed and can be dynamically resized.
    // The bytes type provides methods and operators for accessing and manipulating individual bytes within the array.
    // Example byte
    bytes public data;
    function updateData(bytes memory _newData) external {
        data = _newData;
    }

    // Create an enum called CoffeeSize with three values: Small, Medium, and Large. Write a function called getCoffeePrice that
    // takes a CoffeeSize parameter and returns the price of the coffee based on its size. Implement the function to return $2 for 
    // a small coffee, $3 for a medium coffee, and $4 for a large coffee.
    enum CoffeeSize { Small, Medium, Large}
    function getCoffeePrice(CoffeeSize size) public pure returns (uint) {
        if (size == CoffeeSize.Small) {
            return 2;
        } else if (size == CoffeeSize.Medium) {
            return 2;
        } else {
            return 3;
        }
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Create an interface called IWatCard that requires any implementing contract to have 
// a function called getBalance that returns a uint256. Then, create two contracts called 
// Student and FoodService that implement the IWatCard interface.

// In the Student contract, implement the getBalance function to return the balance of the
// student's WatCard. In the FoodService contract, implement the getBalance function to 
// return the total amount of revenue earned by the food service.

// Finally, create a function called checkBalances in a third contract called University 
// that takes in two IWatCard instances and returns the balance of each.

interface IWatCard {
    function getBalance() external view returns (uint256);
}

contract Student is IWatCard{
    uint256 balance;
    function getBalance() external view returns (uint256) {
        return balance;
    }
}

contract FoodService is IWatCard{
    uint256 revenue;
    function getBalance() external view returns (uint256) {
        return revenue;
    }
}

contract University{
    FoodService fs = new FoodService();
    Student s = new Student();
    function checkBalance() public view returns (uint256, uint256) {
        return (fs.getBalance(), s.getBalance());
    }
}
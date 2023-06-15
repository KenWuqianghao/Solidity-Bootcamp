// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract loops{
    // Example for and while loops
    function exampleLoops() public pure {
        for (uint256 i = 0; i < 10; i++) {
        // Do something 10 times
        }  

        uint256 j = 0;
        while (j < 10) {
            // Do something as long as j is less than 10
            j++;
        }
    }

    // Example while loop to calculate sum up to integer n
    function calculateSum(uint256 n) public pure returns (uint256) {
        uint256 sum = 0;
        uint256 i = 1;
        while (i <= n) {
            sum += i;
            i++;
        }
        return sum;
    }

    // Example for loop to calculate factorial of integer n
    function calculateFactorial(uint256 n) public pure returns (uint256) {
        uint256 factorial = 1;
        for (uint256 i = 1; i <= n; i++) {
            factorial *= i;
        }
        return factorial;
    }

    // Example of do while loop to calculate factorial of integer n
    function doWhileCalculateFactorial(uint256 n) public pure returns (uint256) {
        uint256 factorial = 1;
        uint256 i = 1;
        do {
            factorial *= i;
            i++;
        } while (i <= n);
        return factorial;
    }

    // Write a Solidity function called calculateSumOfSquares that takes an input n and calculates 
    // the sum of the squares of numbers from 1 to n. The function should use a loop to perform the 
    // calculation and return the result.
    function calculateSumOfSquares(uint n) public pure returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < n; i++) {
            sum += i * i;
        }
        return sum;
    }
}
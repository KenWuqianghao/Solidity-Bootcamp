// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract conditionals{
    // Example simple conditional
    function exampleConditional(uint number) public pure {
        if (number > 5) {
            // Do something if number is greater than 5
        } else {
            // Do something else if number is less than or equal to 5
        }
    }

    // Example conditional with function to determine triangle type
    function checkTriangleType(uint256 a, uint256 b, uint256 c) public pure returns (string memory) {
        if (a == b && b == c) {
            return "Equilateral";
        } else if (a == b || b == c || a == c) {
            return "Isosceles";
        } else {
            return "Scalene";
        }
    }

    // Example conditional with function to calculate grade
    function getGrade(uint256 score) public pure returns (string memory) {
        if (score >= 90) {
            return "A";
        }
        if (score >= 80) {
            return "B";
        }
        if (score >= 70) {
            return "C";
        }
        return "F";
    }

    // You are tasked with implementing a ticket pricing algorithm based on the age of the ticket holder. Write a Solidity function called calculateTicketPrice that takes an integer age as input and returns the ticket price based on the following conditions:
    // If the age is below 12, the ticket price is 5 tokens.
    // If the age is between 12 and 18 (inclusive), the ticket price is 10 tokens.
    // If the age is between 19 and 25 (inclusive), the ticket price is 15 tokens.
    // If the age is above 25, the ticket price is 20 tokens.
    function calculateTicketPrice(uint age) public pure returns (uint price) {
        if (age < 12) {
            return 5;
        } else if (age >= 12 && age <= 18) {
            return 10;
        } else if (age >= 19 && age <= 25) {
            return 15;
        } else {
            return 20;
        }
    }

}
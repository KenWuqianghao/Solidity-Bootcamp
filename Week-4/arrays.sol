// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract arrays{
    // An array is a list-like data structure used for storing multiple variables of the same type. 
    // For example, we can have an array (list) of integers or an array of Students.
    struct Student {
       uint age;
       string name;
       string program;
    }

    // Create an array of Students with public visibility
    Student[] public students;

    // Function to create a student and add it to our array
    function createStudent (uint _age, string memory _name, string memory                 
                            _program) public {
        Student memory student = Student(_age, _name, _program); // Create the student
        students.push(student); // Add to end of array using the push() function
    }

    // Example array operations
    uint256[] public numbers;

    // Array push
    function addNumber(uint256 _number) external {
        numbers.push(_number);
    }

    // Array pop
    function removeLastNumber() external {
        require(numbers.length > 0, "Array is empty");
        numbers.pop();
    }

    // Example mapping operations
    mapping(address => uint256) public balances;
    address[] public users;

    function addUser(address _user, uint256 _balance) external {
        balances[_user] = _balance;
        users.push(_user);
    }

    function getTotalBalance() external view returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 0; i < users.length; i++) {
            total += balances[users[i]];
        }
        return total;
    }

    // Write a smart contract that manages a list of participants in an event. Implement 
    // functions to add participants to the list, remove participants, and retrieve the 
    // total number of participants.
    mapping(address => string) public names;
    address[] public participants;

    function addParticipants(address _participant, string memory _name) external {
        names[_participant] = _name;
        participants.push(_participant);
    }

    function removeLastParticipants() external {
        require(participants.length > 0, "Array is empty");
        participants.pop();
    }

    function getTotalParticipant() external view returns (uint256) {
        return participants.length;
    }
}
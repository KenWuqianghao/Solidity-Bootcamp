// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract errors{
    // Example of Custom Error Warning
    mapping(address => uint) balances;
    address[] public accounts;
    function withdraw(uint256 amount) external {
        require(amount <= balances[msg.sender], "Insufficient balance: Cannot withdraw more than available balance");

        balances[msg.sender] -= amount;
            payable(msg.sender).transfer(amount);
    }
    
    // Example of assert statement
    function divide(uint256 a, uint256 b) internal pure returns (uint256) {
        assert(b != 0);
        return a / b;
    }

}
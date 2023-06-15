// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract fallbackFunction{
    event FallbackCalled(address caller, uint256 value);

    // The fallback function is a function with no name and no arguments.
    // It is executed when a contract receives a transaction that does not match any of its defined functions.
    // The fallback function can be used to handle unexpected or undefined behavior.

    fallback() external payable {
        emit FallbackCalled(msg.sender, msg.value);
        // Additional logic or actions can be added here
    }

}
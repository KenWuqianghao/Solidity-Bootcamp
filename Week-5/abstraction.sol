// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Contract Abstraction
contract Math {
    function add(uint x, uint y) public pure returns (uint) {
        return x + y;
    }
}

// Contract that uses the Math abstraction
contract Calculator {
    Math math = new Math();

    function calculate(uint x, uint y) public view returns (uint) {
        return math.add(x, y);
    }
}

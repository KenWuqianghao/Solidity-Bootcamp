// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Define a parent contract called Vehicle with a property color of type string. 
// Include a function setColor to set the color of the vehicle.
// Define a child contract called Car that inherits from Vehicle. Add an additional 
// property brand of type string specific to cars. Include a function setBrand to set 
// the brand of the car.

// Define another child contract called Motorcycle that also inherits from Vehicle. 
// Add an additional property engineSize of type uint specific to motorcycles. 
// Include a function setEngineSize to set the engine size of the motorcycle.
// Write a test function that creates an instance of Car and an instance of Motorcycle.
// Set the color, brand, and engine size of each vehicle using the respective setter 
// functions.

contract Vehicle {
    string color;
    function setColor(string memory _color) public{
        color = _color; 
    }
}

contract Car is Vehicle {
    string brand;
    function setBrand(string memory _brand) public{
        brand = _brand; 
    }
}

contract Motorcycle is Vehicle {
    uint engineSize;
    function setengineSize(uint _engineSize) public {
        engineSize = _engineSize; 
    }
}

contract Test{
    Vehicle vehicle;
    Car car;
    Motorcycle motorcycle;
    function test() public {
        vehicle.setColor("Blue");
        car.setBrand("Audi");
        car.setColor("Red");
        motorcycle.setengineSize(100);
        motorcycle.setColor("Green");
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract structs{
    struct Student {
        // We usually list by alphabetical 
        // of variable names
        uint age;
        string name;
        string program;
    }

    // Creating a Student is similar to any variable
    Student me = Student(22, "Bob", "Math");

    struct Person {
        // We usually list by alphabetical 
        // of variable names
        uint256 age;
        string name;
    }

    mapping(address => Person) public users; 
    function addUser(address _user, string memory _name, uint256 _age) external { 
        users[_user] = Person(_age, _name); 
    }

    // Create a struct called "Product" that represents a product with properties such as name, price, and quantity. 
    // Write a smart contract that allows users to add new products, update product details, and retrieve information 
    // about a specific product.
    struct Product{
        string name;
        uint price;
        uint quantity;
    }
    
    Product product = Product("Name", 1, 1);

    // Not sure what the exercise wants, but this can both add and update product
    function UpdateProduct(string memory _name, uint _price, uint _quantity) external {
        product = Product(_name, _price, _quantity);
    }

    function retrieveProduct() external view returns (string memory, uint, uint){
        return (product.name, product.price, product.quantity);
    }
}
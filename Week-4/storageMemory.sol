// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract storageMemory{
    struct Sandwich {
        string name;
        string status;
    }

    Sandwich[] sandwiches;
    function eatSandwich(uint _index) public {
        // Sandwich mySandwich = sandwiches[_index];
        // ^ Seems pretty straightforward, but solidity will 
        // give you a warning telling you that you should 
        // explicitly declare `storage` or `memory` here.
        // So instead, you should declare with the `storage` keyword, like:
        Sandwich storage mySandwich = sandwiches[_index];

        mySandwich.status = "Eaten!";
        // ...this will permanently change `sandwiches[_index]` on the blockchain.
        
        // If you just want a copy, you can use `memory`:
        Sandwich memory sandwich2 =  sandwiches[_index+1];
        sandwich2.status = "Eaten!";
        // ...will just modify the temporary variable and have no effect on `sandwiches[_index + 1]`. 

        // But since the sandwiches array is a storage 
        // variable, putting sandwich2 into the array will copy it onto the blockchain.
        sandwiches[_index + 1] = sandwich2;
    }

}
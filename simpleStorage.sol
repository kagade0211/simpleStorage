// SPDX-License-Identifier: MIT

// Above line used to defines liecense that contract uses

pragma solidity ^0.8.7; // defines version of solidity your are goint to write code


// function to store a number on ethereum blockchain.

contract simpleStorage {

    uint256 public favouriteNumber;
    string public name = "Akshay"; 

    struct People {
        uint256 number;
        string myName;

    }

    // like uint256 type we have People type varible

    People public akshay = People(77 , "Akshay "); 

    //   Empty array for adding favourite Numbers
    
    uint256[] public favouriteNumbers; 
   
    mapping (string => uint256 ) public nameToFavNumber ;

    // new favourite number
    
    function storeNumber (uint256 newNumber) public  {

        favouriteNumber = newNumber;
    }
    
    // function to view a favourite number on ethereum blockchain 

    function viewFavouriteNumber () public view returns (uint256) {

        return favouriteNumber ; 

    }
   
   // funtion to add number to favoriteNUmber array

    function addNumberToList (uint numberToAddToList) public {
        favouriteNumbers.push (numberToAddToList);
    }

    function mapNameToNumber (string memory newName , uint256 newFavNumber ) public {

    nameToFavNumber[newName] = newFavNumber;    
    
    }

   
    

}   

// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; // "^"means this contract only works on version 18 or higher

contract SimpleStorage{
    // Basic Types: boolean, uint, int, address, bytes
    uint256 myFavoriteNumber;// defalt number of unit256 is 0; defalt status is internal
   
   //Wending -> 232
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
        myFavoriteNumber = myFavoriteNumber + 1;
    }
    //uint256[] listoffavoritenumber
    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    
    Person[] public listOfPeople; //[]集合 dynamic array[] & static array[3]

    //view, pure these 2 cannot modify any funtion
    function retreive()public view returns(uint256){
        return myFavoriteNumber;
    }

    function addPerson(string memory _name,uint256 _favoriteNumber) public{
        listOfPeople.push( Person(_favoriteNumber,_name) );
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
    }
    //0xd9145CCE52D386f254917e481eB44e9943F39138

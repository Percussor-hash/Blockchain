//Simple storage blockchain
//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;
contract SimpleStorage {
    uint256 favoriteNumber;
    bool favoriteBool;

    struct People{
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;

    mapping(string => uint256) public nameToFavNumber;

    function store(uint256 _favnum) public {
        favoriteNumber = _favnum;
    }  

    function retrieve()public view returns(uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
        nameToFavNumber[_name] = _favoriteNumber;
    }



}

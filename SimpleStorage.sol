// SPDX-License-Identifier: MIT
pragma solidity 0.8.7; // solidity version on top

contract SimpleStorage {
    // data types - boolean, uint, int, address, bytes
    // bool hasFavouriteNumber = true;
    uint256 Favouritenumber = 123; // it should be in 32, 64, 128
    // int256 number = -123;
    // address account1 = 0x667AF862d22E090Eb5B3A6cE248A5A921203850c;
    // bytes32 favouriteBytes = "some"; it should not exceed 32

    // People public color = People({jerseyNumber:333,color:"blue"});

    mapping(string => uint256) public numberToFavouriteString;

    struct People {
        uint256 jerseyNumber;
        string color;
    }

    People[] public people;

    function changeFavourite(uint256 _newFavourite) public {
        Favouritenumber = _newFavourite;
        // retrieve();
    }

    function retrieve() public view returns (uint256) {
        return Favouritenumber;
    }

    function addPeople(string memory _color, uint256 _favouriteNumber) public {
        People memory newPeople = People({
            color: _color,
            jerseyNumber: _favouriteNumber
        });
        people.push(newPeople);
        //mapping
        numberToFavouriteString[_color] = _favouriteNumber;
    }
}

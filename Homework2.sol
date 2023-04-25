// SPDX-License-Identifier: Unlicense


//Write a function that will delete items (one at a time) from a dynamic array without leaving gaps in the array. You should assume that the items to be deleted are chosen at random, and try to do this in a gas efficient manner.
//For example imagine your array has 12 items and you need to delete the items at indexes 8, 2 and 7.
//The final array will then have items �0,1,3,4,5,6,9,10,11�


pragma solidity >=0.8.2 <0.9.0;

contract Homework2 {
    uint[] public numArray;
    constructor() {
        numArray = [0,1,2,3,4,5,6,7,8,9,10,11];
    }

    // Function that returns the whole numArray
    function returnArray() public view returns(uint256[] memory) {
        return numArray;
    }

    // Function that finds the max number that exists within the array
    function findMax() public view returns(uint256) {
        uint256 temp;
        temp = numArray[0];
        for (uint256 i=0; i<=numArray.length-1; i++){
            if (numArray[i]>temp) {
                temp=numArray[i];
            }
        }
        return temp;
    }

    // Function that removes an element from the array given an index position
    function removeElement(uint256 _index) public  {
        if (_index <= numArray.length) {
            for ( uint256 i = _index; i < (numArray.length -1); i++){   
            numArray[i] = numArray[i+1];
            }
            numArray.pop();
        } 
    }

}

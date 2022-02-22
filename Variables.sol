pragma solidity ^0.6.0;

contract MyContract {
    //State Variables "EXISTEN EN LA BLOCKCHAIN"
    int public myInt = 1;
    uint public myUint = 1;
    //how big the number can be
    uint256 public myUint256 = 1; 
    uint8 public myUint8 = 1;

    //string
    string public myString = "Hello World!";
    bytes32 public myBytes32 = "Hello World!";

    //address
    address public myAddress = 0x2Cc6F65847EC39F87E25620A036A3829B6835F26;

    struct MyStruct {
        uint myUint;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello, World!");

    // Local variable
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
}


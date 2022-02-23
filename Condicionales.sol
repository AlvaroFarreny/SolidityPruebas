pragma solidity ^0.6.0;

contract Condicionales {

    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    address public owner;
    
    constructor() public { //cuando deploye, podemos decir si el owner es el que ha iniciado o no
        owner = msg.sender;
    }

    //if - else ejemplo basico
    function Esdivisible(uint _number) public view returns(bool) {
        if(_number % 2 == 0) { //si es divisible entre dos es true si no false
            return true;
        } else {
            return false;
        }
    }

    function countDivisibles() public view returns (uint) {
        uint count = 0;
        
        for(uint i = 0; i < numbers.length; i++) {
            if(Esdivisible(numbers[i])) {
                count ++;
            }
        }
        
        return count;
    }

    function isOwner() public view returns(bool) {
        return(msg.sender == owner);
    }

}
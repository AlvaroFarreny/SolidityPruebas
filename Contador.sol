//PRIMER CONTRATO
//CONTADOR
pragma solidity ^0.8.12;

contract Contador {
    uint public count = 1;

    function incrementCount() public {
        count++;
    }
}
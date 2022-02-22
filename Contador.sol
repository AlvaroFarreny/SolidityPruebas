//PRIMER CONTRATO
//CONTADOR
pragma solidity ^0.6.0;

contract Contador {
    uint public count = 1;

    function incrementCount() public {
        count++;
    }
}
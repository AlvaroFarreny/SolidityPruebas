pragma solidity ^0.6.0;

contract Arrays {
    //ARRAY
    uint[] public uintArray = [1,2,3]; 
    string[] public stringArray = ["Manzana", "Platano", "Zanahoria"];
    string[] public valores;

    //array bidimensionales
    uint[][] public Array2D = [ [1,2,3],[4,5,6]];

    function addValue(string memory _value) public {
        valores.push(_value);
    }

    function valueCount() public view returns (uint){
        return valores.length;
    }
}
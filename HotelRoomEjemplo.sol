pragma solidity ^0.6.0;

//smart contract para hotelroom

contract HotelRoom {

    enum Estado { Vacio, Ocupado }
    Estado estadoActual;
    address payable public owner;

    event Occupy(address _occupant, uint _value);

    constructor() public {
        owner = msg.sender;
        estadoActual = Estado.Vacio;
    }

    modifier onlyWhileVacant {
        require(estadoActual == Estado.Vacio, "Actualmente Ocupado.");
        _;
    }

    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough Ether provided.");
        _;
    }

    receive() external payable onlyWhileVacant costs(2 ether) {
        estadoActual = Estado.Ocupado;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
    
    
    //check price
    //require(msg.value >= 2 ether, "Not enough ether provided");
    //check status
    //require(estadoactual == Estadodelahabitacion.Vacio, "Actualmente Ocupado.");
    //esto que acabamos de hacer se hace con modifier


}
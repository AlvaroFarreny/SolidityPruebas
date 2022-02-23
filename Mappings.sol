pragma solidity ^0.6.0;

contract Mappings{
    //Mappings son HASHMAPS de JAVA
    //key --> Value
    // un valor guarda otro relacion 1:1

    //mapping (key => value)
    mapping(uint => string) public names;
    mapping(uint => Libro) public libros;

    //le pasas la addres y te da todos los libros asociados a esa address
    mapping(address => mapping(uint => Libro)) public myLibros;


    struct Libro {
        string titulo;
        string autor;
    }

    //primera funcion que se inicia y solo se inicia una vez
    constructor() public {
        names[1] = "Alvaro";
        names[2] = "Carlos";
        names[3] = "Pablo";
        //si solicitas un valor que no esta, es decir el name[4] te devuelve un valor default que en este caso es un string vacio        
    } 

    function addLibro (uint _id, string memory _title, string memory _autor) public {
        libros[_id] = Libro(_title, _autor);
    }

    //el msg.sender coge la address del que envia la solicitud a la blockchain
    function addmyLibro  (uint _id, string memory _title, string memory _autor) public{
        myLibros[msg.sender][_id] = Libro(_title, _autor);
    }


}
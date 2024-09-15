// SPDX-License-Identifier: MIT
//Ingreso de nombre completo, correo y telefono en formato de numero. 
pragma solidity 0.8.26;

contract Tarea1 {

    string private Nom_com;
    string private Correo;
    string private Tel;

    constructor(string memory _Nombre_Completo, string memory _email, string memory _cel) {
        Nom_com = string.concat(" Mi nombre completo es: " , " " , _Nombre_Completo);
        Correo = string.concat("Mi correo electronico es : " , " " , _email);
        Tel = string.concat("Mi telefono es : " , " " , _cel);
    }

    function Nombre_Completo() public view returns (string memory) {
        return Nom_com;
    }

    function email() public view returns (string memory) {
        return Correo;
    }

    function cel() public view returns (string memory) {
        return Tel;
    }


    


    
}
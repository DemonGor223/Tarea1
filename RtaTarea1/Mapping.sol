// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

contract Mapping {
    // definimos con un mapping de direcciones y enteros.
    mapping(address => uint256) balances;

    //Funcion para establecer el Balance de Avax en el mapping
    function setBalance(address _addr) public {
        uint256 avaxBalance = _addr.balance;
        balances[_addr] = avaxBalance;
    }

    // Funcion para obtener el valor del mapping en la direccion indice
    function getBalance(address _addr) public view returns (uint256) {
        return balances[_addr];
    }

    //
    function remove(address _addr) public {
        delete balances[_addr];
    }

    // funcion que llama otra funcion ya creada para actualizar los balances del mapping
    function updateBalanceAvax(address _addr) public {
        setBalance(_addr);
    }
}
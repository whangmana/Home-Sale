pragma solidity ^0.5.0;

contract Adoption {
    address[12] public adopters;

    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <=11);
        adopters[petId] = msg.sender;
        return petId;
    }

    function getAdopters() public view returns (address[12] memory) {
        return adopters;
    }
}

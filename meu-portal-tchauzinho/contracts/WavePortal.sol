// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    struct UpdateAt { 
      address addressId;
      uint updatedDate;  
    }


    uint256 totalWaves;
    UpdateAt[] public updateAts;

    constructor() {
        console.log("Ueba, eu sou um contrato e eu sou inteligente");
    }

    function wave( address pAddress ) public {
        UpdateAt memory updateAt = UpdateAt( pAddress, block.timestamp );
        updateAts.push( updateAt );
        
        totalWaves += 1;
        console.log("%s deu tchauzinho!", msg.sender);

        for (uint i = 0; i < updateAts.length; i++) {
            updateAt = updateAts[i];

          //console.log("Historico de tchauzinho %s em %s !", Strings.toHexString(uint256(uint160(updateAt.addressId)), 20), Strings.toString(updateAt.updatedDate) );
          console.log("Historico de tchauzinho %s em %s !", '"xiii como fazer o cast ?"','"xiii como fazer o cast ?"' );
        }



    }

    function getTotalWaves() public view returns (uint256) {
        console.log("Temos um total de %d tchauzinhos!", totalWaves);
        return totalWaves;
    }
}
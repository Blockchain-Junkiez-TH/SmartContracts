// SPDX-License-Identifier: MIT
// BlockchainJunkiez : https://www.youtube.com/channel/UCEV2dnVVEe5bDB0JKVU330A/
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721, Ownable {

    constructor() ERC721("TH_NFT", "THNFT") {}
    
    uint256 public maxmint=10;
    uint256 public currentMint;

    function mint(address to,uint256 amount) public payable{
        
        require (msg.value >= amount * 10**17 ,"wrong amount"); //100000000000000000
        require (currentMint + amount <= maxmint,"max exceed");


        for (uint i=0; i<amount; i++){
            _safeMint(to, currentMint);
            currentMint++;
        }
    }

    function withdraw() public onlyOwner{

        payable(msg.sender).transfer(address(this).balance);

    }


}

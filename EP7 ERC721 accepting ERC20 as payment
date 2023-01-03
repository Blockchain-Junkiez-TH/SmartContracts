// SPDX-License-Identifier: MIT
// BlockchainJunkiez : https://www.youtube.com/channel/UCEV2dnVVEe5bDB0JKVU330A/
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol"; //Added @EP7

contract TH_NFT is ERC721, Ownable {

    constructor() ERC721("TH NFT", "THNFT") {}


    uint256 public maxmint=10;
    uint256 public currentMint;
    

    
    /// Added @EP7 ////
    uint256 public price= 1 * 10 ** 18; //Added @EP7
    address public ERC20Add; //Added @EP7
    
    function setErc20Add(address myErc20) public onlyOwner{
        ERC20Add=myErc20;
    }
    
    function mintWithToken(address to,uint256 amount) public {

        require (currentMint + amount <= maxmint,"max exceed");
        require (IERC20(ERC20Add).transferFrom(msg.sender, address(this), amount * price),"Transfer Error");
        //start minting
        for (uint i=0; i<amount; i++){
            _safeMint(to, currentMint);
            currentMint++;
        }
    }
    //// EO Added @EP7 ////


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

// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
  uint256 public cantidadMaxima = 10;  
  uint public supply;
  constructor() ERC721("Dummy Token", "DT") {}

  function mint() public
  {
    _mint(msg.sender, supply);
    supply  += 1;
  }

 function _baseURI() internal view virtual override returns (string memory) {
        return "acaTuURI";
    }


}
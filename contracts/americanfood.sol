// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

import "erc721a/contracts/ERC721A.sol";

contract americanfood is ERC721A {
    address public owner;

    // Maximum number of tokens that can be minted
    uint256 public maxQuantity = 5;

    // Base url for the nfts
    string baseUrl =
        "https://gateway.pinata.cloud/ipfs/QmfPapKbJPgzThnohxr84XWtcXURgYMX8ZT5W8BJJJrFh6/?_gl=1*pz4x6v*_ga*Njc4OTA0NTAyLjE2ODk2MTQzMTU.*_ga_5RMPXG14TE*MTY4OTY2OTI3MC40LjEuMTY4OTY2OTMyOS4xLjAuMA..";

    // URL for the prompt description
    string public prompt = "American food that is popular";

    constructor() ERC721A("americanfood", "AF") {
        owner = msg.sender;
    }

    // Modifier that only allows the owner to execute a function
    modifier onlyOwner() {
        require(msg.sender == owner, "This function is only accessible by the owner");
        _;
    }

    // Function to mint NFT 
    function mint(uint256 quantity) external payable onlyOwner {
        _mint(msg.sender, quantity);
    }

    // Override the baseURI function to return the base URL for the NFTs
    function _baseURI() internal view override returns (string memory) {
        return baseUrl;
    }

    // Return the URL for the prompt description
    function promptDescription() external view returns (string memory) {
        return prompt;
    }
}
